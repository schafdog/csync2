/*  -*- c-file-style: "k&r"; c-basic-offset: 4; tab-width: 4; indent-tabs-mode: t -*-
 *  Csync2 - cluster synchronization tool, 2nd generation
 *  LINBIT Information Technologies GmbH <http://www.linbit.com>
 *  Copyright (C) 2004, 2005, 2006  Clifford Wolf <clifford@clifford.at>
 *
 *  This program is free software; you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation; either version 2 of the License, or
 *  (at your option) any later version.
 *
 *  This program is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License
 *  along with this program; if not, write to the Free Software
 *  Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

#include "csync2.hpp"
#include <sys/types.h>
#include <sys/stat.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <string.h>
#include <fnmatch.h>
#include <stdlib.h>
#include <unistd.h>
#include <utime.h>
#include <errno.h>
#include <netdb.h>
#include <fcntl.h>
#include <dirent.h>
#include <sys/time.h>

#ifdef __CYGWIN__
#include <w32api/windows.h>
#endif


#include "update.hpp"
#include "daemon.hpp"
#include "conn.hpp"
#include "action.hpp"
#include "check.hpp"
#include "urlencode.hpp"
#include "utils.hpp"
#include "rsync.hpp"
#include "checktxt.hpp"
#include "digest.hpp"
#include "uidgid.hpp"
#include "resolv.hpp"
#include "redis.hpp"

#define OK        0
#define IDENTICAL 1
#define NEXT_CMD  2
#define ERROR     3
#define ABORT_CMD 3
#define BYEBYE    5

extern char *g_allow_peer;
extern char *active_peer;

enum action_t {
	A_SIG,
	A_STAT,
	A_FLUSH,
	A_MARK,
	A_TYPE,
	A_GETTM,
	A_GETSZ,
	A_DEL,
	A_PATCH,
	A_POST,
	A_CREATE,
	A_MKDIR,
	A_MOD,
	A_MKCHR,
	A_MKBLK,
	A_MKFIFO,
	A_MKLINK,
	A_MKHLINK,
	A_MKSOCK,
	A_MV,
	A_SETOWN,
	A_SETMOD,
	A_SETTIME,
	A_LIST,
	A_GROUP,
	A_DEBUG,
	A_PING,
	A_HELLO,
	A_BYE
};

extern int csync_zero_mtime_debug;
extern int cfg_patch_mode;

static int csync_set_backup_file_status(char *filename, int backupDirLength);
static int csync_file_backup(filename_p filename, const char **cmd_error);

static int daemon_remove_file(db_conn_p db, filename_p filename) {
	const char *cmd_error = 0;
	int rc = 0;
	if (db) {
		rc = csync_file_backup(filename, &cmd_error);
	}
	if (!rc) {
		int lock_time = csync_redis_lock_custom(filename, csync_lock_time, "DELETE");
		rc = unlink(filename.c_str());
		if (db && !rc) {
			csync_info(1, "Removing {} from file db.\n", filename);
			db->remove_file(filename, 0);
		}
		if (rc) {
			if (lock_time != -1)
				csync_redis_del_custom(filename, "DELETE");
			csync_error(1, "Failed to delete {} !\n", filename);
		}
	} else {
		csync_error(1, "Failed to backup {} before delete: {} \n", filename, cmd_error);
	}
	return rc;
}
int csync_daemon_check_dirty(db_conn_p db, filename_p filename, peername_p peername, enum action_t cmd,
		int auto_resolve, const char **cmd_error);

static int csync_rmdir_recursive(db_conn_p db, filename_p filename, peername_p std_peername, textlist_p *tl, int backup) {
	const char *peername = std_peername.c_str();
	const char *file = filename.c_str();
	struct dirent **namelist;
	int rc_all = OK;
	int n = 0;
	csync_info(1 + backup, "Removing {}{}* ..\n", file, !strcmp(file, "/") ? "" : "/");
	n = scandir(file, &namelist, 0, alphasort);
	if (n < 0) {
		csync_error(0, "{} in scandir: {} ({})\n", strerror(errno), file, file);
		csync_error_count++;
	} else {
		while (n--) {
			if (strcmp(namelist[n]->d_name, ".") && strcmp(namelist[n]->d_name, "..")) {
				char *fn = static_cast<char*>(malloc(strlen(file) + strlen(namelist[n]->d_name) + 2));
				sprintf(fn, "%s/%s", !strcmp(file, "/") ? "" : file, namelist[n]->d_name);
				struct stat st;
				int rc_stat = lstat(fn, &st);
				if (!rc_stat) {
					const char *cmd_error;
					if (S_ISDIR(st.st_mode)) {
						int rc_recursive = csync_rmdir_recursive(db, fn, peername, tl, backup);
						// TODO What should we do?
						if (rc_recursive == -1) {
							csync_error(1, "Recursive delete returned -1 (dirty): {}:{}", peername, fn);
							rc_all = rc_recursive;
						}
					}
					else {
						int rc_file = 0;
						if (peername != NULL && db != NULL)
							rc_file = csync_daemon_check_dirty(db, fn, peername, A_DEL, 0, &cmd_error);
						if (rc_file == 0) {
							csync_info(1 + backup, "Removing file {}\n", fn);
							if (backup) {
								int rc = unlink(fn);
								csync_info(1 + backup, "Removed file {} {}\n", fn, rc);
							} else {
								daemon_remove_file(db, fn);
							}
						} else {
							csync_info(0, "File is dirty {}\n", fn);
							if (tl != NULL)
								textlist_add(tl, fn, 0);
						}
					}
				}
				free(fn);
			}
			free(namelist[n]);
		}
		free(namelist);
	}
	/* time_t lock_time = */
	csync_redis_lock_custom(file, csync_lock_time, "DELETE,ISDIR");
	errno = 0;
	if (rc_all == 0) {
		rc_all = rmdir(file);
		csync_info(1 + backup, "Removing directory {} {}{}\n", file, rc_all, backup ? " (backup)": "");
	}
	if (rc_all == -1) {
		csync_redis_del_custom(file, "DELETE,ISDIR");
		csync_info(0, "Failed to delete directory {} recursively\n", file, errno);
		/* Accept if we already deleted it */
		if (errno == ENOTDIR || errno == ENOENT) {
			rc_all = 0;
		}
	} else {
		if (db)
			db->remove_file(file, 1);
		rc_all = IDENTICAL;
	}
	return rc_all;
}

static int csync_rmdir(db_conn_p db, filename_p filename, peername_p peername, int recursive, const char **cmd_error) {
	/* TODO: check if all files and sub directories are ignored,
	 delete them. We need a version of csync_check_dir */
	int rc = 0;
	int dir_count = csync_dir_count(db, filename);
	/*
	 int dirty_count = csync_check_dir(db, filename, (recursive ? FLAG_RECURSIVE : 0) | FLAG_IGN_DIR);
	 if (dirty_count != 0) {
	 csync_error(0, "Directory {} has dirty files: {} ", filename, dirty_count);
	 return ERROR;
	 }
	 */
	int errors = 0;
	if (recursive) {
		textlist_p tl;
		csync_info(0, "Deleting recursive from clean directory ({}): {} \n", filename, dir_count);
		rc = ERROR;
		errno = 0;
		/* Above could fail due to ignore files. Do recursive on scandir  */
		if (rc == ERROR) {
			csync_warn(1, "Calling csync_rmdir_recursive {}:{}. Errors {}\n", peername, filename, errors);
			rc = csync_rmdir_recursive(db, filename, peername, &tl, 0);

			if (rc == -1) {
				csync_error(1, "Error on recursive delete: {} {}\n", errno, strerror(errno));
				if (errno == EAGAIN) {
					rc = OK;
				} else {
					*cmd_error = ERROR_DIRTY_STR;
					rc = ERROR;
				}
			}
			csync_warn(2, "Called csync_rmdir_recursive {}:{}. RC: {} {}\n", peername, filename, rc, errno);
		}
		csync_info(0, "Deleted recursive from clean directory ({}): {} {} \n", filename, dir_count, rc);
	} else {
		rc = rmdir(filename.c_str());
		if (rc == -1)
			rc = ERROR;
	}
	return rc;
}

