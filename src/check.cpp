/*  -*- c-file-style: "k&r"; c-basic-offset: 4; tab-width: 4; indent-tabs-mode: t -*-
 *  csync2 - cluster synchronization tool, 2nd generation
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
#include "utils.hpp"
#include "check.hpp"
#include "action.hpp"
#include "checktxt.hpp"
#include "db.hpp"
#include "digest.hpp"
#include "db_api.hpp"
#include "buffer.hpp"
#include "redis.hpp"

#include <stdio.h>
#include <stdlib.h>
#include <string>
#include <dirent.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <unistd.h>
#include <errno.h>
#include <fcntl.h>
#include <stdio.h>
#include <dirent.h>

#ifdef __CYGWIN__

#include <w32api/windows.h>


/* This does only check the case of the last filename element. But that should
 * be OK for us now...
 */

int csync_cygwin_case_check(filename_p filename)
{
	if (!strcmp(filename, "/cygdrive"))
		goto check_ok;
	if (!strncmp(filename, "/cygdrive/", 10) && strlen(filename) == 11)
		goto check_ok;

	char winfilename[MAX_PATH];
	cygwin_conv_to_win32_path(filename, winfilename);

	int winfilename_len = strlen(winfilename);
	int found_file_len;
	HANDLE found_file_handle;
	WIN32_FIND_DATA fd;

	/* See if we can find this file. */
	found_file_handle = FindFirstFile(winfilename, &fd);
	if (found_file_handle == INVALID_HANDLE_VALUE)
		goto check_failed;
	FindClose(found_file_handle);

	found_file_len = strlen(fd.cFileName);

	/* This should never happen. */
	if (found_file_len > winfilename_len)
		goto check_failed;

	if (strcmp(winfilename + winfilename_len - found_file_len, fd.cFileName))
		goto check_failed;

check_ok:
	csync_debug(3, "Cygwin/Win32 filename case check ok: %s (%s)\n", winfilename, filename.c_str());
	return 1;

check_failed:
	csync_debug(2, "Cygwin/Win32 filename case check failed: %s (%s)\n", winfilename, filename.c_str());
	return 0;
}

#endif /* __CYGWIN__ */

#define CHECK_NEW_RM 1
#define CHECK_NEW_MOD 1
#define CHECK_MV_RM  1
#define CHECK_RM_MV  0
#define CHECK_HARDLINK 0
#define CHECK_NEW_MV 1

extern int csync_zero_mtime_debug;

const char* csync_mode_op_str(int st_mode, int op) {
	if (op == OP_RM)
		return "RM";
	if (op == OP_MARK)
		return "MARK";
	if (op == OP_MOVE)
		return "MV";
	if (op == OP_HARDLINK)
		return "HARDLINK";
	if (st_mode == 0) {
		csync_warn(1, "WARN: stat failed. op: %d\n", op);
		return "RM?";
	}
	if (S_ISREG(st_mode))
		if (op == OP_NEW)
			return "NEW";
		else
			return "MOD";
	else if (S_ISDIR(st_mode))
		if (op == OP_NEW || op == OP_MKDIR)
			return "MKDIR";
		else
			return "MOD_DIR";
	else if (S_ISCHR(st_mode))
		return "MKCHR";
	else if (S_ISBLK(st_mode))
		return "MKBLK";
	else if (S_ISFIFO(st_mode))
		return "MKFIFO";
	else if (S_ISLNK(st_mode))
		return "LINK";
	else
		csync_warn(1, "WARN: Unknown mode op: %d %d\n", st_mode, op);
	return "???";
}

static int csync_same_file(const char *file1, const char *file2) {
	struct stat st1, st2;
	int rc1 = stat(file1, &st1);
	int rc2 = stat(file2, &st2);
	if (rc1 == 0 && rc2 == 0 && st1.st_ino == st2.st_ino
			&& st1.st_dev == st2.st_dev)
		return 1;
	return 0;
}
static int csync_same_stat_file(const struct stat *st1, const char *file2) {
	struct stat st2;
	int rc2 = stat(file2, &st2);
	if (rc2 == 0 && st1->st_ino == st2.st_ino && st1->st_dev == st2.st_dev)
		return 1;
	return 0;
}

