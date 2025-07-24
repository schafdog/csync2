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
#include <sys/stat.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <string>
#include <stdlib.h>
#include <unistd.h>
#include <netdb.h>
#include <fnmatch.h>
#include <fcntl.h>
#include <stdarg.h>
#include <signal.h>
#include <time.h>
#include <limits.h>
#include <list>
#include <algorithm>

#include "update.hpp"
#include "rsync.hpp"
#include "check.hpp"
#include "conn.hpp"
#include "utils.hpp"
#include "checktxt.hpp"
#include "urlencode.hpp"
#include "uidgid.hpp"
#include "redis.hpp"

// C++20 std::format support
#if __cplusplus >= 202002L && __has_include(<format>)
    #include <format>
#endif

#define MAX_UID_SIZE  100
#define MAX_GID_SIZE  100

#define DIFF_FLUSH 4
#define DIFF_FILE 8
#define DIFF_META 16
#define DIFF_BOTH (DIFF_FILE | DIFF_META)

#define OK_MISSING 32
#define IDENTICAL 4
#define LINK_LATER 3
#define OK_DRY 2
#define OK_SKIP 1
#define SKIP 1
#define OK     0
#define ERROR -1
#define CONN_CLOSE  -3
#define NOT_REG -4

#define SETOWN  -6
#define SETMOD  -7
#define SETTIME -8
// #define CLEAR_DIRTY
#define ERROR_DIRTY        -11
#define ERROR_NOT_FOUND    -12
#define ERROR_PATH_MISSING -13
#define ERROR_HARDLINK     -14
#define ERROR_LOCKED       -15
#define ERROR_CREATE       -16
#define ERROR_OTHER        -20

using namespace std;

static int read_conn_status_raw(int fd, filename_p filename, peername_p peername, char *line, int maxlength) {
	if (!conn_gets(fd, line, maxlength)) {
		strcpy(line, "ERROR: Read conn status: Connection closed.\n");
		csync_error(0, "{}", line);
		return CONN_CLOSE;
	}
	if (!strncmp(line, "OK (not_found", 12))
		return OK_MISSING;
	if (!strncmp(line, "OK (", 4))
		return OK;
	if (!strncmp(line, "IDENT (", 7))
		return IDENTICAL;
	if (!strncmp(line, ERROR_LOCKED_STR, ERROR_LOCKED_STR_LEN))
		return ERROR_LOCKED;
	if (!strncmp(line, ERROR_NOT_FOUND_STR, ERROR_NOT_FOUND_STR_LEN))
		return ERROR_NOT_FOUND;
	if (!strncmp(line, ERROR_CREATE_STR, ERROR_CREATE_STR_LEN))
		return ERROR_CREATE;
	if (!strncmp(line, PATH_NOT_FOUND, PATH_NOT_FOUND_LEN)) {
		// Return the missing path
		for (int index = 0 ; index < static_cast<int>(strlen(line+PATH_NOT_FOUND_LEN)+1) ; index++)
			line[index] = line[index + PATH_NOT_FOUND_LEN];
		return ERROR_PATH_MISSING;
	}

	if (filename != "")
		csync_error(0, "While syncing file: {}\n", filename);

	csync_error_count++;
	int rc = !strncmp(line, ERROR_DIRTY_STR, ERROR_DIRTY_LEN) ? ERROR_DIRTY : ERROR_OTHER;
	csync_warn(0, "ERROR from {}: {} rc: {} \n", peername, line, rc);
	return rc;
}

static int read_conn_status(int fd, filename_p file, peername_p host) {
	int maxlength = 4096;
	char line[4096];
	int rc = read_conn_status_raw(fd, file, host, line, maxlength);
	csync_debug(3, "read_conn_status '{}' {}\n", line, rc);
	return rc;
}

static int read_conn_status_allow_missing(int fd, filename_p file, peername_p host) {
	int status = read_conn_status(fd, file, host);
	if (status == ERROR_PATH_MISSING)
		return OK;
	return status;
}

static int connect_to_host(db_conn_p db, peername_p myhostname, peername_p std_peername, int ip_version) {
	int use_ssl = 1;
	struct csync_nossl *t;
	const char *peername = std_peername.c_str();

	for (t = csync_nossl; t; t = t->next) {
		if (!fnmatch(t->pattern_from, myhostname.c_str(), 0) && !fnmatch(t->pattern_to, peername, 0)) {
			use_ssl = 0;
			break;
		}
	}

	csync_info(1, "Connecting to host {} ({}) ...\n", peername, use_ssl ? "SSL" : "PLAIN");
	int conn = conn_open(myhostname, peername, ip_version);
	if (conn < 0)
		return conn;

	int rc = 0;
	if (use_ssl) {
#if HAVE_LIBGNUTLS
		conn_printf(conn, "SSL\n");
		if ((rc = read_conn_status(conn, "<SSL>", peername)) < OK) {
			csync_error(1, "SSL command failed.\n");
			conn_close(conn);
			return rc;
		}
		conn_activate_ssl(0, conn, conn);
		conn_check_peer_cert(db->conn_, peername, 1);
#else
      csync_error(0, "ERROR: Config request SSL but this csync2 is built without SSL support.\n");
      csync_error_count++;
      return -1;
#endif
	}
	conn_printf(conn, "CONFIG %s\n", url_encode(g_cfgname));
	if ((rc = read_conn_status(conn, "<CONFIG>", peername)) != OK) {
		csync_error(0, "Config command failed.\n");
		conn_close(conn);
		return rc;
	}

	conn_printf(conn, "DEBUG %d\n", csync_level_debug);
	if ((rc = read_conn_status(conn, "<DEBUG>", peername)) != OK) {
		csync_error(0, "DEBUG command failed.\n");
		conn_close(conn);
		return rc;
	}

	if (g_active_grouplist) {
		conn_printf(conn, "GROUP %s\n", url_encode(g_active_grouplist));
		if ((rc = read_conn_status(conn, "<GROUP>", peername)) != OK) {
			csync_error(0, "GROUP command failed.\n");
			conn_close(conn);
			return rc;
		}
	}
	return conn;
}

int get_auto_method(peername_p peername, filename_p filename) {
	const struct csync_group *g = 0;
	const struct csync_group_host *h;

	while ((g = csync_find_next(g, filename.c_str(), 0))) {
		for (h = g->host; h; h = h->next) {
			if (peername == h->hostname) {
				if (g->auto_method == CSYNC_AUTO_METHOD_LEFT && h->on_left_side)
					return CSYNC_AUTO_METHOD_LEFT_RIGHT_LOST;
				if (g->auto_method == CSYNC_AUTO_METHOD_RIGHT && !h->on_left_side)
					return CSYNC_AUTO_METHOD_LEFT_RIGHT_LOST;
				return g->auto_method;
			}
		}
	}
	return CSYNC_AUTO_METHOD_NONE;
}

static int get_master_slave_status(peername_p peername, filename_p filename) {
	const struct csync_group *g = 0;
	const struct csync_group_host *h;

	while ((g = csync_find_next(g, filename, 0))) {
		if (g->local_slave)
			continue;
		for (h = g->host; h; h = h->next) {
			if (h->slave && peername == h->hostname)
				return 1;
		}
	}

	return 0;
}

static int csync_update_file_mv(int conn, peername_p peername, const char *key, filename_p filename, const char *new_name) {
	conn_printf(conn, "MV %s %s %s\n", url_encode(key), url_encode(prefixencode(filename)),
			url_encode(prefixencode(new_name)));
	return read_conn_status(conn, filename, peername);
}

static void csync_clear_dirty(db_conn_p db, peername_p peername, filename_p filename, int auto_resolve_run) {
	csync_info(2, "Clear dirty {}:{} ({})\n", peername, filename, auto_resolve_run);
	db->remove_dirty(peername, filename, 0);
	if (auto_resolve_run)
		csync_error_count--;
}

static int auto_resolve_error(const char *cmd, peername_p peername, filename_p filename, int rc) {
	csync_warn(0, "Auto-resolving failed. Failed to do {} on {}:{}. RC: {}\n", cmd, peername, filename, rc);
	return rc;
}

const char *autoresolve_str[] =
		{ "NONE", "FIRST", "YOUNGER", "OLDER", "BIGGER", "SMALLER", "LEFT", "RIGHT", "LEFT_RIGHT_LOST" };

static int csync_check_auto_resolve(int conn, peername_p peername, const char *key_enc, filename_p filename,
		filename_p filename_enc, int last_conn_status, int auto_resolve_run, int is_delete) {

	if (auto_resolve_run || last_conn_status == OK_DRY) {
		return 0;
	}
	if (get_master_slave_status(peername, filename)) {
		csync_info(0, "Auto-resolving conflict: Won 'master/slave' test.\n");
		return 1;
	}

	int auto_method = get_auto_method(peername, filename);
	if (auto_method == CSYNC_AUTO_METHOD_NONE)
		return 0;
	csync_info(2, "Auto resolve method {} {} for {}:{} ", autoresolve_str[auto_method], auto_method, peername,
			   filename.c_str());
	switch (auto_method) {
	case CSYNC_AUTO_METHOD_FIRST:
		auto_resolve_run = 1;
		csync_info(1, "Auto-resolving conflict: Won 'first' test.\n");
		break;

	case CSYNC_AUTO_METHOD_LEFT:
	case CSYNC_AUTO_METHOD_RIGHT:
		auto_resolve_run = 1;
		csync_info(1, "Auto-resolving conflict: Won 'left/right' test.\n");
		break;

	case CSYNC_AUTO_METHOD_LEFT_RIGHT_LOST:
		csync_info(1, "Do not auto-resolve conflict: Lost 'left/right' test.\n");
		break;

	case CSYNC_AUTO_METHOD_YOUNGER:
	case CSYNC_AUTO_METHOD_OLDER:
	case CSYNC_AUTO_METHOD_BIGGER:
	case CSYNC_AUTO_METHOD_SMALLER: {
		if (is_delete) {
			csync_info(1, "Do not auto-resolve conflict by compare: This is a removal.\n");
			break;
		}

		char buffer[1024];
		const char *type, *cmd;
		long remotedata, localdata;
		struct stat sbuf;

		if (auto_method == CSYNC_AUTO_METHOD_YOUNGER || auto_method == CSYNC_AUTO_METHOD_OLDER) {
			type = "younger/older";
			cmd = "GETTM";
		} else {
			type = "bigger/smaller";
			cmd = "GETSZ";
		}

		conn_printf(conn, "%s %s %s\n", cmd, key_enc, filename_enc.c_str());
		int rc = read_conn_status(conn, filename, peername);
		if (rc < OK) {
			if (rc == CONN_CLOSE)
				return rc;
			return auto_resolve_error(cmd, peername, filename, rc);
		}

		if (!conn_gets(conn, buffer, 4096))
			return auto_resolve_error(cmd, peername, filename, rc);
		remotedata = atol(buffer);

		if (remotedata == -1)
			auto_resolve_run = 1;
		{
			if (lstat_strict(filename, &sbuf))
				return auto_resolve_error(cmd, peername, filename, rc);

			if (auto_method == CSYNC_AUTO_METHOD_YOUNGER || auto_method == CSYNC_AUTO_METHOD_OLDER)
				localdata = sbuf.st_mtime;
			else
				localdata = sbuf.st_size;
		}
		if (auto_resolve_run
				|| ((localdata > remotedata)
						== (auto_method == CSYNC_AUTO_METHOD_YOUNGER || auto_method == CSYNC_AUTO_METHOD_BIGGER))) {
			auto_resolve_run = 1;
			csync_info(1, "Auto-resolving conflict: Won '{}' test.\n", type);
		} else
			csync_info(1, "Do not auto-resolve conflict: Lost '{}' test.\n", type);
		break;
	}
	}
	if (auto_resolve_run)
		return 1;
	csync_warn(1, "File stays in dirty state after autoresolve. Try again later...\n");
	return 0;
}