static int csync_unlink(db_conn_p db, filename_p filename, peername_p peername, int recursive, int unlink_flag,
		const char **cmd_error) {
	struct stat st;
	int rc = IDENTICAL;

	if (lstat_strict(filename, &st) != 0)
		return rc; /* Already gone */

	/* TODO NOT working. Unlink is not set to two */
	if (unlink_flag == 2 && S_ISREG(st.st_mode))
		return OK;

	if (S_ISDIR(st.st_mode)) {
		rc = csync_rmdir(db, filename, peername, recursive, cmd_error);
	} else {
		csync_redis_lock_custom(filename, csync_lock_time, "DELETE");
		rc = unlink(filename.c_str());
		if (rc) {
			csync_redis_del_custom(filename, "DELETE");
		}
		if (rc && !unlink_flag) {
			*cmd_error = strerror(errno);
			rc = ERROR;
		}
	}
	// IDENTICAL, ERROR, or new PARTIAL?
	csync_info(2, "DEL {}:{} rc: {}\n", peername, filename, rc);
	return rc;
}

int csync_dir_count(db_conn_p db, filename_p filename) {
	int count = 0;
	return db->dir_count(filename.c_str());
	return count;
}

int csync_daemon_check_dirty(db_conn_p db, filename_p filename, peername_p peername, enum action_t cmd,
		int auto_resolve, const char **cmd_error) {
	int rc = 0;
	int operation = 0;
	int mode = 0;
	csync_debug(2, "daemon_check_dirty: {}\n", filename);

	// Returns newly marked dirty, so we cannot use it to bail out.
	const struct csync_group *g = NULL;
	int markedDirty = csync_check_single(db, filename, FLAG_IGN_DIR, &g);
	csync_debug(2, "daemon_check_dirty: {} {}\n", filename,
				(markedDirty ? "is just marked dirty" : "is clean"));

	if (cmd == A_FLUSH)
		return 0;
	rc = db->is_dirty(peername, filename, &operation, &mode);
	// Found dirty
	if (rc == 1) {
		if (auto_resolve) {
			csync_debug(1, "Remote {}:{} won auto resolve.\n", peername, filename);
			db->remove_dirty("%", filename, 0);
			return 0;
		}
		csync_debug(2, "daemon_check_dirty: peer operation  {} {} {}\n", peername, filename,
				csync_operation_str(operation));

		if ((cmd == A_MKDIR || cmd == A_MOD) && (operation & (OP_MKDIR | OP_MOD)) && S_ISDIR(mode)) {
			rc = 0;
			csync_info(1, "Ignoring dirty directory {}\n", filename);
			db->remove_dirty("%", filename, 0);
			return OK;
		} else if (operation == OP_RM && cmd == A_DEL) {
			// Delete both places
			csync_info(1, "Deleted both places: {}\n", filename);
			db->remove_dirty("%", filename, 0);
			return OK;
		} else {
			csync_info(1, "File {} is dirty here: {} {}\n", filename, csync_operation_str(operation), operation);
		}
		*cmd_error = ERROR_DIRTY_STR;
		// Already checked in single_file
		// NOTE: disabled!
		if (0 && !rc && operation && peername != "") {
			csync_debug(0, "check dirty: peername {} from {}\n", peername, g_myhostname);
			std::set<std::string> peerset;
			peerset.insert(peername);
			csync_mark(db, filename, g_myhostname, peerset, operation,
			NULL, NULL, NULL, 0, time(NULL));
		}
	}
	return rc;
}

const char *to_db(std::string& value) {
	if (value.size() > 0) {
		return value.c_str();
	}
	return NULL;
}

static void daemon_file_update(db_conn_p db, filename_p filename, peername_p peername) {
	struct stat st;
	db->remove_dirty(peername, filename, 0);
	if (lstat_strict(filename, &st) != 0 || csync_check_pure(filename)) {
		db->remove_file(filename, 0);
	} else {
		std::string digest;
		std::string checktxt = csync_genchecktxt_version(&st, filename,
		SET_USER | SET_GROUP, db->version);
		if (S_ISREG(st.st_mode)) {
			digest.reserve(4 * DIGEST_MAX_SIZE + 1);
			int rc = dsync_digest_path_hex(filename, "sha1", digest);
			if (rc) {
				csync_error(0, "ERROR: generating digest {} for '{}': {}", "sha1", filename, rc);
			}
		}
		csync_debug(3, "daemon_file_update: UPDATE/INSERT into file filename: {}\n", filename);
		int count = db->insert_update_file(filename, checktxt.c_str(), &st, to_db(digest));
		if (count < 0)
			csync_warn(1, "Failed to update or insert {}: {}", filename, count);
		csync_debug(3, "daemon_file_update DONE: UPDATE/INSERT into file filename: {}\n", filename);
	}
}

static int csync_backup_rename(filename_p std_filename, int length, int generations) {
	const char *filename = std_filename.c_str();
	char *backup_name = static_cast<char*>(malloc(length + 15));
	char *backup_other = static_cast<char*>(malloc(length + 15));
	struct stat st;
	memcpy(backup_name, filename, length);
	memcpy(backup_other, filename, length);
	int rc, i;
	for (i = generations; i; i--) {
		if (i != 1)
			snprintf(backup_name + length, 15, ".%d", i - 1);
		else
			backup_name[length] = '\0';
		snprintf(backup_other + length, 15, ".%d", i);
		if (i == generations) {
			csync_debug(2, "check backup generation {} due  {} \n", backup_other, generations);
			rc = lstat(backup_other, &st);
			if (rc == 0) {
				csync_debug(2, "Remove backup {} due to generation {} \n", backup_other, generations);
				if (S_ISDIR(st.st_mode))
					csync_rmdir_recursive(NULL, backup_other, "", NULL, 1);
				else {
					unlink(backup_other);
				}
			}
		}
		rc = lstat(backup_name, &st);
		if (rc != 0)
			continue; // File does not exists
		rc = rename(backup_name, backup_other);
		csync_info(2, "renaming backup files '{}' to '{}'. rc = {}\n", backup_name, backup_other, rc);
	}
	free(backup_name);
	free(backup_other);
	return rc;
}

/*
 Backup regular files into backup directory
 in a number of generations

 */
int csync_file_backup(filename_p std_filename, const char **cmd_error) {
	const char *filename = std_filename.c_str();
	static char error_buffer[1024];
	const struct csync_group *g = NULL;
	struct stat buf;
	int rc;
	while ((g = csync_find_next(g, filename, 0))) {
		if (g->backup_directory && g->backup_generations > 1) {
			//	    filename_p filename = prefixsubst(prefixed_filename);

			int back_dir_len = strlen(g->backup_directory);
			int filename_len = strlen(filename);
			char *backup_filename = static_cast<char*>(malloc(back_dir_len + filename_len + 10));
			int fd_in, fd_out, i;
			int lastSlash = 0;
			mode_t mode;
			rc = lstat(filename, &buf);
			csync_debug(2, "backup {} {} \n", filename, rc);
			if (rc != 0) {
				csync_warn(0, "Nothing to backup: {}. New file?\n", filename);
				return 0;
			}

			// Copy the combined string into backup_filename.
			memcpy(backup_filename, g->backup_directory, back_dir_len);
			memcpy(backup_filename + back_dir_len, filename, filename_len);
			backup_filename[back_dir_len + filename_len] = 0;
			mode = 0777;
			// Skip generation of directories
			if (S_ISDIR(buf.st_mode)) {
				struct stat backup_stat;
				int rc_lstat = lstat(backup_filename, &backup_stat);
				if (rc_lstat == 0 && !S_ISDIR(backup_stat.st_mode)) {
					csync_debug(3, "Directory: {} type change backup\n", filename);
					csync_backup_rename(backup_filename, back_dir_len + filename_len, g->backup_generations);
				} else {
					csync_debug(3, "Directory: {} skipping\n", filename);
				}
				return 0;
			}

			fd_in = open(filename, O_RDONLY);
			if (fd_in < 0)
				return 0;

			for (i = filename_len; i > 0; i--)
				if (filename[i] == '/') {
					lastSlash = i;
					break;
				}

			/* Create directory. Do not rename part of backup_directory, so start at 1 */
			for (i = 1; i < filename_len; i++) {

				if (filename[i] == '/' && i <= lastSlash) {
					backup_filename[back_dir_len + i] = 0;

					struct stat st;
					rc = lstat(backup_filename, &st);
					csync_info(3, "backupdir stat: {} {} {}\n", backup_filename, rc, (rc == -1 ? strerror(errno) : ""));
					if (rc == 0) {
						if (!S_ISDIR(st.st_mode)) {
							csync_info(3, "backup_rename PATH: {} filename: {} i: \n", backup_filename, filename, i);
							csync_backup_rename(backup_filename, back_dir_len + i, g->backup_generations);
							rc = 1;
						}
					}
					if (rc) {
						csync_info(3, "mkdir {} \n", backup_filename);
						rc = mkdir(backup_filename, mode);
					}
					// Dont check the empty string.
					if (i != 0)
						csync_set_backup_file_status(backup_filename, back_dir_len);

					backup_filename[back_dir_len + i] = filename[i];
				}
			}

			backup_filename[back_dir_len + filename_len] = 0;
			backup_filename[back_dir_len] = '/';
			csync_info(3, "backup_rename FILE: {} filename: {} i: \n", backup_filename, filename, i);
			csync_backup_rename(backup_filename, back_dir_len + filename_len, g->backup_generations);

			fd_out = open(backup_filename, O_WRONLY | O_CREAT, 0600);

			if (fd_out < 0) {
				snprintf(error_buffer, 1024, "Open error while backing up '%s': %s\n", filename, strerror(errno));
				*cmd_error = error_buffer;
				close(fd_in);
				free(backup_filename);
				return 1;
			}

			csync_debug(3, "Copying data from {} to backup file {} \n", filename, backup_filename);

			rc = csync_copy_file(fd_in, fd_out);
			if (rc != 0) {
				csync_error(0, "csync_backup error: copy file\n");

				snprintf(error_buffer, 1024, "Write error while backing up '%s': %s\n", filename, strerror(errno));

				*cmd_error = error_buffer;
				// TODO verify file disapeared ?
				// return 1;
			}
			csync_set_backup_file_status(backup_filename, back_dir_len);
			csync_debug(3, "csync_backup loop end\n");
			free(backup_filename);
		}
	}
	csync_debug(3, "csync_backup end\n");
	return 0;
}