static int csync_same_stat(const struct stat *st1, const struct stat *st2) {
	if (st1->st_ino == st2->st_ino && st1->st_dev == st2->st_dev)
		return 1;
	return 0;
}

static textlist_p check_old_operation(filename_p filename, operation_t operation,
							   int mode, struct stat *st_file, const char *other,
							   const char *old_filename, const char *old_other,
							   operation_t old_operation, const char *old_checktxt,
							   peername_p peername, BUF_P buffer) {
	char *file_new = buffer_strdup(buffer, filename);
	const char *result_other = other;
	char *clean_other = NULL;
	int dirty = 1; // Assume dirty
	textlist_p tl = NULL;
	if (old_operation == OP_HARDLINK && st_file && st_file->st_nlink == 1) {
		operation = OP_MOD;
	}
	csync_info(2, "mark other: %s(%d) Old operation: %s(%d) '%s' '%s'\n",
			csync_mode_op_str(mode, operation), operation,
			csync_mode_op_str(mode, old_operation), old_operation, old_filename,
			old_other);
	if (CHECK_HARDLINK && st_file
			&& csync_same_stat_file(st_file, old_filename)) {
		csync_info(1, "mark operation NEW HARDLINK %s:%s->%s .\n", peername.c_str(),
				filename.c_str(), old_filename);
		operation = OP_HARDLINK;
		result_other = buffer_strdup(buffer, old_filename);
		dirty = 1;
	}
	// NEW/MK A -> RM A => remove from dirty, as it newer happened if it is same filename
	else if (CHECK_NEW_RM && operation == OP_RM
			&& (old_operation == OP_NEW || old_operation == OP_HARDLINK
					|| old_operation == OP_MKDIR)
			&& !strcmp(filename.c_str(), old_filename)) {
		csync_info(1,
				"mark operation %s -> RM %s:%s deleted before syncing. Removing from dirty.\n",
				csync_operation_str(old_operation), peername.c_str(), file_new);
		dirty = 0;
		operation = OP_UNDEF;
	}
	// NEW/MK A -> MOD (still NEW)
	else if (CHECK_NEW_MOD && (operation & (OP_MOD2 | OP_MOD))
			&& (old_operation == OP_NEW || old_operation == OP_MKDIR)) {
		csync_info(1, "mark operation NEW -> MOD => NEW %s:%s (not synced) .\n",
				peername.c_str(), filename.c_str());
		operation = old_operation;
		dirty = 1;
	} else if (CHECK_RM_MV
			&& ((OP_RM == old_operation || OP_MOVE == old_operation
					|| OP_UNDEF == old_operation) && OP_NEW == operation)
			&& strstr(old_checktxt, "type=dir") == 0) {
		// TODO verify logic
		result_other = buffer_strdup(buffer, old_filename);
		csync_info(1, "mark operation RM -> NEW => MOVE %s '%s' '%s'.\n",
				peername.c_str(), filename.c_str(), result_other);
		operation = OP_MOVE;
	} else if (CHECK_MV_RM && OP_MOVE == old_operation && OP_RM == operation) {
		operation = OP_RM;
		file_new = buffer_strdup(buffer, old_other);
		clean_other = buffer_strdup(buffer, filename.c_str());
		csync_info(1,
				"mark operation MV->RM %s '%s' '%s' file: '%s' old_filename: '%s' .\n",
				peername.c_str(), file_new, clean_other, filename.c_str(), old_filename);
	} else if (CHECK_NEW_MV && OP_NEW == old_operation
			&& OP_MOVE == operation) {
		operation = OP_NEW;
		file_new = buffer_strdup(buffer, filename);
		clean_other = buffer_strdup(buffer, old_filename);
		csync_info(1, "mark operation NEW->MV => NEW %s '%s' '%s' '%s'.\n",
				peername.c_str(), filename.c_str(), old_filename, other);
		result_other = NULL;
	}
	textlist_add4(&tl, file_new, clean_other, result_other,
			(dirty ? "YES" : NULL), operation);

	return tl;
}