/* PRE: all values must have been encoded
 Only send file stat if present
 */
static void cmd_printf(int conn, const char *cmd, const char *key, filename_p filename, const char *secondname,
		const struct stat *st, const char *uid, const char *gid, const char *digest) {
	if (digest != NULL && !strcmp(digest, "")) {
		digest = NULL;
	}

	if (st) {
		conn_printf(conn, "%s %s %s %s %d %d %s %s %d %s %zu %zu\n", cmd, key, filename.c_str(), secondname, st->st_uid,
					st->st_gid, uid, gid, st->st_mode, digest ? digest : "-",
					static_cast<long long>(st->st_size),
					static_cast<long long>(st->st_mtime));

	} else {
		conn_printf(conn, "%s %s %s %s\n", cmd, key, filename.c_str(), secondname);
	}
}


static int csync_update_file_setown(int conn, peername_p peername, const char *key_enc, filename_p filename,
		filename_p filename_enc, const struct stat *st, const char *uid, const char *gid) {
	// Optimize this. The daemon could have done this in the command.
	cmd_printf(conn, "SETOWN", key_enc, filename_enc, "user/group", st, uid, gid, NULL);
	return read_conn_status(conn, filename, peername);
}

static int csync_update_file_setmod(int conn, peername_p peername, const char *key_enc, filename_p filename,
		filename_p filename_enc, const struct stat *st) {
	conn_printf(conn, "SETMOD %s %s %d\n", key_enc, filename_enc.c_str(), st->st_mode);
	return read_conn_status(conn, filename, peername);
}

int csync_auto_resolve_time_size(int auto_method, time_t time_l, time_t time_p, long long size_l, long long size_p) {
	int auto_resolved = 0;
	if (time_l < time_p && auto_method == CSYNC_AUTO_METHOD_OLDER)
		auto_resolved = 1;
	else if (time_l > time_p && auto_method == CSYNC_AUTO_METHOD_YOUNGER)
		auto_resolved = 1;
	else if (size_l < size_p && auto_method == CSYNC_AUTO_METHOD_SMALLER)
		auto_resolved = 1;
	else if (size_l > size_p && auto_method == CSYNC_AUTO_METHOD_BIGGER)
		auto_resolved = 1;
	return auto_resolved;
}

static int check_auto_resolve_peer(peername_p peername, filename_p filename, const char *chk_local, const char *chk_peer) {
	int auto_resolved = 0;
	if (get_master_slave_status(peername, filename)) {
		csync_info(0, "Auto-resolving conflict: Won 'master/slave' test.\n");
		return 1;
	}
	int auto_method = get_auto_method(peername, filename);
	if (auto_method == CSYNC_AUTO_METHOD_NONE) // Do not log
		return 0;
	time_t time_l = csync_checktxt_get_time(chk_local);
	time_t time_p = csync_checktxt_get_time(chk_peer);
	long long size_l = csync_checktxt_get_size(chk_local);
	long long size_p = csync_checktxt_get_size(chk_peer);

	csync_info(1, "Auto resolve method {} {} for {}:{} \n", autoresolve_str[auto_method], auto_method,
			   peername.c_str(), filename.c_str());
	switch (auto_method) {
	case CSYNC_AUTO_METHOD_FIRST:
		auto_resolved = 1;
		break;

	case CSYNC_AUTO_METHOD_LEFT:
	case CSYNC_AUTO_METHOD_RIGHT:
		auto_resolved = 1;
		break;

	case CSYNC_AUTO_METHOD_LEFT_RIGHT_LOST:
		auto_resolved = 0;
		break;

	case CSYNC_AUTO_METHOD_YOUNGER:
	case CSYNC_AUTO_METHOD_OLDER:
	case CSYNC_AUTO_METHOD_BIGGER:
	case CSYNC_AUTO_METHOD_SMALLER:
		if (!strcmp(chk_local, "---")) {
			csync_info(1, "Do not auto-resolve conflict by compare: This is a removal.\n");
			return 0;
		}

		auto_resolved = csync_auto_resolve_time_size(auto_method, time_l, time_p, size_l, size_p);
		break;
	}
	csync_info(1, "File {}:{}: {} autoresolve {} ({})\n", peername, filename, auto_resolved ? "Won" : "Lost",
			autoresolve_str[auto_method], auto_method);
	return auto_resolved;
}

static int csync_flush(int conn, const char *key_enc, peername_p peername, filename_p filename_enc) {
	conn_printf(conn, "FLUSH %s %s\n", key_enc, filename_enc.c_str());
	int rc = read_conn_status(conn, filename_enc, peername);
	return rc;
}

extern int csync_zero_mtime_debug;

static int csync_update_file_del(int conn, db_conn_p db, peername_p peername, filename_p filename, int force, int flags) {
	int auto_resolve_run = 0;
	const char *key = csync_key(peername, filename);
	int dry_run = flags & FLAG_DRY_RUN;
	if (!key) {
		csync_info(2, "Skipping deletion/move {} on {} - not in my groups.\n", filename, peername);
		return SKIP;
	}
	const char *key_enc = url_encode(key);
	const char *filename_enc = url_encode(prefixencode(filename));

	// Run max twice.
	while (1) {
		csync_info(1, "Deleting {}:{}{}\n", peername, filename, auto_resolve_run ? " (autoresolve)" : "");
		if (force || auto_resolve_run) {
			if (dry_run) {
				csync_info(1, "!D: {:15} {}\n", peername, filename);
				return OK;
			}
			conn_printf(conn, "FLUSH %s %s\n", key_enc, filename_enc);
			if (read_conn_status_allow_missing(conn, filename, peername))
				return ERROR;
		}
		int found_diff = 0;
		const char *chk_local = "---";
		char chk_peer[4096];
		int status;
		conn_printf(conn, "STAT %s %s %s\n", key_enc, filename_enc, "user/group");

		if ((status = read_conn_status(conn, filename, peername))) {
			if (status == ERROR_PATH_MISSING || status == OK_MISSING || status == ERROR_NOT_FOUND) {
				csync_info(1, "{}:{} is already up to date on peer.\n", peername, filename);
				csync_clear_dirty(db, peername, filename, auto_resolve_run);
				return IDENTICAL;
			} else
				return status;
		}
		int buf_size = 4096;
		char *buffer = static_cast<char*>(malloc(buf_size));
		char *digest_peer = static_cast<char*>(malloc(buf_size));
		int flush = 0;
		if (!conn_gets_newline(conn, buffer, buf_size, 1)) {
			free(buffer);
			free(digest_peer);
			return ERROR;
		}
		int n = sscanf(buffer, "%s %s", chk_peer, digest_peer);
		const char *chk_peer_decoded = url_decode(chk_peer);
		if (n == 2) {
			csync_info(2, "Got digest from remote: {}\n", digest_peer);
		}
		int differs = 0;
		csync_info(2, "delete flags: {}\n", flags);
		if (flags & FLAG_IGN_MTIME) {
			csync_info(2, "Compare components (ignore mtime)\n");
			differs = csync_cmpchecktxt_component(chk_peer_decoded, chk_local, flags);
		} else {
			differs = csync_cmpchecktxt(chk_peer_decoded, chk_local);
		}
		if (differs) {
			char *peer_log = strdup(chk_peer_decoded), *local_log = strdup(chk_local);
			if (csync_zero_mtime_debug) {
				filter_mtime(peer_log);
				filter_mtime(local_log);
			}
			//csync_info(1, "ZERO time %d\n", csync_zero_mtime_debug);
			csync_info(3, "{} is different on peer (cktxt char #{}).\n", filename, differs);
			csync_info(3, ">>> PEER:  {}\n>>> LOCAL: {}\n", peer_log, local_log);
			free(peer_log);
			free(local_log);

			found_diff = 1;
			// We should be able to figure auto resolve from checktxt
			flush = check_auto_resolve_peer(peername, filename, chk_local, chk_peer_decoded);
			if (flush) {
				csync_info(1, "Sendind FLUSH {}:{} (won auto resolved)", peername, filename);
				csync_flush(conn, key_enc, peername, filename_enc);
			}
		}
		//
		if (!found_diff) {
			csync_info(1, "{}:{} is already up to date on peer. \n", peername, filename);
			csync_clear_dirty(db, peername, filename, auto_resolve_run);
			free(buffer);
			free(digest_peer);
			return IDENTICAL;
		}
		if (dry_run) {
			csync_info(1, "?D: {:15} {}\n", peername, filename);
			free(buffer);
			free(digest_peer);
			return OK_DRY;
		}
		conn_printf(conn, "DEL %s %s \n", key_enc, filename_enc);
		int rc = read_conn_status(conn, filename, peername);
		if (rc == CONN_CLOSE) {
			csync_error(1, "Peer closed connection on DEL {}:{}\n", peername, filename);
			free(buffer);
			free(digest_peer);
			return rc;
		}
		if (rc == ERROR_DIRTY)
			auto_resolve_run = csync_check_auto_resolve(conn, peername, key_enc, filename, filename_enc, rc,
					auto_resolve_run, 1);
		if (!auto_resolve_run) {
			if (rc == OK || rc == IDENTICAL)
				csync_clear_dirty(db, peername, filename, auto_resolve_run);
			free(buffer);
			free(digest_peer);
			return rc;
		}
		csync_info(1, "Attempting autoresolve on {}:{}", peername, filename);
	}
}