int csync_copy_file(int fd_in, int fd_out) {
	char buffer[512];
	int read_len = read(fd_in, buffer, 512);

	while (read_len > 0) {
		int write_len = 0;

		while (write_len < read_len) {
			int rc = write(fd_out, buffer + write_len, read_len - write_len);
			if (rc == -1) {
				close(fd_in);
				close(fd_out);
				//TODO verify return code.
				return errno;
			}
			write_len += rc;
		}
		read_len = read(fd_in, buffer, 512);
	}
	close(fd_in);
	close(fd_out);
	return 0;
}

/* get the mode from the orig directory.
 Looking from the back_dir_len should produce the original dir.
 */
int csync_set_backup_file_status(char *filename, int backupDirLength) {

	struct stat buf;
	int rc = stat((filename + backupDirLength), &buf);
	if (rc == 0) {
		csync_debug(4, "Stating original file {} rc: {} mode: {:o}\n", (filename + backupDirLength), rc,
				buf.st_mode);

		rc = lchown(filename, buf.st_uid, buf.st_gid);

		// TODO set  priority depending on rc
		csync_info((rc == 0 ? 4 : 0), "Changing owner of {} to user {} and group {}, rc= {} \n", filename, buf.st_uid,
				buf.st_gid, rc);

		rc = chmod(filename, buf.st_mode);
		csync_info((rc == 0 ? 4 : 0), "Changing mode of {} to mode {}, rc= {} \n", filename, buf.st_mode, rc);

	} else {
		csync_error(2, "ERROR: getting mode and owner ship from {} \n", (filename + backupDirLength));
		return -1;
	}
	return 0;
}
;

enum cmd_update {
	NOP, UPD, NOLOG
};

enum cmd_perm {
	NO_PERM, DO_PERM, COMPARE_MODE
};

enum cmd_ident {
	NO, YES,
};

struct csync_command {
	const char *text;
	enum cmd_perm check_perm;
	int check_dirty;
	int unlink;
	enum cmd_update update;
	enum cmd_ident need_ident;
	enum action_t action;
};

struct csync_command cmdtab[] = {
/*      command,      perm,
 dirty,
 unlink,
 update,
 need_ident,
 action */
	{ "sig", DO_PERM, 0, 0, NOP, YES, A_SIG },
	{ "stat", DO_PERM, 0, 0, NOP, YES, A_STAT },
	{ "mark", DO_PERM, 0, 0, NOP, YES, A_MARK },
	{ "type", COMPARE_MODE, 0, 0, NOP, YES, A_TYPE },
	{ "gettm", DO_PERM, 0, 0, NOP, YES, A_GETTM },
	{ "getsz", DO_PERM, 0, 0, NOP, YES, A_GETSZ },
	{ "flush", DO_PERM, 1, 0, NOP, YES, A_FLUSH },
	{ "del", DO_PERM, 1, 0, UPD, YES, A_DEL },
	{ "patch", DO_PERM, 1, S_IFREG, UPD, YES, A_PATCH },
	{ "create", DO_PERM, 1, S_IFREG, UPD, YES, A_CREATE },
	{ "post", DO_PERM, 1, S_IFREG, UPD, YES, A_POST },
	{ "mkdir", DO_PERM, 1, S_IFDIR, UPD, YES, A_MKDIR },
	{ "moddir", DO_PERM, 1, S_IFDIR, UPD, YES, A_MKDIR },
	{ "mod", DO_PERM, 1, 0, UPD, YES, A_MOD },
// TODO add/use  mod operations for these
	{ "mkchr", DO_PERM, 1, -1, UPD, YES, A_MKCHR },
	{ "mkblk", DO_PERM, 1, -1, UPD, YES, A_MKBLK },
	{ "mkfifo", DO_PERM, 1, -1, UPD, YES, A_MKFIFO },
	{ "mklink", DO_PERM, 1, S_IFLNK, UPD, YES, A_MKLINK },
	{ "mkhardlink", DO_PERM, 1, 0, UPD, YES, A_MKHLINK },
	{ "mksock", DO_PERM, 1, S_IFSOCK, UPD, YES, A_MKSOCK },
	{ "mv", DO_PERM, 0, 0, UPD, YES, A_MV },
	{ "setown", DO_PERM, 1, 0, UPD, YES, A_SETOWN },
	{ "setmod", DO_PERM, 1, 0, NOLOG, YES, A_SETMOD },
	{ "setime", DO_PERM, 0, 0, NOLOG, YES, A_SETTIME },
	{ "settime", DO_PERM, 0, 0, NOLOG, YES, A_SETTIME },
	{ "list", NO_PERM, 0, 0, NOP, YES, A_LIST },
#if 1
	{ "debug", NO_PERM, 0, 0, NOP, NO, A_DEBUG },
#endif
	{ "group", NO_PERM, 0, 0, NOP, NO, A_GROUP },
	{ "ping", NO_PERM, 0, 0, NOP, NO, A_PING },
	{ "hello", NO_PERM, 0, 0, NOP, NO, A_HELLO },
	{ "bye", NO_PERM, 0, 0, NOP, NO, A_BYE },
	{ 0, NO_PERM, 0, 0, NOP, NO, static_cast<enum action_t>(0) } };

/*
 * Loops (to cater for multihomed peers) through the address list returned by
 * gethostbyname(), returns 1 if any match with the address obtained from
 * getpeername() during session startup.
 * Otherwise returns 0 (-> identification failed).
 *
 * TODO switch to a getnameinfo in conn_open.
 * TODO add a "pre-authenticated" pipe mode for use over ssh */