static void csync_mark_other(db_conn_p db, filename_p file, peername_p thispeer,
							 const std::set<std::string>& peerfilter, operation_t operation_org, const char *checktxt,
							 const char *dev, const char *ino, const char *org_other, int mode,
							 int mtime) {
	BUF_P buffer = buffer_init();
	struct peer *pl = csync_find_peers(file.c_str(), thispeer);
	int pl_idx;
	operation_t operation = operation_org;
	csync_schedule_commands(db, file, thispeer == "");

	if (!pl) {
		csync_info(2, "Not in one of my groups: %s (%s)\n", file.c_str(), thispeer.c_str());
		return;
	}

	struct stat st_file;
	int rc_file = stat(file.c_str(), &st_file);
	const char *other = 0;
	for (pl_idx = 0; pl[pl_idx].peername; pl_idx++) {
		peername_p peername = pl[pl_idx].peername;
		const char *myname = pl[pl_idx].myname;
		operation = operation_org;
		other = org_other;

		if (peerfilter.empty() || peerfilter.find(peername) != peerfilter.end()) {
			csync_info(1, "mark other operation: '%s' '%s:%s' '%s'.\n",
					   csync_mode_op_str(rc_file ? 0 : st_file.st_mode, operation),
					   peername.c_str(), file.c_str(), (other ? other : "-"));
			if (operation == OP_MOVE && other == NULL) {
				csync_info(1, "mark other MV operation missing other %s %s \n",
						peername.c_str(), file.c_str());
				operation = OP_UNDEF;
			}
			short dirty = 1;
			char *clean_other = NULL;
			const char *result_other = other;
			char *file_new = buffer_strdup(buffer, file);
			/* We dont currently have a checktxt when marking files. */
			/* Disable for now: files part of MV gets deleted  if a file is deleted after check and before update in same run,
			 and thus leaking other side */
			if (1 && checktxt) {
				textlist_p tl = db->get_old_operation(db, checktxt, peername,
						file, dev, ino, buffer);
				if (tl) {
					textlist_p t = check_old_operation(file.c_str(), operation, mode,
							(rc_file ? NULL : &st_file), other, tl->value, // old filename
							tl->value2,   // old other
							tl->intvalue, // operation
							tl->value3,   // checktxt
							peername, buffer);
					textlist_free(tl);

					if (t) {
						file_new = buffer_strdup(buffer, t->value);
						clean_other = buffer_strdup(buffer, t->value2);
						result_other = buffer_strdup(buffer, t->value3);
						dirty = (t->value4 != NULL);
						operation = t->intvalue;
						textlist_free(t);
						csync_info(3,
								"Found row: file '%s' clean_other: '%s' result_other: '%s' dirty: %d operation %d \n",
								file_new, clean_other, result_other, dirty,
								operation);
					} else {
						csync_error(0,
								"ERROR: check_old_operation MUST always return row\n");
					}
				}
			}
			db->remove_dirty(db, peername, file_new, 0);

			/* Delete other file dirty status if differs from file_new */
			if (clean_other && strcmp(file_new, clean_other)) {
				db->remove_dirty(db, peername, clean_other, 0);
			}
			if (dirty)
				db->add_dirty(db, file_new, 0, myname, peername,
						csync_operation_str(operation), checktxt, dev, ino,
						result_other, operation, mode, mtime);
		};
	};
	free(pl);
	buffer_destroy(buffer);
}

void csync_mark(db_conn_p db, filename_p file, peername_p thispeer,
				const std::set<std::string>& peerfilter, operation_t operation, const char *checktxt,
				const char *dev, const char *ino, int mode, int mtime) {
	csync_mark_other(db, file, thispeer, peerfilter, operation, checktxt, dev, ino, 0, mode, mtime);
}