struct update_request {
	int cmd;
	peername_p peername;
	const char *key;
	filename_p filename;
	const char *encoded_filename;
	const char *secondaryfilename;
	struct stat *stat;
	const char *uid;
	const char *gid;
};

/* Assume CREATE/POST command has been sent */
static int csync_send_reg_file(int conn, peername_p peername, filename_p filename, int *last_conn_status) {
	if ((*last_conn_status = read_conn_status(conn, filename, peername))) {
		return *last_conn_status;
	}
	FILE *file = fopen(filename.c_str(), "rb");
	if (file == 0) {
		csync_error(0, "Failed to open file {}: {}", filename, errno);
		return -1;
	}
	struct stat st;
	int rc  = lstat_strict(filename, &st);
	csync_debug(0, "CREATE {} {}\n", filename, st.st_size);
	rc = csync_send_file(conn, file);
	if (rc < -1) {
		csync_error(0, "Failed to send file {}: {}", filename, errno);
	}
	return read_conn_status(conn, filename, peername);
}

/* Assume PATCH command has been sent */
static int csync_update_reg_file(int conn, peername_p peername, filename_p filename, int *last_conn_status) {
	if ((*last_conn_status = read_conn_status(conn, filename, peername))) {
		return *last_conn_status;
	}

	if (csync_rs_delta(conn, filename)) {
		int rc = read_conn_status(conn, filename, peername);
		return rc;
	}
	return read_conn_status(conn, filename, peername);
}


static int csync_update_file_dir(int conn, peername_p peername, filename_p filename, int *last_conn_status) {
	*last_conn_status = read_conn_status(conn, filename, peername);
	return *last_conn_status;
}

static int csync_create_directory(int conn, const char *key_enc, peername_p peername, filename_p filename,
		filename_p filename_enc, const struct stat *st, const char *uid, const char *gid, int *last_conn_status) {
	cmd_printf(conn, "MKDIR", key_enc, filename_enc, "-", st, uid, gid, NULL);
	int rc = csync_update_file_dir(conn, peername, filename, last_conn_status);
	return rc;
}

static int csync_update_directory(int conn, peername_p myname, peername_p peername, const char *dirname, int force,
		int dry_run);

static int csync_fix_path(int conn, peername_p myname, peername_p peername, filename_p filename, char *buffer) {
	int rc;
	char *local_file = strdup(filename.c_str());
	int org_len = strlen(filename.c_str());
	csync_info(1, "PATH MISSING: '{}'\n", buffer);
	const char *path_not_found = prefixsubst(url_decode(buffer));
	csync_info(1, "PATH MISSING (decoded): '{}'\n", path_not_found);
	int path_len = strlen(path_not_found);
	while (1) {
		char ch = local_file[path_len];
		if (ch == '/') {
			local_file[path_len] = 0;
			rc = csync_update_directory(conn, myname, peername, local_file, /*force */ 1, /* dryrun */ 0);
			local_file[path_len] = ch;
		} else {
			csync_fatal("Error in ERROR_PATH_MISSING when fixing {} of {}: Not a slash at {}\n",
						local_file, path_not_found, path_len);
			free(local_file);
			return ERROR_PATH_MISSING;
		}
		csync_info(1, "UPDATE_DIRECTORY: {}\n", rc);
		if (rc != OK && rc != IDENTICAL)
			break;
		while (++path_len < org_len && local_file[path_len] != '/')
			;
		if (path_len == org_len) {
			csync_info(2, "Fixed missing path for file {}\n", filename);
			break;
		}
	}
	free(local_file);
	if (rc != OK)
		return ERROR_PATH_MISSING;
	if (rc != OK) {
		csync_error(1, "Failed to recover from ERROR_PATH_MISSING for {}: {}", filename, rc);
	}
	return rc;
}

/* PRE: command SIG have been sent
 st can be null */
static int csync_update_file_sig(int conn, peername_p myname, peername_p peername, filename_p filename, const struct stat *st,
		const char *chk_local, const char *digest, int log_level, int *flags) {
	int i = 0;
	char chk_peer[4096] = "---";
	char buffer[4096];
	// unused
	(void) digest;
	int rc = read_conn_status_raw(conn, filename, peername, buffer, 4096);
	csync_info(2, "update_file_sig {} RC {}\n", filename, rc);
	if (rc == ERROR_PATH_MISSING) {
		csync_fix_path(conn, myname, peername, filename, buffer);
	}
	if (rc < 0 || rc == OK_MISSING)
		return rc;

	if (rc == OK_MISSING || !conn_gets_newline(conn, chk_peer, 4096, 1))
		return ERROR;

	int peer_version = csync_get_checktxt_version(chk_peer);

	int flag = IGNORE_LINK;
	const char *chk_peer_decoded = url_decode(chk_peer);
	// TODO generate chk text that matches remote usage of uid/user and gid/gid
	const char *has_user = strstr(chk_peer_decoded, ":user=");
	flag |= (has_user != NULL ? SET_USER : 0);
	const char *has_group = strstr(chk_peer_decoded, ":group=");
	flag |= (has_group != NULL ? SET_GROUP : 0);
	/*
	 if (st && !S_ISDIR(st->st_mode))
	 flag |= IGNORE_MTIME;
	 */
	csync_debug(3, "Flags for gencheck: {} \n", flag);

	if (!chk_local)
		chk_local = csync_genchecktxt_version(st, filename, flag, peer_version);

	if ((i = csync_cmpchecktxt(chk_peer_decoded, chk_local))) {
		csync_info(log_level, "{} is different on peer (cktxt char #{}).\n", filename, i);
		char *peer_log = NULL, *local_log = NULL;
		if (csync_zero_mtime_debug) {
			peer_log = filter_mtime_copy(chk_peer_decoded);
			local_log = filter_mtime_copy(chk_local);
		}
		csync_info(log_level, ">>> {}:\t{}\n>>> {}:\t{}\n", peername, peer_log, "LOCAL", local_log);
		if (csync_zero_mtime_debug) {
			free(peer_log);
			free(local_log);
		}
		// We should be able to figure auto resolve from checktxt
		int flush = check_auto_resolve_peer(peername, filename, chk_local, chk_peer_decoded);
		if (flush) {
			csync_info(1, "Send FLUSH {}:{} (won auto resolved)\n", peername, filename);
		}
		*flags = DIFF_META | (flush & DIFF_FLUSH);
		return rc | DIFF_META;
	}
	return rc;
}

#define HARDLINK_CMD "MKHARDLINK"
#define HARDLINK_CMD_LEN 10
/** Works in two ways: normal and reverse
 Normalize: Given an Identical file with remote, restore all hardlinks to this
 file.

 Reverse: Given an diff file, attempt to find similiar remote file that we
 and use to hardlink with. Retries if fails

 If there are errors, we need to patch these files instead of linking
 */

static int csync_update_hardlink(int conn, peername_p peername, const char *key_encoded,
								 filename_p filename, const char *path_enc,
								 filename_p newpath, const char *newpath_enc,
								 int *last_conn_status) {
	// TODO Check that the target matches the config
	csync_info(1, "Hardlinking {} {} -> {}\n", peername, filename, newpath);
	// Swap filename and newpatch
	conn_printf(conn, "%s %s %s %s \n", HARDLINK_CMD, key_encoded, newpath_enc, path_enc);
	if ((*last_conn_status = read_conn_status(conn, filename, peername))) {
		csync_error(0, "Failed to hard link {} {} {}\n", peername, filename, newpath);
		if (*last_conn_status == CONN_CLOSE)
			return *last_conn_status;
		return ERROR_HARDLINK;
	}
	return OK;
}

static int csync_update_file_all_hardlink(int conn, db_conn_p db, peername_p myname, peername_p peername,
								   const char *key_encoded, filename_p filename, filename_p filename_enc, struct stat *st,
								   const char *uid, const char *gid, operation_t operation,
								   const char *checktxt, const char *digest, int is_identical,
								   int *last_conn_status) {
	textlist_p tl = csync_check_link_move(db, peername, filename, checktxt, operation, digest, st);
	textlist_p t = tl;
	int found_one = 0;
	int errors = 0;

	int count = 0;
	for (; !found_one && t; t = t->next) {
		const char *other = t->value;
		if (t->intvalue == OP_HARDLINK && other) {
			const char *key = csync_key(peername, other);
			if (!key)
				continue;

			const char *path = filename_enc.c_str(), *other_enc = url_encode(prefixencode(other));
			int rc;
			rc = csync_update_file_sig_rs_diff(conn, myname, peername, key, other, other_enc,
											   st, uid, gid,
											   NULL, digest, last_conn_status, 2);
			if (!is_identical) {
				if (rc == IDENTICAL) {
					// We have a remote file that we can use to "reverse" hardlink with
					path = other_enc;
					other_enc = filename_enc.c_str();
					// we only need one, if it succed
					found_one = 1;
				} else
					continue;
			}
			if (csync_update_hardlink(conn, peername, key_encoded, filename, path, other, other_enc,
					last_conn_status) != OK) {
				errors++;
				found_one = 0; // Reset found_one flag
			}
		}
		count++;
	}
	// unused
	csync_debug(2, "csync_check_link_move: {}\n", count);

	if (!is_identical) {
		if (found_one)
			return OK;
		return ERROR_HARDLINK;
	}
	if (errors)
		return ERROR_HARDLINK;
	return OK;
}

static int csync_update_file_send(int conn, const char *key_enc, peername_p peername, filename_p filename,
        filename_p filename_enc, const struct stat *st, const char *uid, const char *gid, const char *digest,
        int *last_conn_status) {
	// unused
	(void) digest;

	cmd_printf(conn, "CREATE", key_enc, filename_enc, "-", st, uid, gid, "-");
	return csync_send_reg_file(conn, peername, filename, last_conn_status);
}

static int csync_update_file_patch(int conn, const char *key_enc, peername_p peername, filename_p filename,
		filename_p filename_enc, const struct stat *st, const char *uid, const char *gid, const char *digest,
		int *last_conn_status) {
	// unused
	(void) digest;

	cmd_printf(conn, "PATCH", key_enc, filename_enc, "-", st, uid, gid, "-");
	int rc = csync_update_reg_file(conn, peername, filename, last_conn_status);
	return rc;
}