static int verify_peername(db_conn_p db, const char *name, address_t *peeraddr) {
	sa_family_t af = peeraddr->sa.sa_family;
	struct addrinfo hints;
	struct addrinfo *result, *rp;
	int try_mapped_ipv4;
	int s;

	/* Obtain address(es) matching host */
	memset(&hints, 0, sizeof(struct addrinfo));
	hints.ai_family = af; /* Use the family of the peeraddr  */
	hints.ai_socktype = SOCK_STREAM; /* Datagram socket */

	s = getaddrinfo(name, NULL, &hints, &result);
	if (s != 0) {
		csync_info(2, "getaddrinfo {}: {}\n", name, gai_strerror(s));
		return 0;
	}
	char buf[INET6_ADDRSTRLEN];
	csync_info(1, "Connected from {}\n", csync_inet_ntop(peeraddr, buf, sizeof(buf)));
	try_mapped_ipv4 = af == AF_INET6 && !memcmp(&peeraddr->sa_in6.sin6_addr, "\0\0\0\0" "\0\0\0\0" "\0\0\xff\xff", 12);

	/* getaddrinfo() returns a list of address structures.
	 * Try each address. */

	for (rp = result; rp != NULL; rp = rp->ai_next) {
		char ip_string[INET6_ADDRSTRLEN];
		csync_info(2, "IP: {}\n", csync_inet_ntop(reinterpret_cast<address_t*>(rp->ai_addr), ip_string, sizeof(ip_string)));
		/* IPv4 */
		if (af == AF_INET && rp->ai_family == AF_INET
				&& !memcmp(&(reinterpret_cast<struct sockaddr_in*>(rp->ai_addr))->sin_addr, &peeraddr->sa_in.sin_addr,
						sizeof(struct in_addr)))
			break;
		/* IPv6 */
		if (af == AF_INET6 && rp->ai_family == AF_INET6
				&& !memcmp(&(reinterpret_cast<struct sockaddr_in6*>(rp->ai_addr))->sin6_addr, &peeraddr->sa_in6.sin6_addr,
						sizeof(struct in6_addr)))
			break;
		/* peeraddr IPv6, but actually ::ffff:I.P.v.4,
		 * and forward lookup returned IPv4 only */
		if (af == AF_INET6 && rp->ai_family == AF_INET && try_mapped_ipv4
				&& !memcmp(&(reinterpret_cast<struct sockaddr_in*>(rp->ai_addr))->sin_addr,
						   reinterpret_cast<unsigned char*>(&peeraddr->sa_in6.sin6_addr) + 12,
						   sizeof(struct in_addr)))
			break;
	}

	freeaddrinfo(result);
	if (rp != NULL) /* memcmp found a match */
		return conn_check_peer_cert(db->conn_, name, 0);
	return 0;
}

/* Why do all this fuzz, and not simply --assume-authenticated?
 * To limit the impact of an accidental misconfiguration.
 */
static void set_peername_from_env(address_t *p, const char *env) {
	struct addrinfo hints;
	memset(&hints, 0, sizeof(hints));
	hints.ai_family = AF_UNSPEC;
	hints.ai_socktype = SOCK_STREAM;
	hints.ai_flags = AI_NUMERICHOST | AI_NUMERICSERV;
	struct addrinfo *result;
	char *c;
	int s;

	char *val = getenv(env);
	csync_debug(3, "getenv({}): >>{}<<\n", env, val ? val : "");
	if (!val)
		return;
	val = strdup(val);
	if (!val)
		return;

	c = strchr(val, ' ');
	if (!c)
		return;
	*c = '\0';

	s = getaddrinfo(val, NULL, &hints, &result);
	if (s != 0) {
		csync_info(2, "getaddrinfo: {}\n", gai_strerror(s));
		return;
	}

	/* getaddrinfo() may return a list of address structures.
	 * Use the first one. */
	if (result)
		memcpy(p, result->ai_addr, result->ai_addrlen);
	freeaddrinfo(result);
}

static int setup_tag(const char *tag[32], char *line) {
	int i = 0;
	char *save_ptr = NULL;
	tag[0] = strtok_r(line, "\t \r\n", &save_ptr);
	while (tag[i] && i < 31)
		tag[++i] = strtok_r(NULL, "\t \r\n", &save_ptr);
	while (i < 32)
		tag[i++] = "";

	if (!tag[0][0])
		return 1;

	for (i = 0; i < 32; i++) {
	    UrlDecoder url_decode;
	    tag[i] = strdup(url_decode(tag[i]).c_str());
	}

	return 0;
}

// Works with both GCC and Clang
#if defined(__GNUC__) || defined(__clang__)
#pragma GCC diagnostic push
#if defined(__DARWIN_C_LEVEL)
#pragma GCC diagnostic ignored "-Wincompatible-pointer-types-discards-qualifiers"
//#else
//#pragma GCC diagnostic ignored "-Wdiscarded-qualifiers"
#endif
#endif

static void destroy_tag(const char *tag[32]) {
	int i = 0;
	for (i = 0; i < 32; i++)
		free(const_cast<char*>(tag[i]));
}
// Works with both GCC and Clang
#if defined(__GNUC__) || defined(__clang__)
#pragma GCC diagnostic pop
#endif

static int csync_daemon_hardlink(filename_p filename, const char *linkname, const char *is_identical, const char **cmd_error);

static textlist_p csync_hardlink(filename_p filename, struct stat *st, textlist_p tl) {
    const char *cmd_error = NULL;
	textlist_p t = tl;
	while (t) {
		char *src = t->value;
		int rc = unlink(src);
		if (rc) {
			csync_error(0, "ERROR: Failed to unlink '{}'before hardlinking to '{}'", src, filename);
		}
		csync_daemon_hardlink(filename, src, "1", &cmd_error);
		t = t->next;
	}
	textlist_free(tl);
	return 0;
}

static int csync_patch(int conn, filename_p filename) {

	switch (cfg_patch_mode) {
	case DELTA_PATCH:
		return csync_rs_recv_delta_and_patch(conn, filename);
	case OCTET_STREAM:
	case CHUNKED_MODE:
		return csync_rs_patch(conn, filename);
	}
	// Should not happen
	csync_fatal("Wrong value of patch-mode\n");
	return 0;
}

static int csync_daemon_create(int conn, filename_p std_filename, const char **cmd_error) {
	const char *filename = std_filename.c_str();
	struct stat st;
	int rc = stat(filename, &st);
	if (rc != -1) {
		*cmd_error = "ERROR (exist).\n";
		return ABORT_CMD;
	}
	time_t lock_time = csync_redis_lock_custom(filename, csync_lock_time, "CLOSE_WRITE,CLOSE");
	csync_info(1, "daemon CREATE {} {} {}\n", filename, csync_lock_time, csync_zero_mtime_debug ? 0 : lock_time);
	if (lock_time == -1) {
		csync_error(1, "Create {}: {}. Continue\n", filename, "ERROR (locked)");
	}
	conn_printf(conn, "OK (send data).\n");

	int fd = open(filename, O_CREAT | O_EXCL | O_RDWR, S_IWUSR | S_IRUSR);
	if (fd < 0) {
		*cmd_error = "ERROR (create).\n";
		return ABORT_CMD;
	}
	FILE *new_file = fdopen(fd, "wb+");
	rc = csync_recv_file(conn, new_file);
	if (rc == -1) {
		csync_error(0, "ERROR: Failed to stat new file: {} {}", filename, rc);
		return rc;
	}
	return OK;
}

static int csync_daemon_patch(int conn, filename_p filename, const char **cmd_error) {
	struct stat st;
	int rc = stat(filename.c_str(), &st);

	// TODO The lock is created by the patch routines. Should be here and lock tile based on size..

	// Only try to backup if the file exists already.
	if (rc == -1 || !csync_file_backup(filename, cmd_error)) {
		conn_printf(conn, "OK (sending sig).\n");
		csync_rs_sig(conn, filename);
		if (csync_patch(conn, filename)) {
			*cmd_error = strerror(errno);
			csync_error(1, "PATCH failed: {} {}", static_cast<int>(errno), *cmd_error);
			return ABORT_CMD;
		}

		// TODO restore hardlinks
		struct stat st_patched;
		int new_rc = stat(filename.c_str(), &st_patched);
		if (!new_rc) {
			if (st.st_nlink > 1) {
			}
		} else {
			csync_error(0, "ERROR: Failed to stat patched file: {} {}", filename, new_rc);
			return ABORT_CMD;
		}
		return OK;
	}
	return ABORT_CMD;
}

static int csync_daemon_mkdir(filename_p filename, const char **cmd_error) {
	struct stat st;
	*cmd_error = 0;
	/* ignore errors on creating directories if the
	 * directory does exist already. we don't need such
	 * a check for the other file types, because they
	 * will simply be unlinked if already present.
	 */
#ifdef __CYGWIN__
    // This creates the file using the native windows API, bypassing
    // the cygwin wrappers and so making sure that we do not mess up the
    // permissions..
    char winfilename[MAX_PATH];
    cygwin_conv_to_win32_path(filename, winfilename);

    if ( !CreateDirectory(TEXT(winfilename), NULL) ) {
	if ( lstat_strict(filename), &st) != 0 || !S_ISDIR(st.st_mode)) {
	csync_error(1, "Win32 I/O Error {} in mkdir command: {}\n",	int)GetLastError(), winfilename);
	*cmd_error = "Win32 I/O Error on CreateDirectory()";
    }