/* Return path that doesn't exist */
/* Pre-cond: a non-existing file  */
char* csync_check_path(filename_p filename) {
	struct stat st;
	int missing = 0;
	char *copy = strdup(filename.c_str());
	int index = strlen(copy);
	for (; index > 0; index--) {
		if (copy[index - 1] == '/') {
			copy[index - 1] = 0;
			/* Check for existence */
			if (lstat_strict(copy, &st) == 0) {
				/* check file status */
				if (S_ISDIR(st.st_mode)) {
					if (!missing) {
						free(copy);
						return 0;
					}
					else
						return copy;
				} else {
					/* This shouldn't happen. We have a non-directory */
					csync_error(0, "ERROR: Check for directory failed with non-directory %s: %d\n", copy, st.st_mode);
					return copy;
				}
			} else
				missing = 1;
		}
	}
	/* Weird. We went all to the way to the root */
	return 0;
}

/* return 0 if path does not contain any symlinks */
int csync_check_pure(filename_p filename) {
#ifdef __CYGWIN__
  // For some reason or another does this function __kills__
  // the performance when using large directories with cygwin.
  // And there are no symlinks in windows anyways..
  if (!csync_lowercyg_disable)
    return 0;
#endif
	struct stat sbuf;
	int dir_len = 0;
	int i;
	int same_len;

	/* single entry last query cache
	 * to speed up checks from deep subdirs */
	static struct {
		/* store inclusive trailing slash for prefix match */
		char *path;
		/* strlen(path) */
		int len;
		/* cached return value */
		int has_symlink;
	} cached;

	for (i = 0; filename[i]; i++)
		if (filename[i] == '/')
			dir_len = i + 1;

	if (dir_len <= 1) /* '/' a symlink? hardly. */
		return 0;

	/* identical prefix part */
	for (i = 0; i < dir_len && i < cached.len; i++)
		if (filename[i] != cached.path[i])
			break;

	/* backtrack to slash */
	for (--i; i >= 0 && cached.path[i] != '/'; --i)
		;
	same_len = i + 1;

	csync_info(3, "check_pure: filename: '%s' %u, cached path: '%s' %u, %u.\n",
			filename.c_str(), dir_len, cached.path, cached.len, same_len);
	/* exact match? */
	if (dir_len == same_len && same_len == cached.len)
		return cached.has_symlink;

	{ /* new block for myfilename[] */
		char *myfilename = static_cast<char*>(malloc(dir_len + 1));
		char *to_be_cached;
		int has_symlink = 0;
		memcpy(myfilename, filename.c_str(), dir_len);
		myfilename[dir_len] = '\0';
		to_be_cached = strdup(myfilename);
		i = dir_len - 1;
		while (i) {
			for (; i && myfilename[i] != '/'; --i)
				;

			if (i <= 1)
				break;

			if (i + 1 == same_len) {
				if (same_len == cached.len) {
					/* exact match */
					has_symlink = cached.has_symlink;
					break;
				} else if (!cached.has_symlink)
					/* prefix of something 'pure' */
					break;
			}

			myfilename[i] = 0;
			if (lstat_strict(myfilename, &sbuf) || S_ISLNK(sbuf.st_mode)) {
				has_symlink = 1;
				break;
			}
		}
		if (to_be_cached) { /* strdup can fail. So what. */
			free(cached.path);
			cached.path = to_be_cached;
			cached.len = dir_len;
			cached.has_symlink = has_symlink;
		}
		free(myfilename);
		return has_symlink;
	}
}

int csync_check_del(db_conn_p db, const char *file, int flags) {
	return db->check_delete(db, file, flags & FLAG_RECURSIVE,
			flags & (FLAG_INIT_RUN | FLAG_INIT_RUN_STRAIGHT
					 | FLAG_INIT_RUN_REMOVAL));
}