static int csync_stat(filename_p filename, struct stat *st, char uid[MAX_UID_SIZE], char gid[MAX_GID_SIZE]) {
	st->st_uid = -1;
	st->st_gid = -1;
	st->st_size = 0;
	st->st_mode = 0;
	st->st_size = 0;
	st->st_mtime = 0;
	int rc = lstat_strict(filename, st);
	if (rc != 0)
		return rc;

	if (uid_to_name(st->st_uid, uid, MAX_UID_SIZE, "-")) {
		csync_warn(0, "Failed to lookup uid {}\n", st->st_uid);
	}
	if (gid_to_name(st->st_gid, gid, MAX_GID_SIZE, "-")) {
		csync_warn(0, "Failed to lookup gid {}\n", st->st_gid);
	}
	csync_debug(3, "uid {} gid {}\n", uid, gid);
	return rc;
}

static int csync_update_file_settime(int conn, peername_p peername, const char *key_enc, filename_p filename,
		filename_p filename_enc, const struct stat *st) {
	conn_printf(conn, "SETTIME %s %s %zu\n", key_enc, filename_enc.c_str(), static_cast<long long>(st->st_mtime));
	if (read_conn_status(conn, filename, peername))
		return ERROR;
	return OK;
}

int csync_update_directory(int conn, peername_p myname, peername_p peername, const char *dirname, int force,
		int dry_run) {
	// unused
	(void) myname;
	(void) dry_run;

	struct stat dir_st;
	const char *key = csync_key(peername, dirname);
	if (!key) {
		csync_info(4, "Skipping directory update {} on {} - not in my groups.\n", dirname, peername);
		return OK;
	}
	const char *key_enc = url_encode(key);
	char uid[MAX_UID_SIZE], gid[MAX_GID_SIZE];
	int rc = csync_stat(dirname, &dir_st, uid, gid);
	if (rc != 0) {
		csync_debug(3, "Silent skipping missing directory {}.\n", dirname);
		return OK;
	}
	int last_conn_status;
	if (get_file_type(dir_st.st_mode) == DIR_TYPE) {
		const char *dirname_enc = url_encode(prefixencode(dirname));
		if (force) {
			csync_info(2, "creating directory {}\n", dirname);
			cmd_printf(conn, "MKDIR", key_enc, dirname_enc, "-", &dir_st, uid, gid, NULL);
			rc = csync_update_file_dir(conn, peername, dirname, &last_conn_status);
			if (rc == IDENTICAL) {
				return rc;
			}
			csync_info(2, "SETOWN on {}: {} {} \n", dirname, uid, gid);
			rc = csync_update_file_setown(conn, peername, key_enc, dirname, dirname_enc, &dir_st, uid, gid);
			if (rc != OK) {
				csync_error(1, "Failed to SETOWN on {}", dirname);
				return rc;
			}
			csync_info(2, "SETMOD on {}: {} {}\n", dirname, dir_st.st_mode);
			rc = csync_update_file_setmod(conn, peername, key_enc, dirname, dirname_enc, &dir_st);
			if (rc != OK) {
				csync_error(1, "Failed to SETMOD on {}", dirname);
				return rc;
			}
		}
		
		csync_info(2, "update_directory: Setting directory time {} {}.\n", dirname,
				   csync_zero_mtime_debug ? 0 : dir_st.st_mtime);
		rc = csync_update_file_settime(conn, peername, key_enc, dirname, dirname_enc, &dir_st);
		return rc;
	}
	csync_warn(1, "WARN: update_directory called on non-directory {}.\n", dirname);
	return OK;
}

int csync_update_file_sig_rs_diff(int conn, peername_p myname, peername_p peername, const char *key_enc,
		filename_p filename, filename_p filename_enc, const struct stat *st, const char *uid, const char *gid,
		const char *chk_local, const char *digest, int *last_conn_status, int log_level) {
	// unused
	(void) last_conn_status;

	csync_debug(3, "csync_update_file_sig_rs_diff {}:{}\n", peername, filename);
	cmd_printf(conn, "SIG", key_enc, filename_enc, "user/group", st, uid, gid, digest);
	int flags = 0;
	int rc = csync_update_file_sig(conn, myname, peername, filename, st, chk_local, digest, log_level, &flags);
	if (rc < OK || rc & OK_MISSING)
		return rc;
	csync_debug(3, "Continue to rs_check {} {}\n", filename, rc);
	int rs_check_result = csync_rs_check(conn, filename, (st ? S_ISREG(st->st_mode) : 0));
	if (rs_check_result < 0)
		rc = ERROR;
	if (rs_check_result > 0) {
		csync_info(2, "File is different on peer (rsync sig).\n");
		rc |= DIFF_FILE;
	}
	if (flags & DIFF_FLUSH) {
		csync_info(1, "Sending FLUSH (Won autoresolve): {}:{}", peername, filename);
		rc = csync_flush(conn, key_enc, peername, filename_enc);
	}
	int rc_status;
	if ((rc_status = read_conn_status(conn, filename, peername)) < OK) {
		if (rc_status == CONN_CLOSE)
			return rc_status;
		csync_error(0, "sig_rs_diff: Error while reading status: {} ", rc_status);
	}

	// Only when both file and meta data is same (differs from earlier behavior)
	if (!(rc & DIFF_BOTH) || rc == IDENTICAL) {
		csync_debug(2, "?S: {:15} {}\n", peername, filename);
		// DS also remove from dirty on dry_run
		return IDENTICAL;
	} else {
		char flag = 'F';
		if (rc == DIFF_BOTH)
			flag = 'B';
		else if (rc & DIFF_META)
			flag = 'M';
		csync_info(1, "?{}: {:15} {}\n", flag, peername, filename);
	}
	csync_debug(3, "END csync_update_file_sig_rs_diff {}:{}\n", peername, filename);
	return rc;
}

int csync_update_file_mod(int conn, db_conn_p db, const char *myname, peername_p peername, filename_p filename,
								   operation_t operation, const char *other, const char *checktxt, const char *digest,
								   int force, int dry_run);

static int csync_update_file_move(int conn, db_conn_p db, const char *myname, peername_p peername, const char *key,
						   filename_p filename, const char *other, const struct stat *st, const char *uid, const char *gid,
						   const char *checktxt, const char *digest, int force, int dry_run, int *last_conn_status) {

	/* filename exist here and other does not. The situation should be opposite remote. */
	int rc = csync_update_file_mv(conn, peername, key, other, filename.c_str());
	if (rc >= OK) {

		// (actually it should be correct */
		/* csync_skip_action_do_time(peername, key_enc, filename, filename_enc,
		 &file_stat);*/

		csync_info(1, "Succes: MV {} {}\n", other, filename);
		//TODO VERIFY
		db->remove_dirty(peername, filename, 1);
		db->remove_dirty(peername, other, 1);
		return rc;
	}
	if (rc == ERROR_NOT_FOUND) {
		csync_error(0, "Failed to MV {}: {} {}. Source not found. Patching target.\n",
					peername.c_str(), other, filename.c_str());
	    // Other (source) not found
		db->remove_dirty(peername, other, 0);
		// Filename should be new, but for now patch
		if (S_ISDIR(st->st_mode)) {
			// recursive "patch" missing
			rc = csync_update_file_mod(conn, db, myname, peername, filename, OP_MKDIR, NULL, checktxt, digest, force, dry_run);
		}
		else {
			rc = csync_update_file_patch(conn,  url_encode(key), peername, filename, url_encode(prefixencode(filename)),
										 st, uid, gid, digest, last_conn_status);
		}
		if (rc >= OK) {
			db->remove_dirty(peername, filename, 1);
		} else {
			csync_error(0, "Failed to patch(MV) {}: {} {}.\n", peername, other, filename);
		}
		return rc;
		// Asumming
	}
	csync_error(0, "Failed to MV {}: {} {} \n", peername, other, filename);
	return rc;
}

static int csync_check_update_hardlink(int conn, db_conn_p db, peername_p myname, peername_p peername, const char *key_enc,
									   filename_p filename, filename_p filename_enc, filename_p other, struct stat *st,
									   const char *uid, const char *gid, const
									   char *digest, int *last_conn_status, int auto_resolve_run) {
	csync_debug(1, "do hardlink check {} {} \n", filename, other);

	const char *other_enc = url_encode(prefixencode(other));
	struct stat st_other;
	int rc = stat(other.c_str(), &st_other);
	if (rc == 0) {
		rc = csync_update_file_sig_rs_diff(conn, myname, peername, key_enc, other, other_enc, st, uid, gid,
		NULL, digest, last_conn_status, 2);
		if (rc == CONN_CLOSE)
			return rc;
		if (rc == IDENTICAL)
			rc = csync_update_hardlink(conn, peername, key_enc, other, other_enc, filename, filename_enc.c_str(),
					last_conn_status);
		else {
			csync_warn(0, "Remote HARDLINK file ({}) not identical. Need patching. RC = {}\n", other, rc);
			if (rc == OK_MISSING)
				return rc;

			rc = ERROR_HARDLINK;
		}

		if (rc == CONN_CLOSE)
			return rc;
		if (rc == OK) {
			csync_clear_dirty(db, peername, filename, auto_resolve_run);
			return rc;
		}
	} else {
		csync_warn(0, "Other ({}) does not exist. Not HARDLINK. Patching.\n", other);
		rc = ERROR_HARDLINK;
	}
	return rc;
}

static int csync_update_hardlinks(int conn, const char *key_enc, peername_p peername, filename_p filename,
								  filename_p filename_enc, struct stat *st, textlist_p tl) {
	textlist_p ptr = tl;
	int count = 0;
	while (ptr != NULL) {
		filename_p other = ptr->value;
		csync_info(0, "check same file ({}) {} -> {} \n", ptr->intvalue, other, filename);
		struct stat st_other;
		int rc = stat(other.c_str(), &st_other);
		if (rc == 0) {
			if (st->st_dev == st_other.st_dev && st->st_ino == st_other.st_ino) {
				int last_conn_status = 0;
				const char *path = filename_enc.c_str(), *other_enc = url_encode(prefixencode(other));
				int rc_hl = csync_update_hardlink(conn, peername, key_enc, filename, path, other, other_enc,
												  &last_conn_status);
				if (rc_hl != OK) {
					csync_error(0, "Failed to hardlink {}: {} -> {}\n", peername, filename, other);
				}
				count++;
			} else {
				csync_info(0, "link_update MISMATCH: {}: {} {} {} {}\n", other,
						   st->st_dev, st_other.st_dev,
						   st->st_ino, st_other.st_ino);
			}
		} else {
			csync_error(0, "stat failed {}\n", other);
		}
		ptr = ptr->next;
	}
	csync_debug(0, "Found {} links to {}\n", count, filename);
	return OK;
}