#else
	int found = lstat_strict(filename, &st) == 0;
	if (found) {
		if (!S_ISDIR(st.st_mode)) {
			csync_warn(1, "Entry '{}' already exists but not a directory\n", filename);
			unlink(filename.c_str());
		} else {
			csync_info(2, "Directory '{}' already exists\n", filename);
			return OK;
		}
	}
	csync_redis_lock_custom(filename, csync_lock_time, "CREATE,ISDIR");
	if (mkdir(filename.c_str(), 0700)) {
		if (lstat_strict(filename, &st) != 0 || !S_ISDIR(st.st_mode))
			*cmd_error = strerror(errno);
	}
	if (*cmd_error == 0)
		return OK;
	return ABORT_CMD;
#endif
}

static struct csync_command* find_command(const char *cmd) {
	int cmdnr;
	for (cmdnr = 0; cmdtab[cmdnr].text; cmdnr++)
		if (!strcasecmp(cmdtab[cmdnr].text, cmd))
			break;
	return &cmdtab[cmdnr];
}

static int csync_daemon_check_identify(int conn, struct csync_command *cmd, char *peername, address_t *peeraddr) {
	char buf[INET6_ADDRSTRLEN];
	if (cmd->need_ident == YES && peername == NULL) {
		conn_printf(conn, "Dear %s, please identify first.\n",
				csync_inet_ntop(peeraddr, buf, sizeof(buf)) ? buf : "stranger");
		return -1;
	}
	return 0;
}

static const char* csync_daemon_check_perm(db_conn_p db, struct csync_command *cmd, filename_p filename, char *peername,
										   const char *key) {
	const char *cmd_error = 0;
//	on_cygwin_lowercase(filename);

	if (cmd->check_perm) {
		if (peername == NULL) {
			csync_error(1, "No peername in csync_daemon_check_perm");
			return "Permission denied! No peername";
		}
  		int perm = csync_perm(filename, key, peername, cmd->check_perm == COMPARE_MODE);
		if (perm) {
			if (perm == 2) {
				csync_mark(db, filename, peername, std::set<std::string>(), OP_MOD, NULL, NULL, NULL, 0, time(NULL));
				cmd_error = "Permission denied for slave!";
			} else
				cmd_error = "Permission denied!";
			return cmd_error;
		}
	}
	return NULL;
}

static int csync_daemon_setown(filename_p filename, const char *uidp, const char *gidp, const char *userp, const char *groupp,
		const char **cmd_error) {
	if (!csync_ignore_uid || !csync_ignore_gid) {
		int uid = csync_ignore_uid ? -1 : atoi(uidp);
		int gid = csync_ignore_gid ? -1 : atoi(gidp);

		const char *user = csync_ignore_uid ? NULL : userp;
		if (user != NULL && user[0] != '-') {
			int local_uid = name_to_uid(user, NULL);
			if (local_uid != -1)
				uid = local_uid;
		}
		const char *group = csync_ignore_gid ? NULL : groupp;
		int local_gid = name_to_gid(group);
		if (local_gid != -1)
			gid = local_gid;
		errno = 0;
		if (lchown(filename.c_str(), uid, gid))
			*cmd_error = strerror(errno);
	}
	return 0;
}

static int response_ok_not_found(int conn) {
	conn_printf(conn, "OK (not_found).\n");
	return NEXT_CMD;
}

static int csync_daemon_sig(int conn, const char *filename, const char *user_group, time_t ftime, long long size,
							db_conn_p db, const char **cmd_error, int skip_rs_sig) {
	(void) ftime;
	(void) size;
	UrlEncoder url_encode;

	struct stat st;
	if (lstat_strict(filename, &st) != 0) {
		UrlEncoder url_encode;
		char *path;
		if ((path = csync_check_path(filename))) {
			std::string otherfile = url_encode(prefixencode(path));
			csync_error(1, "Path not found {}\n", path);
			conn_printf(conn, PATH_NOT_FOUND "%s\n", otherfile.c_str());
			return NEXT_CMD;
		}
		if ( errno == ENOENT) {
			return response_ok_not_found(conn);
		} else {
			*cmd_error = strerror(errno);
			return ABORT_CMD;
		}
	} else if (csync_check_pure(filename)) {
		csync_error(1, "check pure {} \n", filename);
		return response_ok_not_found(conn);
	}
	// Found a file that we ca do a check text on
	conn_printf(conn, "OK (data_follows).\n");
	int flags = 0;
	// Prob. all non-regular files, but testing with directories
	/* TODO Why ignore mtime?
	 if (!S_ISDIR(st.st_mode))
	 flags |= IGNORE_MTIME;
	 */
	if (strcmp("user/group", user_group) == 0)
		flags |= SET_USER | SET_GROUP;
	csync_debug(2, "Flags for gencheck: {} \n", flags);
	std::string checktxt = csync_genchecktxt_version(&st, filename, flags, db->version);
	char *digest /* db->get_digest(filename); */= NULL;
	UrlEncoder url_encode;
	if (db->version == 1)
		conn_printf(conn, "%s %s\n", checktxt.c_str(), (digest ? digest : ""));
	else if (db->version == 2) {
		conn_printf(conn, "%s\n", url_encode(checktxt).c_str(), (digest ? digest : ""));
	} else
		conn_printf(conn, "%s %s\n", url_encode(checktxt).c_str() /*, url_encode(digest) */);

	if (skip_rs_sig) {
		return NEXT_CMD;
	}
	if (S_ISREG(st.st_mode))
		csync_rs_sig(conn, filename);
	else
		conn_printf(conn, "octet-stream 0\n");

	return OK;
}

static void csync_daemon_type(int conn, const char *filename, const char **cmd_error) {
	FILE *f = fopen(filename, "rb");

	if (!f && errno == ENOENT)
		f = fopen("/dev/null", "rb");

	if (f) {
		char buffer[512];
		size_t rc;

		conn_printf(conn, "OK (data_follows).\n");
		while ((rc = fread(buffer, 1, 512, f)) > 0)
			if (conn_write(conn, buffer, rc) != static_cast<ssize_t>(rc)) {
				conn_printf(conn, "[[ %s ]]", strerror(errno));
				break;
			}
		fclose(f);
		return;
	}
	*cmd_error = strerror(errno);
}

static void csync_daemon_get_size_time(int conn, const char *filename, struct csync_command *cmd) {
	struct stat sbuf;
	conn_printf(conn, "OK (data_follows).\n");
	if (!lstat_strict(filename, &sbuf))
		conn_printf(conn, "%ld\n", cmd->action == A_GETTM ? static_cast<long>(sbuf.st_mtime) : static_cast<long>(sbuf.st_size));
	else
		conn_printf(conn, "-1\n");

}

static int set_file_link_times(const char *symlink, const struct timeval times[2]) {
    int attempts = 0;
    const int max_attempts = 5;
    const useconds_t delay = 100000; // 100 milliseconds

    while (attempts < max_attempts) {
        if (lutimes(symlink, times) == 0) {
            return 0; // Success
        } else if (errno == EAGAIN) {
            attempts++;
            usleep(delay); // Wait before retrying
        } else {
            return -1; // Failure
        }
    }
    csync_info(1, "lutimes failed after {} attempts\n", attempts);
    return -1;
}

static int csync_daemon_settime(const char *filename, time_t time, const char **cmd_error) {
	int result = OK;
	struct timeval times[2];
	times[0].tv_usec = 0;
	times[1].tv_usec = 0;
	times[0].tv_sec = time;
	times[1].tv_sec = times[0].tv_sec;
	errno = 0;
	int rc = set_file_link_times(filename, times);
	if (rc) {
		*cmd_error = strerror(errno);
	}
	if (csync_zero_mtime_debug)
		time = 0;
	csync_info(2, "settime {} rc = {} time: {} errno = {} err = {}\n", filename, rc, time, errno,
			(*cmd_error ? *cmd_error : ""));
	return result;
}

static void csync_daemon_list(int conn, db_conn_p db, const char *filename, const char *myname, const char *peername,
							  int recursive) {
	textlist_p tl = db->list_file(filename, myname, peername, recursive);
	textlist_p t = tl;
	while (t) {
		conn_printf(conn, "%s\t%s\n", t->value, t->value2);
		t = t->next;
	}
	textlist_free(tl);
}