int csync_check_del(db_conn_p db, filename_p file, int flags) {
	return csync_check_del(db, file.c_str(), flags);
}

static textlist_p csync_check_file_same_dev_inode(db_conn_p db, filename_p filename,
										   const char *checktxt, const char *digest, struct stat *st, peername_p peername) {
	textlist_p tl = 0;
	csync_info(2, "csync_check_file_same_dev_inode %s %s\n", filename.c_str(), db_escape(db, filename.c_str()));
	tl = db->check_file_same_dev_inode(db, filename, checktxt, digest, st, peername);
	return tl;
}

textlist_p csync_check_move(db_conn_p db, peername_p peername,
		filename_p filename, const char *checktxt, const char *digest,
		struct stat *st) {
	textlist_p t;
	textlist_p db_tl = db->check_dirty_file_same_dev_inode(db, peername.c_str(),
			filename.c_str(), checktxt, digest, st);
	struct stat file_stat;
	for (t = db_tl; t != NULL; t = t->next) {
		const char *db_filename = t->value;
		const char *db_checktxt = t->value2;
		int rc = stat(db_filename, &file_stat);
		int i = 0;
		if (rc) {
			csync_info(1, "Other file not found. Posible MOVE operation: %s\n",
					db_filename);
			if (!(i = csync_cmpchecktxt(db_checktxt, checktxt))) {
				csync_info(1, "OPERATION: MOVE %s to %s\n", filename.c_str(),
						db_filename);
				t->intvalue = OP_MOVE;
			}
		}
	}
	return db_tl;
}

textlist_p csync_check_link_move(db_conn_p db, peername_p peername,
		filename_p filename, const char *checktxt, int operation,
		const char *digest, struct stat *st, textlist_loop_t loop) {
	if (loop) {
		csync_info(2, "check_link_move:  unused parameter textlist_loop_t %p\n",
				loop);
	}
	textlist_p t, tl = NULL;
	textlist_p db_tl = db->check_dirty_file_same_dev_inode(db, peername.c_str(),
														   filename.c_str(), checktxt, digest, st);
	struct stat file_stat;
	int count = 0;
	for (t = db_tl; t != NULL; t = t->next) {
		const char *db_filename = t->value;
		const char *db_checktxt = t->value2;
		const char *db_operation = t->value3;
		csync_info(2, "check_link_move:  DB file: %s %s: %d\n", db_filename,
				db_operation, operation);
		int rc = stat(db_filename, &file_stat);
		/* int db_version = */csync_get_checktxt_version(db_checktxt);
		int index = 0;
		if (db_operation && !strcmp(db_operation, "NEW")) {
			csync_info(1, "Unable to MOVE/LINK: both NEW\n");
			continue;
		}
		if (rc) {
			csync_info(1,
					"check_link_move: Other file not found. Possible MOVE operation: %s\n",
					db_filename);
			if (!(index = csync_cmpchecktxt(db_checktxt, checktxt))) {
				csync_info(1, "OPERATION: MOVE %s to %s\n", db_filename,
						filename.c_str());
				textlist_add(&tl, db_filename, OP_MOVE);
			}
		} else { // LINK, not MV
			db_checktxt = csync_genchecktxt_version(&file_stat, db_filename,
					SET_USER | SET_GROUP, db->version);
			int i;
			if (!(i = csync_cmpchecktxt(db_checktxt, checktxt))) {
				csync_info(1,
						"csync_check_link_move: OPERATION MHARDLINK %s to %s\n",
						db_filename, filename.c_str());
				textlist_add(&tl, db_filename, OP_HARDLINK);
			} else { // LINK not verified
				csync_info(1,
						"check_link: other file with same dev/inode, but different checktxt.");
				csync_info(1, "File is different on peer (cktxt char #%d).\n",
						i);
				char *db_checktxt_log = strdup(db_checktxt), *checktxt_log = strdup(checktxt);
				if (csync_zero_mtime_debug) {
					filter_mtime(db_checktxt_log);
				    filter_mtime(checktxt_log);
				}
				//csync_debug(1, "ZERO time %d\n", csync_zero_mtime_debug);

				csync_info(1, ">>> %s: %s\n", db_checktxt_log, db_filename);
				csync_info(1, ">>> %s: %s\n", checktxt_log, filename.c_str());
				if (csync_zero_mtime_debug) {
					free(db_checktxt_log);
					free(checktxt_log);
				}
				if (count > 1) {
					csync_warn(0, "Multiple files with same inode: %s %s",
							filename.c_str(), db_filename);
					csync_warn(0, "Different checktxt %s %s", checktxt,
							db_checktxt);
				}
				count++;
			}
		}
	}
	textlist_free(db_tl);
	return tl;
}