static int csync_find_update_hardlink(int conn, db_conn_p db, const char *key_enc, const char *myname, peername_p peername,
									  filename_p filename, filename_p filename_enc, const char *checktxt, const char *digest,
									  struct stat *st, const char *uid, const char *gid,
									  int auto_resolve_run) {
	csync_debug(2, "Find same DEV INODE {} already on {} and hardlink\n", filename, peername);
	textlist_p tl = db->check_file_same_dev_inode(filename, checktxt, digest, st, peername);
	textlist_p ptr = tl;
	int last_conn_status;
	int rc = OK_MISSING;
	while (ptr != NULL) {
		csync_info(2, "check same file ({}) {} -> {} \n", ptr->intvalue, ptr->value, filename);
		// NOTE move check is disabled
		if (0 && ptr->intvalue == OP_RM) {
			db->delete_file(ptr->value, 0);
			csync_info(1, "Found MOVE {} -> {} \n", ptr->value, filename);
			break;
		} else if (ptr->intvalue == OP_HARDLINK) {
			csync_info(1, "Found HARDLINK {} -> {} \n", ptr->value, filename);
			rc = csync_check_update_hardlink(conn, db, myname, peername, key_enc, filename, filename_enc,
											 ptr->value, st, uid, gid, digest, &last_conn_status, auto_resolve_run);
			csync_debug(1, "check_update_hardlink result: {} -> {}: {}\n", ptr->value, filename, rc);

			if (rc == ERROR_HARDLINK || rc == OK_MISSING) {
				csync_debug(1, "Failed attempt to HARDLINK {} -> {}\n", ptr->value, filename);
			} else if (rc == OK) {
				csync_debug(1, "Hardlinked {}:{} -> {}\n", peername, ptr->value, filename);
				csync_clear_dirty(db, peername, filename, auto_resolve_run);
				break;
			}
			if (rc == CONN_CLOSE) {
				break;
			}

		}
		ptr = ptr->next;
	}
	csync_info(1, "csync_find_update_hardlink: result: {}:{} {}\n", peername, filename, rc);
	textlist_free(tl);
	return rc;
}

static int csync_update_file_mod_internal(int conn, db_conn_p db, const char *myname, peername_p peername, filename_p filename,
		operation_t operation, const char *other, const char *checktxt, const char *digest, int force, int dry_run,
		BUF_P buffer) {
	struct stat st;
	char uid[MAX_UID_SIZE], gid[MAX_GID_SIZE];
	int last_conn_status = 0, auto_resolve_run = 0;
	const char *operation_str = csync_operation_str(operation);
	const char *key = csync_key(peername, filename);
	if (!key) {
		csync_info(2, "Skipping file update {} on {} - not in my groups.\n", filename, peername);
		return OK;
	}
	if (csync_stat(filename, &st, uid, gid) != 0) {
		if (other) {
			if (lstat_strict(other, &st) != 0)
				csync_error(0, "ERROR: Cannot stat both files: {} {}.\n", filename, other);
			else
				csync_error(0, "ERROR: Cannot stat file: {} Other present: {}.\n", filename, other);
			/* Split */
			char dev_str[100];
			char ino_str[100];
			sprintf(dev_str, DEV_FORMAT, st.st_dev);
			sprintf(ino_str, INO_FORMAT, st.st_ino);
			char *result_other = NULL;
			db->add_dirty(other, force, myname, peername, operation_str, checktxt, dev_str, ino_str, result_other,
					operation, st.st_mode, st.st_mtime);
		} else {
			csync_error(0, "ERROR: Cannot stat {} {}.\n", filename, operation_str);
		}
		db->clear_operation(myname, peername, filename);
		csync_error_count++;
		return ERROR;
	}

	operation_str = csync_mode_op_str(st.st_mode, operation);
	int not_done = 1;
	const char *key_enc = url_encode(key);
	const char *enc_tmp = url_encode(prefixencode(filename));
	std::string filename_enc_str(enc_tmp);
	const char *filename_enc = filename_enc_str.c_str();
	int rc;
	while (not_done) {
		csync_info(1, "Updating ({}) '{}:{}' '{}'\n", operation_str, peername, filename, (other ? other : ""));

		if (lstat_strict(filename, &st) != 0 || (faccessat(0, filename.c_str(), R_OK,AT_SYMLINK_NOFOLLOW) != 0)) {
			csync_error(0, "ERROR: Cant stat or read {} {}.\n", filename, checktxt ? checktxt : "<No checktxt>");
			csync_error_count++;
			return ERROR;
		}
		if (force || auto_resolve_run) {
			if (dry_run) {
				csync_info(1, "!F: {:15} {}\n", peername, filename);
				return OK_DRY;
			}
			if ((rc = csync_flush(conn, key_enc, peername, filename_enc)) < 0) {
				return rc;
			}
		}
		if (operation == OP_MOVE) {
			rc = csync_update_file_move(conn, db, myname, peername, key, filename, other, &st, uid, gid, checktxt, digest,
										force, dry_run, &last_conn_status);
			if (rc == CONN_CLOSE || rc == OK) {
				if (rc == OK) {
					csync_clear_dirty(db, peername, filename, auto_resolve_run);
					csync_clear_dirty(db, peername, other, auto_resolve_run);
					return rc;
				}
				if (rc == CONN_CLOSE) {
					csync_error(0, "Connection closed while moving  {}:{}", peername, filename);
					return rc;
				}
			}
		}
		int sig_rc = csync_update_file_sig_rs_diff(conn, myname, peername, key_enc,
												   filename, filename_enc, &st, uid,
												   gid, NULL, digest, &last_conn_status, 2);
		rc = sig_rc;
		if (rc >= 0) {
			rc &= ~DIFF_BOTH;
		}

		if (dry_run) {
			if (rc == IDENTICAL) {
				csync_info(1, "clear {}:{} on dry run\n", peername, filename);
				csync_clear_dirty(db, peername, filename, auto_resolve_run);
			}
			return rc;
		}

		csync_debug(3, "has links: file {} checktxt '{}' {} {}\n", filename, checktxt, st.st_nlink,
				S_ISREG(st.st_mode));
		if (operation == OP_MARK) {
			int has_links = (st.st_nlink > 1 && S_ISREG(st.st_mode));
			if (has_links) {
				if (!checktxt) {
					checktxt = buffer_strdup(buffer,
							csync_genchecktxt_version(&st, filename, SET_USER | SET_GROUP, db->version));
				}
				if (digest || digest[0] != 0) {
					rc = csync_find_update_hardlink(conn, db, key_enc, myname, peername,
													filename, filename_enc,
													checktxt, digest, &st, uid, gid, auto_resolve_run);
				} else {
					csync_debug(1, "csync_update_file_mod(OP_MARK): skipping csync_find_update_hardlink:"
								"no digest on file {} checktxt '{}'\n",
								filename, checktxt);
				}
				if (rc == OK || rc == CONN_CLOSE) {
					csync_info(2, "Returning after hard link check {}:{} {}\n", peername, filename, rc);
					return rc;
				}
			}
		}
		if (operation == OP_HARDLINK) {
			if (st.st_nlink == 1) {
				operation = OP_MOD;
				csync_debug(1, "clear HARDLINK. No longer one\n");
			} else {
				rc = csync_check_update_hardlink(conn, db, myname, peername, key_enc,
												 filename, filename_enc, other,
												 &st, uid, gid, digest, &last_conn_status, auto_resolve_run);
				if (rc != OK) {
					csync_error(0, "Failed to hardlink {}:{} with {}. Retry...", peername, filename, other);
					other = NULL;
					rc = csync_find_update_hardlink(conn, db, key_enc, myname, peername, filename, filename_enc,
													checktxt, digest, &st, uid, gid, auto_resolve_run);
					csync_info(1, "After hard link check {}:{} {}\n", peername, filename, rc);
				}

				if (rc == CONN_CLOSE || rc == OK || rc == IDENTICAL) {
					if (rc == OK || rc == IDENTICAL) {
						csync_debug(1, "clear dirty HARDLINK {} {}\n", filename, other);
						csync_clear_dirty(db, peername, filename, auto_resolve_run);
						if (other) {
							csync_clear_dirty(db, peername, other, auto_resolve_run);
						}
					}
					return rc;
				}
			}
		}
		// check_link_move
		if (operation == OP_MOVE) {
			switch (rc) {
			case OK_MISSING:
			case DIFF_BOTH:
			case DIFF_FILE:
				rc = csync_update_file_move(conn, db, myname, peername, key, filename, other,
											&st, uid, gid, checktxt, digest, force, dry_run, &last_conn_status);
				if (rc == CONN_CLOSE)
					return rc;
				if (rc == OK) {
					csync_clear_dirty(db, peername, filename, auto_resolve_run);
					csync_clear_dirty(db, peername, other, auto_resolve_run);
					return rc;
				}
				csync_error(0, "ERROR: move failed: {} {} ", filename, other);
				operation_str = "WAS_MV";
				operation = OP_UNDEF;
				break;
			case DIFF_META:
				rc = SETOWN;
				//	rc = IDENTICAL;
			}
		}
		switch (rc) {
		case OK:
		case DIFF_FILE:
		case ERROR_PATH_MISSING:
		case OK_MISSING:
			break;
		case DIFF_META:
		case SETMOD:
		case SETOWN:
//	    rc = csync_update_file_setown(conn, peername, key_enc, filename,
//					  filename_enc, &st, uid, gid);
		case SETTIME:
			rc = csync_update_file_settime(conn, peername, key_enc, filename, filename_enc, &st);
			if (rc == CONN_CLOSE)
				return rc;
			csync_clear_dirty(db, peername, filename, auto_resolve_run);
			return rc;
		case ERROR:
			return rc;
		case IDENTICAL:
			csync_clear_dirty(db, peername, filename, auto_resolve_run);
			return rc;
		case OK_DRY:
			return rc;
		case ERROR_HARDLINK:
			csync_warn(1, "HARDLINK failed. Continuing with PATCH\n");
			break;
		case ERROR_CREATE:
			csync_warn(1, "CREATE failed. Continuing with PATCH\n");
			break;
		default:
			csync_fatal_cpp("Unhandled return code: {}:{} {} \n", peername, filename, rc);
			return rc;
		}
		/*
		 int link_later = 0;
		 if (rc == LINK_LATER)
		 link_later = 1;
		 */
		int mode = get_file_type(st.st_mode);
		const char *op = "MOD";

		switch (mode) {
		case REG_TYPE:
			rc = OK;
			// Attempt to find remote hardlinks that hare similar to current local file.
			// moved into regfile_check_hardlink.c
			if (sig_rc & (DIFF_FILE))
				rc = csync_update_file_patch(conn, key_enc, peername, filename, filename_enc, &st, uid, gid, digest,
						&last_conn_status);
			else if (sig_rc & OK_MISSING)
				rc = csync_update_file_send(conn, key_enc, peername, filename, filename_enc, &st, uid, gid, digest,
						&last_conn_status);
			else {
				csync_info(2, "Skipping file patch '{}' (same) rc: {} sig_rc: {} \n", filename, rc, sig_rc);
				// would better to have flush flag on PATCH
				rc = csync_flush(conn, key_enc, peername, filename_enc);
			}
			if (rc == CONN_CLOSE || rc == ERROR_LOCKED)
				return rc;

			if (st.st_nlink > 1) {
				char *copy_checktxt = filter_mtime_copy(checktxt);
				auto dev = csync_zero_mtime_debug ? 0 : st.st_dev;
				auto ino = csync_zero_mtime_debug ? 0 : st.st_ino;
				csync_debug(2, "PATCH hardlink: checking dirty hardlinks: {}:{} {} {} {} {}\n",
							peername.c_str(), filename.c_str(), dev, ino, copy_checktxt, digest);
				db->update_dirty_hardlinks(peername.c_str(), filename.c_str(), &st);
				free(copy_checktxt);
			 }
			break;
		case DIR_TYPE:
			csync_info(3, "MKDIR rc: {}\n", sig_rc);
			op = "MOD";
			if (sig_rc & (OK_MISSING | DIFF_FILE)) {
				op = "MKDIR";
			} else if (sig_rc & DIFF_META) {
				op = "MOD";
				csync_info(3, "Doing {} '{}:{}' on DIFF_META\n", op, peername, filename);
			}
			cmd_printf(conn, op, key_enc, filename_enc, "-", &st, uid, gid, NULL);
			rc = csync_update_file_dir(conn, peername, filename, &last_conn_status);
			break;
		case CHR_TYPE:
			conn_printf(conn, "MKCHR %s %s\n", key_enc, filename_enc);
			rc = read_conn_status(conn, filename, peername);
			break;
		case BLK_TYPE:
			conn_printf(conn, "MKBLK %s %s\n", key_enc, filename_enc);
			rc = read_conn_status(conn, filename, peername);
			break;
		case FIFO_TYPE:
			conn_printf(conn, "MKFIFO %s %s\n", key_enc, filename_enc);
			rc = read_conn_status(conn, filename, peername);
			break;
		case LINK_TYPE: {
			char target[PATH_MAX + 1];
			int len = readlink(filename.c_str(), target, PATH_MAX);
			if (len > 0) {
				target[len] = 0;
				conn_printf(conn, "MKLINK %s %s %s\n", key_enc, filename_enc, url_encode(prefixencode(target)));
				rc = read_conn_status(conn, filename, peername);
			} else {
				csync_error(1, "File is a symlink but readlink() failed.\n");
				rc = ERROR;
			}
			break;
		}
		case SOCK_TYPE: {
			conn_printf(conn, "MKSOCK %s %s\n", key_enc, filename_enc);
			rc = read_conn_status(conn, filename, peername);
			break;
		}
		default:
			csync_error(1, "File type (mode={:o}) is not supported.\n", st.st_mode);
			rc = ERROR;
		}
		if (rc < OK && rc != ERROR_DIRTY)
			return rc;
		csync_debug(3, "before setown/settime/setmod on OK. rc {} sig_rc: {}.\n", rc, sig_rc);
		if (rc == OK) {
			rc = csync_update_file_setown(conn, peername, key_enc, filename, filename_enc, &st, uid, gid);
			if (rc != OK) {
				csync_error(2, "Failed to set owner on {}:{} {}\n", peername, filename, rc);
				return rc;
			}
			// Is this difference for FS?
			if (mode != LINK_TYPE) {
				rc = csync_update_file_setmod(conn, peername, key_enc, filename, filename_enc, &st);
				if (rc != OK) {
					csync_error(2, "Failed to set mod on {}:{} {}\n", peername, filename, rc);
					return rc;
				}
			} else {
				csync_info(2, "Skipping setmod on link {}:{}\n", peername, filename);
			}
			rc = csync_update_file_settime(conn, peername, key_enc, filename, filename_enc, &st);
			if (rc != OK) {
				csync_error(2, "Failed to set time on {}:{} {}\n", peername, filename, rc);
				return rc;
			}
		}
		csync_debug(3, "After setown/settime/setmod on OK. rc {}.\n", rc);
		switch (rc) {
		case OK:
		case IDENTICAL:
			csync_clear_dirty(db, peername, filename, auto_resolve_run);
			return rc;
		case ERROR_DIRTY:
			if (auto_resolve_run) {
				csync_debug(0, "csync_update_file_mod: Still dirty after autoresolve\n");
				return rc;
			}
			auto_resolve_run = csync_check_auto_resolve(conn, peername, key_enc, filename, filename_enc,
					last_conn_status, auto_resolve_run, 0);
			if (!auto_resolve_run) {
				csync_error_count--;
				return rc;
			}
			csync_info(1, "Attempting autoresolve on {}:{}\n", peername, filename);
			break;
		case ERROR_LOCKED:
			csync_info(1, "Locked file on {}:{}. Keep dirty\n", peername, filename);
			return rc;
		default:
			csync_warn(1, "csync_update_file_mod: Unhandled rc: {}\n", rc);
			return rc;
		}
	}
	csync_fatal_cpp("Failed through loop. Should have returned. rc: {} \n", rc);
	return rc;
}