static const char* check_ssl(char *peername) {
#ifdef HAVE_LIBGNUTLS
	if (!csync_conn_usessl) {
		struct csync_nossl *t;
		for (t = csync_nossl; t; t = t->next) {
			if (!fnmatch(t->pattern_from, g_myhostname.c_str(), 0) && !fnmatch(t->pattern_to, peername, 0)) {
				// conn_without_ssl_ok;
				return 0;
			}
		}
		return "SSL encrypted connection expected!";
	}
#endif
	return 0;
}

static const char* csync_daemon_hello_ping(db_conn_p db, char **peername, address_t *peeraddr, const char *newpeername,
		const char *config, int is_ping, int ip_version) {
	// unused
	(void) config;

	if (*peername) {
		free(*peername);
		*peername = NULL;
	}
	// Hack to allow test cases on local machine

	if ((g_allow_peer && !strcmp(g_allow_peer, newpeername)) || verify_peername(db, newpeername, peeraddr)) {
		*peername = strdup(newpeername);
	} else {
		peername = NULL;
		return "Identification failed!";
	}
	const char *ssl_error;
	if ((ssl_error = check_ssl(*peername)))
		return ssl_error;

	int pid = -1;
	if (is_ping && (pid = fork()) == 0) {
		/* Now in child
		 We cannot assuming that the parent wont use the database connection and it will close them (if working correctly)
		 So we need a new db
		 */
		csync_debug(0, "PING child fork: {} {}\n", *peername, g_cfgname);
		parse_peerlist(*peername); // updates g_active_peers
		csync_server_child_pid = getpid();
		int rc = csync_start(MODE_UPDATE, FLAG_RECURSIVE, optind, 0, csync_update_host, -1, db->version, ip_version);
		exit(rc);
	} else {
		csync_debug(2, "DAEMON is_ping: {} fork: {} {}. pid: {}\n", is_ping, *peername, g_cfgname, pid);
	}
	return 0;
}

static int csync_daemon_group(char **grouplist, const char *newgroup, const char **cmd_error) {
	if (*grouplist) {
		*cmd_error = "Group list already set!";
		return ERROR;
	} else {
		const struct csync_group *g;
		int i, gnamelen;

		*grouplist = strdup(newgroup);
		for (g = csync_group; g; g = g->next) {
			if (!g->myname)
				continue;
			i = 0;
			gnamelen = strlen(csync_group->gname);
			while (*grouplist[i]) {
				if (!strncmp(*grouplist + i, csync_group->gname, gnamelen)
						&& (*grouplist[i + gnamelen] == ',' || !*grouplist[i + gnamelen])) {
					goto found_asactive;
				}
				while (*grouplist[i])
					if (*grouplist[i++] == ',')
						break;
			}
			csync_group->myname = 0;
			found_asactive: ;
		}
	}
	return OK;
}

static void csync_daemon_check_update(db_conn_p db, filename_p filename, const char *otherfile, struct csync_command *cmd,
		char *peer) {
	if (cmd->update != NOP)
		daemon_file_update(db, filename, peer);

	if (otherfile)
		daemon_file_update(db, otherfile, peer);
	if (cmd->update == UPD) {
		csync_info(1, "Updated({}) {}:{} {} \n", cmd->text, peer ? peer : "???", filename, otherfile ? otherfile : "");
		csync_schedule_commands(db, filename, 0);
	}
}

static void csync_daemon_stdin_check(int fd, address_t *peeraddr, socklen_t *peerlen) {
	struct stat sb;

	if (fstat(fd, &sb))
		csync_fatal("Can't run fstat on fd {}: {}\n", fd, strerror(errno));

	switch (sb.st_mode & S_IFMT) {
	case S_IFSOCK:
		if (getpeername(fd, &peeraddr->sa, peerlen) == -1)
			csync_fatal("Can't run getpeername on fd {}: {}\n", fd, strerror(errno))
		;
		break;
	case S_IFIFO:
		set_peername_from_env(peeraddr, "SSH_CLIENT");
		break;
		/* fall through */
	default:
		csync_fatal("I'm only talking to sockets or pipes! {:x}\n", sb.st_mode & S_IFMT)
		;
		break;
	}
}

static int csync_daemon_setmod(filename_p filename, const char *mod, const char **cmd_error) {
	if (!csync_ignore_mod) {
		struct stat st;
		int rc = lstat(filename.c_str(), &st);
		if (rc == 0) {
			if (S_ISLNK(st.st_mode)) {
				csync_warn(0, "Daemon_setmod called on symlink: {}. Skipping!\n", filename);
				return OK;
			}
		}
		if (!chmod(filename.c_str(), atoi(mod)))
			return OK;
		if (errno != ENOENT) {
			*cmd_error = strerror(errno);
			return ABORT_CMD;
		} else {
			csync_warn(0, "daemon_setmod: Ignoring fail setmod on missing file: {}. errno {}\n", filename, errno);
		}
	}
	return OK;
}

static int csync_daemon_hardlink(filename_p std_filename, const char *linkname, const char *is_identical, const char **cmd_error) {
	struct stat st_file, st_link;
	const char *filename = std_filename.c_str();
	int rc = stat(filename, &st_file);
	int rc_link = stat(linkname, &st_link);
	int identical = atoi(is_identical);

	if (rc == 0 && rc_link == 0 && st_file.st_dev == st_link.st_dev && st_file.st_rdev == st_link.st_rdev) {
		// OK on the same device
		if (identical && st_file.st_ino == st_link.st_ino)
			return OK;
	}
	// This should not happen. File should be there (patched)
	if (rc != 0) {
		*cmd_error = "PATCH";
		return ABORT_CMD;
	}
	/* Found */
	if (!identical) {
		*cmd_error = "PATCH";
		return ABORT_CMD;
	}
	if (rc_link == 0) {
		if (csync_file_backup(linkname, cmd_error)) {
			return ABORT_CMD;
		}
		if (unlink(linkname)) {
			*cmd_error = strerror(errno);
			return ABORT_CMD;
		}
	}
	if (!link(filename, linkname)) {
		csync_info(1, "HARDLINK: {} -> {} \n", filename, linkname);
		return OK;
	}
	*cmd_error = strerror(errno);
	return ABORT_CMD;
}

static int csync_daemon_mv(db_conn_p db, filename_p std_filename, const char *newname, const char **cmd_error) {
	const char *filename = std_filename.c_str();
	const char *operation = "MOVED_TO";
	csync_debug(1, "DAEMON_MV {} Locking {}:{} {}\n", filename, operation, newname, csync_lock_time);
	time_t lock_time = csync_redis_lock_custom(newname, csync_lock_time, operation);
	if (rename(filename, newname)) {
		*cmd_error = strerror(errno);
		if (lock_time > 0)
			csync_redis_del_custom(filename, operation);
		return ABORT_CMD;
	}
	int rc = db->move_file(filename, newname);
	if (rc) {
		csync_error(0, "ERROR: failed to update DB path for moved file {} -> {}\n", filename, newname);
	}
	db->remove_dirty("%", filename, 0);
	db->remove_dirty("%", newname, 0);
	return OK;
}

static int csync_daemon_symlink(filename_p std_filename, const char *target, const char **cmd_error) {
	const char *filename = std_filename.c_str();
	struct stat st;
	int rc = lstat(filename, &st);
	if (rc == 0) {
		if (S_ISLNK(st.st_mode)) {
			char *tmp = static_cast<char*>(malloc(st.st_size + 1));
			int r = readlink(filename, tmp, st.st_size + 1);
			tmp[r] = 0;
			if (!strcmp(target, tmp)) {
				csync_debug(0, "daemon_symlink: same target {} ", target);
				free(tmp);
				return OK;
			}
			csync_debug(0, "daemon_symlink: new  target {} differs from {}", target, tmp);
			free(tmp);
		}
		csync_debug(0, "daemon_symlink: unlink {} before symlink to {}", filename, target);
		rc = unlink(filename);
		if (rc)
			csync_debug(0, "daemon_symlink: Failed to unlink {}. Symlink will fail", filename);
	}
	if (!symlink(target, filename))
		return OK;
	*cmd_error = strerror(errno);
	csync_debug(0, "daemon_symlink failed: {} -> {}  {}\n", filename, target, *cmd_error);
	return ABORT_CMD;
}