int csync_check_dir(db_conn_p db, const char *directory, int flags) {
	struct dirent **namelist;
	const struct csync_group *g = NULL;
	int dirdump_this = flags & FLAG_DIRDUMP;
	int count_dirty = 0;
	csync_info(2, "Checking %s%s* ..\n", directory,
			!strcmp(directory, "/") ? "" : "/");
	int n = scandir(directory, &namelist, 0, alphasort);
	if (n < 0) {
		csync_error(0, "%s in scandir: %s (%s)\n", strerror(errno), directory,
				directory);
		csync_error_count++;
	} else {
		while (n--) {
#ifdef __CYGWIN__
			on_cygwin_lowercase(namelist[n]->d_name);
#endif
			if (strcmp(namelist[n]->d_name, ".")
					&& strcmp(namelist[n]->d_name, "..")) {
				char *fn = static_cast<char*>(malloc(strlen(directory) + strlen(namelist[n]->d_name) + 2));
				sprintf(fn, "%s/%s", !strcmp(directory, "/") ? "" : directory,
						namelist[n]->d_name);
				if (csync_check_mod(db, fn, flags, &count_dirty, &g))
					dirdump_this = FLAG_DIRDUMP;
				free(fn);
			}
			free(namelist[n]);
		}
		free(namelist);
	}
	if (dirdump_this && csync_dump_dir_fd >= 0) {
		int written = 0, len = strlen(directory) + 1;
		while (written < len) {
			int rc = write(csync_dump_dir_fd, directory + written,
					len - written);
			if (rc <= 0)
				csync_fatal("Error while writing to dump_dir_fd %d: %s\n",
						csync_dump_dir_fd, strerror(errno));
			written += rc;
		}
	}
	return count_dirty;
}

int compare_dev_inode(struct stat *file_stat, const char *dev, const char *ino,
		struct stat *old_stat) {
	if (!dev)
		return 4;
	if (!ino)
		return 8;

	dev_t dev_no;
	ino64_t ino_no;
	sscanf(dev, DEV_FORMAT, &dev_no);
	sscanf(ino, INO_FORMAT, &ino_no);

	if (old_stat) {
		old_stat->st_dev = dev_no;
		old_stat->st_ino = ino_no;
	}
	int rc = 0;
	if (file_stat->st_dev != dev_no) {
		rc |= 1;
	}
	if (file_stat->st_ino != ino_no) {
		rc |= 2;
	}
	return rc;
}

int csync_calc_digest(const char *file, BUF_P buffer, char **digest) {
	int size = 2 * DIGEST_MAX_SIZE + 1;
	*digest = buffer_malloc(buffer, size);
	int rc = dsync_digest_path_hex(file, "sha1", *digest, size);
	if (rc) {
		csync_error(0, "ERROR: generating digest: %s %d", *digest, rc);
		// TODO ???
	}
	return rc;
}
int csync_calc_digest(filename_p file, BUF_P buffer, char **digest) {
	return csync_calc_digest(file.c_str(), buffer, digest);
}