int csync_update_file_mod(int conn, db_conn_p db, const char *myname, peername_p peername, filename_p filename,
						  operation_t operation, const char *other,
						  const char *checktxt, const char *digest, int force, int dry_run) {
	BUF_P buffer = buffer_init();
	int rc = OK;
	rc = csync_update_file_mod_internal(conn, db, myname, peername, filename, operation, other, checktxt, digest,
										force, dry_run, buffer);
	buffer_destroy(buffer);
	return rc;
}

static void csync_directory_add(std::list<std::string>& dirlist, const std::string& filepath) {
	std::string directory = filepath.substr(0, filepath.find_last_of('/'));
	if (directory.size() > 0) {
		if (std::find(dirlist.begin(), dirlist.end(), directory) == dirlist.end()) {
		csync_debug(2, "Directory time {} {}\n", directory, filepath);
			dirlist.push_front(directory);
		}
	}
}

struct dirty_row {
	char *myname;
	char *peername;
	char *filename;
	char *digest;
	char *checktxt;
	int forced;
	int operation;
	long long *dev;
	long long *inode;
};

static int check_dirty_by_peer(textlist_p *p_tl, filename_p filename, const char *op_str, operation_t operation,
		const char *patlist, filename_p other, const char *checktxt, const char *digest, int forced, int recursive) {
	int use_this = 0;
	if (compare_files(filename, patlist, recursive)) {
		use_this = 1;
		textlist_add5(p_tl, filename, op_str, other, checktxt, digest, forced, operation);
	}
	return use_this;
}

void csync_ping_host(db_conn_p db, peername_p  myname, peername_p peername,
                     const std::set<std::string>& patlist, int ip_version, int flags) {
	// unused
	(void) patlist;
	(void) flags;
	//csync_debug(4, "Unused parameters {} {} {}", patlist, patlist.size(), flags);
	/*
	 textlist_p tl = 0, t, next_t;
	 textlist_p tl_del = 0, *last_tn=&tl;
	 struct stat st;
	 tl = db->get_dirty_by_peer_match(myname, peername, flags & FLAG_RECURSIVE, patlist, patnum, compare_files);

	 if ( !tl) {
	 return;
	 }
	 */
	int conn = connect_to_host(db, myname.c_str(), peername, ip_version);
	if (conn < 0) {
		csync_error_count++;
		csync_error(0, "ERROR: Connection to remote host `{}' failed.\n", peername);
		csync_error(1, "Host stays in dirty state. "
				"Try again later...\n");
		return;
	}

	conn_printf(conn, "PING %s %s\n", myname.c_str(), g_cfgname);
	int rc = read_conn_status(conn, "<PING>", peername);
	csync_debug(1, "Sent PING {} {} to {}: {} \n", myname, g_cfgname, peername, rc);
	conn_printf(conn, "BYE\n");
	read_conn_status(conn, "<BYE>", peername);
	conn_close(conn);
	return;
}