static int daemon_check_slave_status(filename_p filename) {
	const struct csync_group *g = 0;

	while ((g = csync_find_next(g, filename.c_str(), 0))) {
		if (g->local_slave)
			return 1;;
	}
	return 0;
}

extern char *autoresolve_str[];
static int daemon_check_auto_resolve(const char *peername, filename_p std_filename, time_t ftime, long long size) {
	if (peername == NULL) {
		csync_error(1, "No peername in daemon_check_auto_resolve\n");
		return 0;
	}
	const char *filename = std_filename.c_str();
	int auto_resolved = 0;
	if (daemon_check_slave_status(filename))
		return 1;
	int auto_method = get_auto_method(peername, filename);
	if (auto_method == CSYNC_AUTO_METHOD_NONE)
		return 0;
	// check first, Left, right
	csync_info(2, "daemon: Auto resolve method {} {} for {}:{}\n", autoresolve_str[auto_method], auto_method, peername,
			filename);

	// time, size
	struct stat stat;
	if (filename != NULL && filename[0] != 0) {
		int rc = lstat(filename, &stat);
		if (rc) {
			csync_debug(2, "daemon_check_auto_resolve: {} failed stat\n", filename);
			return 0;
		}
	}
	csync_info(3, "daemon: Auto resolve {}:{} time: {} {} size: {} {} \n", peername, filename, ftime, stat.st_mtime,
			size, stat.st_size);
	auto_resolved = csync_auto_resolve_time_size(auto_method, ftime, stat.st_mtime, size, stat.st_size);

	if (auto_resolved) {
		csync_debug(1, "check_auto_resolve: Remote {}:{} won auto resolve\n", peername, filename);
	}
	return auto_resolved;
}

struct command {
	const char *first;
	const char *second;
	const char *value;
	const char *secondfile;
	const char *uid;
	const char *gid;
	const char *user;
	const char *group;
	const char *mod;
	const char *digest;
	time_t ftime;
	long long size;
};

static int daemon_flush(db_conn_p db, const char *filename) {
	struct stat st;
	int recursive = 0;
	if (lstat_strict(filename, &st) == 0) {
		if (S_ISDIR(st.st_mode)) {
			recursive = 1;
		}
	}
	db->remove_dirty("%", filename, recursive);
	return OK;
}

static int csync_daemon_dispatch(int conn, int conn_out, db_conn_p db, const char *filename, struct csync_command *cmd,
		struct command *params, int protocol_version, char **peername, address_t *peeraddr, const char **otherfile,
		const char **cmd_error) {
	// unused
	(void) conn;

	// Investigate. select commands only
	if (cmd->action != A_FLUSH && *peername != NULL && filename != NULL && daemon_check_auto_resolve(*peername, filename, params->ftime, params->size)) {
		csync_debug(1, "daemon dispatch: Remote {}:{} won auto resolved. clear dirty\n", *peername ? *peername : "", filename ? filename : "");
		db->remove_dirty("%", filename, 0);
	}
	switch (cmd->action) {
	case A_STAT:
	case A_SIG: {
		int skip_rs_sig = 0;
		if (cmd->action == A_STAT)
			skip_rs_sig = 1;
		return csync_daemon_sig(conn_out, filename, params->value, params->ftime, params->size, db, cmd_error, skip_rs_sig);
		break;
	}
	case A_MARK:
		csync_mark(db, filename, *peername, std::set<std::string>(), OP_MOD, NULL, NULL, NULL, 0, time(NULL));
		break;
	case A_TYPE:
		csync_daemon_type(conn_out, filename, cmd_error);
		return BYEBYE;
		break;
	case A_GETTM:
	case A_GETSZ:
		csync_daemon_get_size_time(conn_out, filename, cmd);
		return NEXT_CMD;
		break;
	case A_FLUSH:
		daemon_flush(db, filename);
		break;
	case A_DEL:
		if (!csync_file_backup(filename, cmd_error))
			return csync_unlink(db, filename, *peername, 1, cmd->unlink, cmd_error);

		break;

	case A_CREATE:
	case A_POST:
	case A_PATCH: {
		int rc;
		if (cmd->action == A_PATCH)
			rc = csync_daemon_patch(conn_out, filename, cmd_error);
		else // A_CREATE or A_POST
			rc = csync_daemon_create(conn_out, filename, cmd_error);

		if (rc != OK) {
			csync_error(1, "Failed to create/patch {}\n", filename);
			return rc;
		}
		rc = csync_daemon_setown(filename, params->uid, params->gid, params->user, params->group, cmd_error);
		if (rc != OK) {
			csync_error(1, "Failed to set owner {}\n", filename);
			return rc;
		}
		rc = csync_daemon_setmod(filename, params->mod, cmd_error);
		if (rc != OK) {
			csync_error(1, "Failed to set mod {}\n", filename);
			return rc;
		}
		rc = csync_daemon_settime(filename, params->ftime, cmd_error);
		if (rc != OK || params->ftime == 0) {
			csync_error(1, "Failed to set time {} {} or is 0\n", filename, params->ftime);
			return rc;
		}
		return IDENTICAL;
		break;
	}
	case A_MKDIR: {
		int rc = csync_daemon_mkdir(filename, cmd_error);
		csync_info(2, "mkdir {} rc = {} errno = {} err = {}\n", filename, rc, errno, (*cmd_error ? *cmd_error : ""));
		if (rc != OK)
			return rc;
		__attribute__ ((fallthrough));
	}
	case A_MOD: {
		int rc = csync_daemon_setown(filename, params->uid, params->gid, params->user, params->group, cmd_error);
		csync_info(2, "setown {} rc = {} uid: {} gid: {} errno = {} err = {}\n", filename, rc, params->uid, params->gid,
				errno, (*cmd_error ? *cmd_error : ""));
		if (rc != OK)
			return rc;
		rc = csync_daemon_setmod(filename, params->mod, cmd_error);
		csync_info(2, "setmod {} rc = {} mod: {} errno = {} err = {}\n", filename, rc, params->mod, errno,
				(*cmd_error ? *cmd_error : ""));
		if (rc != OK)
			return rc;
		rc = csync_daemon_settime(filename, params->ftime, cmd_error);
		if (rc != OK)
			return rc;
		return IDENTICAL;
		break;
	}
	case A_MKCHR:
		if (mknod(filename, 0700 | S_IFCHR, atoi(params->value))) {
			*cmd_error = strerror(errno);
			return ABORT_CMD;
		}
		break;
	case A_MKBLK:
		if (mknod(filename, 0700 | S_IFBLK, atoi(params->value))) {
			*cmd_error = strerror(errno);
			return ABORT_CMD;
		}
		break;
	case A_MKFIFO:
		if (mknod(filename, 0700 | S_IFIFO, 0)) {
			*cmd_error = strerror(errno);
			return ABORT_CMD;
		}
		break;
	case A_MKLINK:
		*otherfile = prefixsubst(params->secondfile);
		return csync_daemon_symlink(filename, *otherfile, cmd_error);

		break;
	case A_MKHLINK: {
		*otherfile = prefixsubst(params->secondfile);
		return csync_daemon_hardlink(*otherfile, filename, "1", cmd_error);
		break;
	}
	case A_MV: {
		*otherfile = prefixsubst(params->secondfile);
		return csync_daemon_mv(db, filename, *otherfile, cmd_error);
		break;
	}
	case A_MKSOCK:
		/* just ignore socket files */
		break;
	case A_SETOWN:
		return csync_daemon_setown(filename, params->uid, params->gid, params->user, params->group, cmd_error);
		break;
	case A_SETMOD:
		return csync_daemon_setmod(filename, params->value, cmd_error);
		break;
	case A_SETTIME:
		return csync_daemon_settime(filename, atol(params->value), cmd_error);
		break;
	case A_LIST:
		// LIST <host> <filename> <key> <recursive>
		csync_debug(1, "peername: {} file: {} key: {} recursive {}\n", *peername ? *peername : "", filename ? filename : "", params->value ? params->value : "",
				params->uid);
		csync_daemon_list(conn_out, db, filename, g_myhostname.c_str(), *peername, (params->uid ? atoi(params->uid) : 0));
		break;
	case A_DEBUG:
		{
			csync_info(2, "DEBUG from {} {}\n", (*peername) ? *peername : "(null)", params->first);
			int client_debug_level = 0;
			if (params->first[0])
				client_debug_level = atoi(params->first);
			if (client_debug_level > csync_level_debug) {
				csync_info(1, "Increasing {} DEBUG level to {}\n",(*peername) ? *peername : "(null)", params->first);
				csync_level_debug = client_debug_level;
				csync2::g_logger.setDebugLevel(client_debug_level);
			}
			break;
		}
	case A_PING:
		*cmd_error = csync_daemon_hello_ping(db, peername, peeraddr, params->first, params->second, 1,
				protocol_version);
		csync_info(1, "PING from {} {}. Response: {}\n", *peername, params->second, (*cmd_error ? *cmd_error : "OK"));
		return ABORT_CMD;
	case A_HELLO:
		*cmd_error = csync_daemon_hello_ping(db, peername, peeraddr, params->first, params->second, 0,
				protocol_version);
		csync_info(1, "HELLO from {}. Response: {}\n", *peername, (*cmd_error ? *cmd_error : "OK"));
		return ABORT_CMD;
	case A_GROUP:
		csync_daemon_group(&g_active_grouplist, params->first, cmd_error);
		break;
	case A_BYE:
		conn_printf(conn_out, "OK (cu_later).\n");
		return BYEBYE;
	}
	if (*cmd_error)
		return ABORT_CMD;
	return OK;
}