static int csync_check_file_mod(db_conn_p db, filename_p filename, struct stat *file_stat, int flags) {
	BUF_P buffer = buffer_init();
	long count = 0;
	int init_run = flags & FLAG_INIT_RUN;
	char *checktxt = buffer_strdup(buffer,
			csync_genchecktxt_version(file_stat, filename.c_str(), SET_USER | SET_GROUP,
					db->version));
	// Assume that this isn't a upgrade and thus same version
	const char *encoded = db_escape(db, filename.c_str());
	operation_t operation = 0;
	char *other = 0;
	char *digest = NULL;
	dev_t old_no;
	time_t lock_time = csync_redis_get_custom(filename.c_str(), "CLOSE_WRITE,CLOSE");
	if (lock_time > 0) {
		csync_info(1, "Skipping %s. Locked by daemon at %d\n", filename.c_str(), lock_time);
		// Dirty rows
		return 0;
	}
	int db_flags = db->check_file(db, filename.c_str(), encoded, &other, checktxt,
			file_stat, buffer, &operation, &digest, flags, &old_no);
	int calc_digest = db_flags & CALC_DIGEST;
	int is_dirty = db_flags & IS_DIRTY;
	int is_upgrade = db_flags & IS_UPGRADE;
	int dev_change = db_flags & DEV_CHANGE;
	
	csync_info(3, "check_file: calc_digest: %d dirty: %d is_upgrade %d dev_change: %d\n",
			   calc_digest, is_dirty, is_upgrade, dev_change);
	if (calc_digest) {
		csync_calc_digest(filename.c_str(), buffer, &digest);
	}
	if (csync_compare_mode) {
		printf("%40s %s\n", digest ? digest : checktxt, filename.c_str());
	}
	if (!(is_upgrade || is_dirty) && dev_change) {
		csync_info(2, "Fixing dev no for %s\n", encoded);
		db->update_dev_no(db, encoded, S_ISDIR(file_stat->st_mode), old_no, file_stat->st_dev);
	}
	if ((is_upgrade || is_dirty) && !csync_compare_mode) {
		if ((operation == OP_NEW && digest) || operation == OP_MKDIR) {
			textlist_p tl = csync_check_file_same_dev_inode(db, filename.c_str(), checktxt, digest, file_stat, NULL);
			textlist_p ptr = tl;
			while (ptr != NULL) {
				csync_info(2, "check same file (%d) %s -> %s \n", ptr->intvalue,
						ptr->value, filename.c_str());
				if (ptr->intvalue == OP_RM) {
					operation = OP_MOVE;
					db->delete_file(db, ptr->value, 0);
					other = buffer_strdup(buffer, ptr->value);
					csync_info(1, "Found MOVE %s -> %s \n", ptr->value, filename.c_str());
					break;
				} else if (ptr->intvalue == OP_HARDLINK) {
					// BROKEN LOGIC. There can be more that one hardlink. Only finds last
					operation = OP_HARDLINK;
					other = buffer_strdup(buffer, ptr->value);
					csync_info(1, "Found HARDLINK %s -> %s \n", ptr->value, filename.c_str());
				}
				ptr = ptr->next;
			}
			textlist_free(tl);
		}
		int has_links = (file_stat->st_nlink > 1 && S_ISREG(file_stat->st_mode));
		if (has_links) {
			// TODO do something
		} else {
		}

		const char *checktxt_encoded = db_escape(db, checktxt);
		// Insert into dirty first due to new clean up method. With this there could be a race condition
		if (!init_run && is_dirty) {
			//      csync_debug(0, "check_dirty (mod): before mark (all) \n");
			char dev_str[100];
			char ino_str[100];
			sprintf(dev_str, DEV_FORMAT, file_stat->st_dev);
			sprintf(ino_str, INO_FORMAT, file_stat->st_ino);
			csync_mark_other(db, filename, 0, std::set<std::string>(), operation, checktxt_encoded,
					dev_str, ino_str, other, file_stat->st_mode,
					file_stat->st_mtime);
		}
		// operation does not reflect result/change in mark_other (which marks dirty)
		// But only whether it was found in File. This is a race-condition
		// TODO clean no need for if else when using insert_update...
		csync_debug(3, "INSERT/UPDATE: %s %s\n", encoded, digest);
		if (is_upgrade || operation & OP_MOD || operation & OP_MOD2) {
			count = db->update_file(db, encoded, checktxt_encoded, file_stat,
					digest);
		} else {
			count = db->insert_update_file(db, encoded, checktxt_encoded,
					file_stat, digest);
		}
		csync_info(2, "Inserted/updated %s rows matched: %ld\n", filename.c_str(),
				count);
	}
	buffer_destroy(buffer);
	return count;
}