void csync_update_host(db_conn_p db, peername_p myname, peername_p peername,
                       const std::set<std::string>& patlist, int ip_version, int flags) {
	textlist_p tl = 0, t, next_t;
	textlist_p tl_del = 0, *last_tn = &tl;
	struct stat st;
	tl = db->get_dirty_by_peer_match(myname.c_str(), peername, flags & FLAG_RECURSIVE, patlist, compare_files);
	/* just return if there are no files to update */
	if (!tl) {
		return;
	}
	csync_debug(1, "Got dirty files from host {}\n", peername);
	int conn = connect_to_host(db, myname, peername, ip_version);
	if (conn < 0) {
		csync_error_count++;
		csync_error(0, "ERROR: Connection to remote host `{}' failed.\n", peername);
		csync_error(1, "Host stays in dirty state. "
				"Try again later...\n");
		textlist_free(tl);
		return;
	}

	conn_printf(conn, "HELLO %s\n", myname.c_str());
	if (read_conn_status(conn, "<HELLO>", peername)) {
		conn_printf(conn, "BYE\n");
		read_conn_status(conn, "<BYE>", peername);
		conn_close(conn);
		textlist_free(tl);		
		return;
	}
	int rc = -1;
	std::list<std::string> directory_list;
	char *last_dir_deleted = NULL;
	for (t = tl; t != 0; t = next_t) {
		filename_p filename = t->value;
		const char *other = t->value3;
		const char *op_str = t->value2, *checktxt = t->value4, *digest = t->value5;
		int operation = t->operation, forced = t->intvalue;
		next_t = t->next;
		//csync_debug(1, "DIRTY {} '{}'\n", filename, digest);
		if (lstat_strict(filename, &st) == 0 && !csync_check_pure(filename)) {
			rc = csync_update_file_mod(conn, db, myname.c_str(), peername, filename, operation, other, checktxt,
									   digest, forced,
					flags & FLAG_DRY_RUN);
			if (rc == CONN_CLOSE) {
				csync_error(0, "Connection closed on updating {}\n", filename);
				break;
			}
			std::string fn_str(filename);
			csync_directory_add(directory_list, fn_str);
			if (other) {
				std::string other_str(other);
				csync_directory_add(directory_list, other_str);
			}

			last_tn = &(t->next);
		} else {
			/* File not found */
			csync_debug(2, "Dirty (missing) item {} {} {} {}\n", filename, op_str, other, forced);
			if (t->operation != OP_RM && t->operation != OP_MARK) {
				csync_warn(1, "Unable to {} {}:{}. File has disappeared since check.\n", csync_operation_str(operation),
						   peername.c_str(), filename.c_str());
				std::set<string> peerlist;
				peerlist.insert(peername);
				csync_mark(db, filename, "", peerlist, OP_RM, NULL, NULL, NULL, 0, time(NULL));
				if (other) {
					csync_mark(db, other, "", peerlist, OP_MARK, NULL, NULL, NULL, 0, time(NULL));
					csync_debug(0, "make other dirty {}\n", other);
				}
			} else {
				//csync_debug(1, "LAST_DIR_DELETED {} filename {} strstr {} }\n", last_dir_deleted, filename.c_str());
			    if (last_dir_deleted != NULL && (strstr(filename.c_str(), last_dir_deleted) != NULL)) {
					// this is a file belonging to the deleted directory, so it should be skipped
					csync_info(2, "Skipping matched file ({}) from deleted directory ({})\n", filename,
							last_dir_deleted);
				} else {
					if (last_dir_deleted != NULL) {
						free(last_dir_deleted);
						last_dir_deleted = NULL;
					}
					rc = csync_update_file_del(conn, db, peername, filename, forced, flags & FLAG_DRY_RUN);
					if (rc == IDENTICAL) {
						db->remove_dirty(peername, filename, 1);
						db->remove_file(filename, 1);
						size_t len = strlen(filename.c_str());
						last_dir_deleted = static_cast<char*>(malloc(len + 2));
						strcpy(last_dir_deleted, filename.c_str());
						strcat(last_dir_deleted, "/");
						// Skip following files if from sub-directory
						csync_info(2, "DELETE ({}) Last dir: {}. rc: {}\n", filename, last_dir_deleted, rc);
					} else {
						*last_tn = next_t;
						t->next = tl_del;
						tl_del = t;
					}
				}
			}
		}
	}
	if (last_dir_deleted) {
		free(last_dir_deleted);
	}
	textlist_free(tl);
	textlist_free(tl_del);

	rc = 0;
	if (!(flags & FLAG_DRY_RUN))
		for (const std::string& directory : directory_list) {
			csync_debug(2, "SETTIME {}:{}\n", peername, directory);
			rc = csync_update_directory(conn, myname, peername, directory.c_str(), 0, flags & FLAG_DRY_RUN);
			if (rc == CONN_CLOSE) {
				csync_error(0, "Connection closed on setting time on directory {}\n", directory);
				break;
			}
		}
	else
		csync_info(2, "Skipping directories due to dry run");

	conn_printf(conn, "BYE\n");
	read_conn_status(conn, "<BYE>", peername);
	conn_close(conn);
}

// NOT FULLY IMPLEMENTED
void csync_sync_host(db_conn_p db, peername_p myname, peername_p peername,
                     const std::set<std::string>& patlist, int ip_version, int flags) {
	textlist_p tl = 0, t = 0;
	int dry_run = flags & FLAG_DRY_RUN;

	csync_debug(0, "csync_sync_host\n");
	for (std::string pattern : patlist) {
		tl = db->non_dirty_files_match(pattern.c_str());
		if (tl) // Only use first pattern?
			break;
	}
	/* just return if there are no files to update */
	if (!tl) {
		csync_debug(0, "csync_sync_host: no files to sync\n");
		return;
	}
	int conn = connect_to_host(db, myname.c_str(), peername, ip_version);
	if (conn < 0) {
		csync_error_count++;
		csync_error(0, "ERROR: Connection to remote host `{}' failed.\n", peername);
		csync_error(1, "Host stays in dirty state. "
				"Try again later...\n");
		return;
	}

	conn_printf(conn, "HELLO %s\n", myname.c_str());
	int rc;
	if ((rc = read_conn_status(conn, "<HELLO>", peername)) < OK) {
		conn_printf(conn, "BYE\n");
		read_conn_status(conn, "<BYE>", peername);
		conn_close(conn);
		return;
	}
	const char *status = "";
	if (dry_run)
		status = "(DRY RUN)";

	for (t = tl; t != 0; t = t->next) {
		filename_p filename = t->value;
		const char *key = csync_key(peername, filename);
		if (!key) {
			csync_info(2, "Skipping file sync {} on {} - not in my groups.\n", filename, peername);
		} else {
			const char *key_enc = url_encode(key);
			filename_p filename_enc = url_encode(prefixencode(filename));
			const char *chk_local = t->value2;
			const char *digest = t->value3;
			struct stat st;
			char uid[MAX_UID_SIZE], gid[MAX_GID_SIZE];
			int rc_exist = csync_stat(filename, &st, uid, gid);
			if (!rc_exist) {
				int last_conn_status;
				rc = csync_update_file_sig_rs_diff(conn, myname.c_str(), peername, key_enc, filename, filename_enc, &st,
												   uid, gid, chk_local, digest, &last_conn_status, 2);
				if (rc == CONN_CLOSE) {
					csync_error(0, "Error while sync_host {}:{}. Connection closed", peername, filename);
					break;
				}
				csync_info(2, "Check for deletion of local file '{}' not on peer '{}' : status {}\n",
						   filename.c_str(), peername.c_str(), rc);
				if (rc >= OK && (rc & OK_MISSING) && !rc_exist) {
					csync_info(0, "Deleting local file '{}' not on peer '{}' {}\n", filename, peername, status);
					if (!dry_run) {
						rc = unlink(filename.c_str());
						if (rc)
							csync_error(0, "ERROR: Failed to delete local file '{}' not on peer '{}' {}\n", filename,
										peername.c_str(), status);
					}
				}
			}
		}
	}
	textlist_free(tl);
	conn_printf(conn, "BYE\n");
	read_conn_status(conn, "<BYE>", peername);
	conn_close(conn);
}
/* Dead */

static int csync_match(const char *filename, const char *patlist[], int patnum, int recursive) {
	int i;
	for (i = 0; i < patnum; i++)
		if (compare_files(filename, patlist[i], recursive)) {
			return 1;
		}
	return 0;
}

void csync_update(db_conn_p db, peername_p myhostname,
				  const std::set<std::string>& active_peers,
                  const std::set<std::string>& patlist,
				  int ip_version, update_func func, int flags) {
	textlist_p tl = 0, t;
	if (flags & FLAG_DO_ALL) {
		for (std::string peer : active_peers) {
			func(db, myhostname, peer.c_str(), patlist, ip_version, flags);
		}
		if (active_peers.empty()) {
			csync_error(0, "No active peers given. Unable to iterate without");
		}
	} else {
		tl = db->get_dirty_hosts();
		int found = 1;
		for (t = tl; t != 0; t = t->next) {
			if (!active_peers.empty()) {
				found = 0;
				for (std::string peer : active_peers) {
					if (peer == t->value) {
						found = 1;
						break;
					}
				}
			}
			if (found)
				func(db, myhostname, t->value, patlist, ip_version, flags);
		}
		textlist_free(tl);
	}
}

/* emulate the label, should remove */
static int finish_close(int conn) {
	conn_close(conn);
	return 0;
}
;

static int csync_insynctest_file(int conn, const std::string& myname, peername_p peername, const char *key_enc,
								 filename_p filename, int *last_conn_status) {
	filename_p filename_enc = url_encode(prefixencode(filename));
	struct stat st;
	char uid[MAX_UID_SIZE], gid[MAX_GID_SIZE];
	int rc_exist = csync_stat(filename, &st, uid, gid);
	int rc = csync_update_file_sig_rs_diff(conn, myname.c_str(), peername, key_enc, filename, filename_enc,
			(!rc_exist ? &st : NULL), uid, gid,
			NULL, NULL, last_conn_status, 0);
	if (rc < 0 && rc != ERROR_PATH_MISSING) {
		csync_error(0, "Error while SIG_RS (before TYPE): {} \n", rc);
		return rc;
	}
	if (!rc_exist && !S_ISREG(st.st_mode)) {
		return NOT_REG;
	}

	return rc;
}

int csync_diff(db_conn_p db, peername_p myname, peername_p str_peername, filename_p str_filename, int ip_version) {
	const char *peername = str_peername.c_str();
	const char *filename = str_filename.c_str();

	FILE *p;
	void (*old_sigpipe_handler)(int);
	const struct csync_group *g = 0;
	const struct csync_group_host *h;
	int last_conn_status = 0;
	char buffer[512];
	int found = 0;
	while (!found && (g = csync_find_next(g, filename, 0))) {
		if (!g->myname || myname != g->myname)
			continue;
		for (h = g->host; h; h = h->next)
			if (peername == h->hostname) {
				found = 1;
				break;
			}
	}

	if (!found) {
		csync_warn(0, "Host pair + file not found in configuration.\n");
		csync_error_count++;
		return 0;
	}

	int conn = connect_to_host(db, myname.c_str(), peername, ip_version);
	if (conn < 0) {
		csync_error_count++;
		csync_error(0, "ERROR: Connection to remote host `{}' failed.\n", peername);
		return 0;
	}

	conn_printf(conn, "HELLO %s\n", url_encode(myname.c_str()));
	if (read_conn_status(conn, "<HELLO>",peername))
		return finish_close(conn);
	const char *key_enc = url_encode(g->key);

	int rc = csync_insynctest_file(conn, myname, peername, key_enc, filename, &last_conn_status);

	if (rc == IDENTICAL) {
		csync_info(1, "Identical files. Skipping diff\n");
		return finish_close(conn);
	}
	if (rc == NOT_REG) {
		csync_info(1, "Skipping diff on non-regular file ({})\n", filename);
		return finish_close(conn);
	}
	if (rc < 0) {
		csync_info(1, "ERROR: rs_sig '{}' failed with {}. Skipping TYPE\n", filename, rc);
		return finish_close(conn);
	}

	conn_printf(conn, "TYPE %s %s\n", key_enc, filename);

	if (read_conn_status(conn, "<TYPE>", peername))
		return finish_close(conn);

	/* FIXME
	 * verify type of file first!
	 * (symlink vs. file vs. dir vs. whatever)
	 */

	/* avoid unwanted side effects due to special chars in filenames,
	 * pass them in the environment */
	snprintf(buffer, 512, "%s:%s", myname.c_str(), filename);
	setenv("my_label", buffer, 1);
	snprintf(buffer, 512, "%s:%s", peername, filename);
	setenv("peer_label", buffer, 1);
	snprintf(buffer, 512, "%s", filename);
	setenv("diff_file", buffer, 1);
	/* XXX no error check on setenv
	 * (could be insufficient space in environment) */

	snprintf(buffer, 512, "diff -Nus --label \"$peer_label\" - --label \"$my_label\" \"$diff_file\"");
	old_sigpipe_handler = signal(SIGPIPE, SIG_IGN);
	p = popen(buffer, "w");

	int length = 0;
	while ((rc = conn_read(conn, buffer, 512)) > 0) {
		fwrite(buffer, rc, 1, p);
		length += rc;
	}
	if (rc < 0)
		csync_info(0, "Diff {}:{} failed with connection read {} {}", peername, filename, strerror(errno), errno);
	csync_debug(2, "diff -Nus --label \"{}:{}\" - --label \"{}:{}\" bytes read: {} ", myname, filename,
				peername, filename, length);
	pclose(p);
	signal(SIGPIPE, old_sigpipe_handler);
	return finish_close(conn);
}