static void csync_end_command(int conn, filename_p std_filename, const char *tag[32], const char *cmd_error, int rc) {
	const char *filename = std_filename.c_str();
	csync_info(2, "Daemon end_command {} {} {} {}\n", filename, tag[0], rc, cmd_error != NULL ? cmd_error : "");
	if (cmd_error) {
		csync_error(0, "ERROR: {} ({})\n", cmd_error, filename ? filename : "<no file>");
		conn_printf(conn, "%s (%s)\n", cmd_error, filename ? filename : "<no file>");
	} else {
		switch (rc) {
		case OK:
		case ABORT_CMD:  // Rename to OK_RESPONSE
			conn_printf(conn, "OK (cmd_finished).\n");
			break;
		case IDENTICAL:
			csync_info(1, "IDENT (cmd_finished).\n");
			conn_printf(conn, "IDENT (cmd_finished).\n");
			break;
		default:
			conn_printf(conn, "ERROR (Server error %d).\n", rc);
			csync_fatal("Unknown return rc: {} {} {} Exiting!\n", rc, tag[0], filename ? filename : "<no file>");
		}
	}
	destroy_tag(tag);
}

static void parse_tags(const char *tag[32], struct command *cmd) {
	cmd->first = tag[1];
	cmd->second = tag[2];
	cmd->value = tag[3];
	cmd->secondfile = tag[3];
	cmd->uid = tag[4];
	cmd->gid = tag[5];
	cmd->user = tag[6];
	cmd->group = tag[7];
	cmd->mod = tag[8];
	cmd->digest = tag[9];
	cmd->size = tag[10] ? atoll(tag[10]) : 0L;
	cmd->ftime = tag[11] ? atol(tag[11]) : 0L;
}

void csync_daemon_session(int conn_in, int conn_out, db_conn_p db, int protocol_version, int mode) {
	address_t peeraddr;
	memset(&peeraddr, 0, sizeof(peeraddr));
	peeraddr.sa.sa_family = AF_UNSPEC;
	socklen_t peerlen = sizeof(peeraddr);
	char line[4096], *peername = 0;
	const char *tag[32];
	const char *cmd_error = NULL;
	//TODO only valid for INETD mode since we do not set fd 0 otherwise.
	if (MODE_INETD == mode)
		csync_daemon_stdin_check(0, &peeraddr, &peerlen);
	else
		csync_daemon_stdin_check(conn_in, &peeraddr, &peerlen);

	while (conn_gets(conn_in, line, 4096)) {
		if (setup_tag(tag, line))
			continue;
		struct csync_command *cmd = find_command(tag[0]);
		if (!cmd->text) {
			cmd_error = "Unknown command!";
			csync_end_command(conn_out, tag[2], tag, cmd_error, 0);
			continue;
		}

		const char *filename = NULL;
		if (tag[2])
			filename = prefixsubst(tag[2]);
		const char *other = prefixsubst(tag[3]);
		if (cmd->action == A_HELLO) {
			csync_debug(1, "Command: {} {}\n", tag[1] ? tag[1] : "", tag[0] ? tag[0] : "");
			if (active_peer)
				free(active_peer);
			active_peer = strdup(tag[1]);
		} else {
			 csync_debug(1,
			 "Command: {}: {} {} {} {} {} {} {} {} {} {} {}\n",
					   active_peer ? active_peer : "(null)",
					   tag[0] ? tag[0] : "",
					   filename ? filename : "",
					   csync_zero_mtime_debug && cmd->action == A_SETTIME ? "xxxxxxxx" : (other ? other : ""),
					   tag[4] ? tag[4] : "",
					   tag[5] ? tag[5] : "", tag[6] ? tag[6] : "", tag[7] ? tag[7] : "",
					   tag[8] ? tag[8] : "", tag[9] ? tag[9] : "", tag[10] ? tag[10] : "",
					   tag[11] && tag[11][0] != 0 && csync_zero_mtime_debug ? "xxxxxxxx" : (tag[11] ? tag[11] : ""));
		}

		cmd_error = 0;

		if (csync_daemon_check_identify(conn_out, cmd, peername, &peeraddr)) {
			destroy_tag(tag);
			continue;
		}
		int rc = OK;
		if ((cmd_error = csync_daemon_check_perm(db, cmd, filename, peername, tag[1]))) {
			csync_error(1, "File {}:{} no perm. Abort cmd {}", peername ? peername : "", filename ? filename : "", cmd_error ? cmd_error : "");
			rc = ABORT_CMD;
		}

		struct command params;

		parse_tags(tag, &params);
		if (rc == OK && cmd->check_dirty && filename != NULL && peername != NULL
				&& csync_daemon_check_dirty(db, filename, peername, cmd->action,
						daemon_check_auto_resolve(peername, filename, params.ftime, params.size), &cmd_error)) {
			rc = ABORT_CMD;
			// Something is wrong if this is required
			cmd_error = ERROR_DIRTY_STR;
			csync_info(1, "File {}:{} is dirty here. Continuing.\n", peername ? peername : "", filename ? filename : ""); // cmd_error is set on error
		} else {
			// TODO: Unlink only if different type
			if (rc == OK && cmd->unlink) {
				struct stat st;
				if (lstat_strict(filename, &st) == 0
						&& (abs(cmd->unlink) != (st.st_mode & S_IFMT) || cmd->unlink == -1)) {
					if (cmd->unlink != -1) // -1: alway unlink and no logging
						csync_info(1, "Unlinking entry due to different type: {} {} \n", cmd->unlink,
								st.st_mode & S_IFMT);
					if (csync_file_backup(filename, &cmd_error))
						csync_warn(2, "Failed to backup file {}. Unlinking anyway\n", filename);
					csync_unlink(db, filename, peername, 1, cmd->unlink, &cmd_error);
				}
			}
			const char *otherfile = NULL;
			if (rc != ABORT_CMD) {
				cmd_error = 0;
				rc = csync_daemon_dispatch(conn_in, conn_out, db, filename, cmd, &params, protocol_version, &peername,
						&peeraddr, &otherfile, &cmd_error);
			}
			csync_info(3, "DEBUG daemon: {} rc={} '{}' '{}' '{}' \n", tag[0], rc,
					   peername ? peername : "", filename ? filename : "", (otherfile ? otherfile : "-"));
			if (rc == OK || rc == IDENTICAL) {
				// check updates done
				csync_daemon_check_update(db, filename, otherfile, cmd, peername);
			} else if (rc == NEXT_CMD) {
				// Already send an reply
				destroy_tag(tag);
				continue;
			} else if (rc == BYEBYE) {
				destroy_tag(tag);
				if (active_peer)
					free(active_peer);
				active_peer = 0;
				if (peername) {
					free(peername);
				}
				return;
			}
		}
		// END CMD, in error if cmd_error (but finish it with a reply)
		csync_end_command(conn_out, filename, tag, cmd_error, rc);
	}
	csync_warn(0, "CONN {} closed without BYE\n", active_peer);
	if (active_peer)
		free(active_peer);
	active_peer = 0;
}