int csync_check_mod(db_conn_p db, filename_p filename, int flags, int *count,
		const struct csync_group **g) {
	int check_type = csync_match_file(filename.c_str(), 0, g);
	// Combine with flags on group like IGN_MTIME
	if (g && *g) {
		flags |= (*g)->flags;
	};
	int dirdump_this = 0, dirdump_parent = MATCH_NONE;
	struct stat st;

	if (check_type == MATCH_NONE) {
		csync_debug(2, "No match. Don't check at all: %s\n", filename.c_str());
		return MATCH_NONE;
	}

	if (lstat_strict(filename, &st) != 0) {
		if (flags & FLAG_IGN_NOENT)
			return MATCH_NONE;
		csync_debug(2, "check_mod: No such file '%s' .\n", filename.c_str(), g);
		return MATCH_NONE;
	}

	switch (check_type) {
	case MATCH_NEXT:
		*count += csync_check_file_mod(db, filename.c_str(), &st, flags);
		dirdump_this = FLAG_DIRDUMP;
		dirdump_parent = FLAG_DIRDUMP;
		 __attribute__ ((fallthrough));
	case MATCH_INTO:
		if (!(flags & FLAG_RECURSIVE))
			break;
		if (!S_ISDIR(st.st_mode))
			break;
		csync_debug(3, "csync_check_dir: %s %d \n", filename.c_str(),
				flags | dirdump_this);
		*count += csync_check_dir(db, filename.c_str(), flags | dirdump_this);
		break;
	default:
		csync_debug(2, "Don't check at all: %s\n", filename.c_str());
		break;
	}
	return dirdump_parent;
}

/*
 check for dirty files, updates the DB and returns number of dirty found in this check (or total?) NOT IMPLEMENTED
 */
static int csync_check_recursive(db_conn_p db, filename_p filename, int flags, const struct csync_group **g) {
#ifdef __CYGWIN__
    if (!strcmp(filename, "/")) {
	filename = "/cygdrive";
    }
#endif
	csync_info(1, "Running%s check for %s ...\n",
			flags & FLAG_RECURSIVE ? " recursive" : "", filename.c_str());

	// TODO How about swapping deletes and updates?
	int count_dirty = 0;
	csync_info(1, "Checking%s for modified files %s \n",
			(flags & FLAG_RECURSIVE ? " recursive" : ""), filename.c_str());
	csync_check_mod(db, filename, flags, &count_dirty, g);

	if (!csync_compare_mode)
		count_dirty += csync_check_del(db, filename, flags);

	return count_dirty;
}

/*
 void csync_combined_operation(peername_p peername, const char *dev, const char *inode, const char *checktxt) {

 }
 */

void csync_check(db_conn_p db, filename_p filename, int flags) {
	const struct csync_group *g = NULL;
	csync_check_recursive(db, filename, flags, &g);
	/*    
	 textlist_p dub_entries = csync_check_all_same_dev_inode(db);
	 textlist_p ptr = dub_entries;
	 while (ptr != NULL) {
	 csync_combined_operation(ptr->value, ptr->value2, ptr->value3, ptr->value4);
	 ptr = ptr->next;
	 }
	 textlist_free(dub_entries);
	 */
}

int csync_check_single(db_conn_p db, filename_p filename, int flags,
		const struct csync_group **g) {
	return csync_check_recursive(db, filename, flags & ~FLAG_RECURSIVE, g);
}