static int csync_insynctest_readline(int conn, char **file, char **checktxt) {
	char inbuf[2048], *tmp;

	if (*file)
		free(*file);
	if (*checktxt)
		free(*checktxt);
	*file = *checktxt = 0;

	if (!conn_gets(conn, inbuf, 2048))
		return 1;
	if (inbuf[0] != 'v') {
		if (!strncmp(inbuf, "OK (", 4)) {
			csync_debug(2, "End of query results: {}", static_cast<char *>(inbuf));
			return 1;
		}
		csync_error_count++;
		csync_debug(0, "ERROR from peer: {} {}", inbuf, conn);
		return 1;
	}

	tmp = strtok(inbuf, "\t");
	if (tmp)
		*checktxt = strdup(url_decode(tmp));
	else {
		csync_error_count++;
		csync_error(0, "Format error in reply: \\t not found!\n");
		return 1;
	}

	tmp = strtok(0, "\n");
	if (tmp)
		*file = strdup(url_decode(tmp));
	else {
		csync_error_count++;
		csync_error(0, "Format error in reply: \\n not found!\n");
		return 1;
	}

	csync_info(3, "Fetched tuple from peer: {} [{}]\n", *file, *checktxt);

	return 0;
}

int csync_insynctest(db_conn_p db, const std::string& myname, peername_p peername, filename_p filename, int ip_version,
		int flags) {
	int auto_diff = flags & FLAG_TEST_AUTO_DIFF;
	int recursive = flags & FLAG_RECURSIVE;
	textlist_p diff_list = 0, diff_ent;
	const struct csync_group *g;
	const struct csync_group_host *h;
	char *r_file = 0, *r_checktxt = 0;
	int remote_eof = 0;
	int ret = 1;

	int found = 0;
	for (g = csync_group; !found && g; g = g->next) {
		if (!g->myname || myname != g->myname)
			continue;
		for (h = g->host; h; h = h->next)
			if (peername == h->hostname) {
				found = 1;
				break;
			}
	}

	if (!found) {
		csync_info(0, "Host pair not found in configuration.\n");
		csync_error_count++;
		return 0;
	}

	int conn = connect_to_host(db, myname.c_str(), peername, ip_version);
	if (conn < 0) {
		csync_error_count++;
		csync_error(0, "ERROR: Connection to remote host `{}' failed.\n", peername);
		return 0;
	}

	conn_printf(conn, "HELLO %s\n", url_encode(myname.c_str()));
	read_conn_status(conn, "<HELLO>", peername);
	const char *filename_enc = (filename != "" ?  url_encode(prefixencode(filename)) : "/");
	found = 0;
	for (g = csync_group; g && !found; g = g->next) {
		if (!g->myname || myname != g->myname)
			continue;
		for (h = g->host; h; h = h->next)
			if (peername == h->hostname) {
				found = 1;
				break;
			}
	}
	conn_printf(conn, "LIST %s %s %s %d \n", peername.c_str(), filename_enc, g->key, recursive);
	int count_diff = 0;
	if (!remote_eof) {
		while (!csync_insynctest_readline(conn, &r_file, &r_checktxt)) {
			if (auto_diff)
				textlist_add(&diff_list, r_file, 0);
			else {
				textlist_p tl = db->list_file(r_file, myname.c_str(), peername, 0);
 				const char *chk_local = "---";
				if (tl) {
					chk_local = tl->value;
				}
				int i;
				if ((i = csync_cmpchecktxt(r_checktxt, chk_local))) {
					csync_info(1, "D\t{}\t{}\t{}\n", myname, peername, r_file);
					csync_debug(2, "'{}' is different:\n", filename);
					char *local_copy = NULL;
					if (csync_zero_mtime_debug) {
						filter_mtime(r_checktxt);
						local_copy = filter_mtime_copy(chk_local);
					}
					csync_debug(2, ">>> {} {}\n>>> {} {}\n", r_checktxt, peername, chk_local, myname);
					if (local_copy) {
						free(local_copy);
					}
					count_diff++;
				} else
					csync_info(1, "S\t{}\t{}\t{}\n", myname, peername, r_file);

				textlist_free(tl);
			}
			ret = 0;
			if (flags & FLAG_INIT_RUN) {
				std::set<string> peerlist;
				if (flags & FLAG_INIT_RUN_STRAIGHT)
					peerlist.insert(peername);
				csync_mark(db, r_file, "", peerlist, OP_MOD /* | PEER */, NULL, "NULL", "NULL", 0, time(NULL));
			}
		}
	}
	csync_debug(3, "count_diff: {}", count_diff);

	if (r_file)
		free(r_file);
	if (r_checktxt)
		free(r_checktxt);

	conn_printf(conn, "BYE\n");
	read_conn_status(conn, "<BYE>", peername);
	conn_close(conn);

	for (diff_ent = diff_list; diff_ent; diff_ent = diff_ent->next)
		csync_diff(db, myname.c_str(), peername, diff_ent->value, ip_version);
	textlist_free(diff_list);

	return ret;
}

static int peer_in(const std::set<std::string>& active_peers, const std::string& peername) {
	if (active_peers.empty())
		return 1;
	for (std::string peer : active_peers) {
		if (peer == peername)
			return 1;
	}
	return 0;
}

int csync_insynctest_all(db_conn_p db, filename_p filename, int ip_version, const std::set<std::string>& active_peers,
						 int flags) {
	csync_debug(3, "csync_insynctest_all: flags {} \n", flags);
	textlist_p myname_list = 0, myname;
	int auto_diff = flags & FLAG_TEST_AUTO_DIFF;
	struct csync_group *g;
	int ret = 1;
	if (auto_diff && filename != "") {
		int pl_idx;
		struct peer *pl = csync_find_peers(filename.c_str(), 0);
		for (pl_idx = 0; pl && pl[pl_idx].peername; pl_idx++) {
			std::string peername(pl[pl_idx].peername);
			if (peer_in(active_peers, peername)) {
				csync_diff(db, std::string(pl[pl_idx].myname), peername.c_str(), filename, ip_version);
			}
		}
		free(pl);
		return ret;
	}
	// No autotest or filename
	csync_debug(2, "csync_insynctest_all: get all groups \n");
	for (g = csync_group; g; g = g->next) {
		if (g->myname) {
			int found = 0;
			for (myname = myname_list; myname; myname = myname->next)
				if (!strcmp(g->myname, myname->value)) {
					found = 1;
					break;
				};
			if (!found) {
				csync_debug(2, "insynctest_all: Adding host {}\n", g->myname);
				textlist_add(&myname_list, g->myname, 0);
			}
		}
	}

	for (myname = myname_list; myname; myname = myname->next) {
		textlist_p peername_list = 0, peername;
		struct csync_group_host *h;
		for (g = csync_group; g; g = g->next) {

			if (!g->myname) // || strcmp(myname->value, g->myname) )
				continue;
			for (h = g->host; h; h = h->next) {
				int found = 0;
				for (peername = peername_list; peername; peername = peername->next)
					if (!strcmp(h->hostname, peername->value)) {
						found = 1;
						break;
					}
				if (!found) {
					csync_info(2, "Adding peer: {}\n", h->hostname);
					textlist_add(&peername_list, h->hostname, 0);
				}
			}
		}

		for (peername = peername_list; peername; peername = peername->next) {
			csync_info(2, "Check peername \n");
			if (peer_in(active_peers, peername->value)) {
				csync_info(2, "Running in-sync check for {} <-> {} for file {}.\n", myname->value, peername->value,
						   filename.c_str());
				if (!csync_insynctest(db, myname->value, peername->value, filename, ip_version, flags))
					ret = 0;
			}
		}
		textlist_free(peername_list);
	}
	textlist_free(myname_list);

	return ret;
}

static int filter_missing_dirty(filename_p filename, const char *localname, peername_p peername) {
	const struct csync_group *g = 0;
	const struct csync_group_host *h;
	int found = 0;
	while (!found && (g = csync_find_next(g, filename.c_str(), 0)) != 0) {
		if (!strcmp(g->myname, localname))
			for (h = g->host; h; h = h->next) {
				if (peername == h->hostname) {
					found = 1;
					break;
				}
			}
	}
	return found;
}

static int filter_missing_file(filename_p filename) {
	return csync_find_next(0, filename.c_str(), 0) != NULL;
};

void csync_remove_old(db_conn_p db, filename_p pattern) {
	csync_debug(1, "remove_old: dirty\n");
	textlist_p tl = 0, t;
	tl = db->find_dirty(filter_missing_dirty);
	for (t = tl; t != 0; t = t->next) {
		filename_p filename = t->value;
		peername_p peername = t->value2;
		csync_info(1, "Removing {} ({}) from dirty db.\n", filename, peername);
		db->remove_dirty(peername, filename, 0);
	}
	textlist_free(tl);
	csync_debug(1, "remove_old: file\n");
	tl = 0;
	tl = db->find_file(pattern, filter_missing_file);
	for (t = tl; t != 0; t = t->next) {
		csync_info(1, "Removing {} from file db.\n", t->value);
		db->remove_file(t->value, 1);
	}
	textlist_free(tl);
	csync_debug(1, "remove_old: end\n");
}
