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

#ifndef CSYNC2_HPP
#define CSYNC2_HPP 1

// #define CSYNC2_VERSION "2.0-rc2"

#ifndef _GNU_SOURCE
#define _GNU_SOURCE
#endif

#include "config.h"
#include <stdio.h>
#include <stdlib.h>
#include <sys/stat.h>
#include <inttypes.h>
#include <errno.h>
#include <stdarg.h>
#include <string.h>
#include <ctype.h>

#ifdef __cplusplus
#include <vector>
#include <set>
#include <string>
#endif

typedef int operation_t;
#ifdef __cplusplus
typedef const std::string filename_p;
typedef const std::string peername_p;
#endif

#define MATCH_NEXT 2
#define MATCH_INTO 1
#define MATCH_NONE 0

#define IGNORE_MTIME 1
#define IGNORE_INODE 2
#define IGNORE_USER  4
#define IGNORE_GROUP 8
#define SET_USER    16
#define SET_GROUP   32
#define IGNORE_LINK 64
#define IGNORE_DIR 128
#define IGNORE_    256

#define FLAG_RECURSIVE          1
#define FLAG_DRY_RUN            2
#define FLAG_INIT_RUN           4
#define FLAG_INIT_RUN_STRAIGHT  8
#define FLAG_INIT_RUN_REMOVAL  16
#define FLAG_TEST_AUTO_DIFF    32
#define FLAG_DO_CHECK          64
#define FLAG_DIRDUMP          128
#define FLAG_IGN_NOENT        256
#define FLAG_IGN_DIR          512
#define FLAG_IGN_MTIME       1024
#define FLAG_DO_ALL          2048


#define OCTET_STREAM 0  // orginal format
#define CHUNKED_MODE 1  // chunked format
#define DELTA_PATCH  2  // orginal format but direct patching while receiving

#define CHUNK_SIZE 16*1024


#ifdef __DARWIN_C_LEVEL
#define DEV_FORMAT "%u"
#define INO_FORMAT "%" PRIu64
#else
#define DEV_FORMAT "%" PRIu64
#define INO_FORMAT "%" PRIu64
#endif

#define DB_SCHEMA_VERSION 2

enum {
	MODE_NONE = 0,
	MODE_HINT = 1,
	MODE_CHECK = 2,
	MODE_UPDATE = 4,
	MODE_CHECK_AND_UPDATE = MODE_CHECK+MODE_UPDATE,
	MODE_INETD =  8,
	MODE_SERVER = 16,
	MODE_SINGLE = 32,
	MODE_NOFORK = 64,
	MODE_STANDALONE = MODE_SERVER|MODE_SINGLE|MODE_NOFORK,
	MODE_DAEMON  = MODE_INETD|MODE_SERVER|MODE_SINGLE|MODE_NOFORK,
	MODE_FORCE = 256,
	MODE_LIST_HINT = 512,
	MODE_LIST_FILE = 1024,
	MODE_LIST_SYNC = 2048,
	MODE_TEST_SYNC = 4096,
	MODE_LIST_DIRTY = 8192,
	MODE_REMOVE_OLD = 16384,
	MODE_COMPARE = 32768,
	MODE_SIMPLE =  65536,
	MODE_UPGRADE_DB = 2 * MODE_SIMPLE,
	MODE_MARK = 2*MODE_UPGRADE_DB,
	MODE_EQUAL = 2*MODE_MARK,
	MODE_TAIL = 2*MODE_EQUAL,
	MODE_PING = 2*MODE_TAIL
};

#define DEFAULT_PORT "30865"
#define ERROR_DIRTY_STR "File is also marked dirty here!"
#define ERROR_DIRTY_LEN (static_cast<int>(sizeof ERROR_DIRTY_STR) - 1)

#include "error.hpp"

#define ASPRINTF(s, fmt, ...) do {\
	int __ret = asprintf(s, fmt __VA_OPT__(, ) __VA_ARGS__);\
	if (__ret < 0) \
	  csync_fatal("Out of memory in asprintf at %s:%d\n", __FILE__, __LINE__); \
} while (0)

#if defined(__GNUC__) || defined(__clang__)
#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wvariadic-macros"
#endif

#define VASPRINTF(s, fmt, ...) do {\
	int __ret = vasprintf(s, fmt __VA_OPT__(, ) __VA_ARGS__);\
	if (__ret < 0) \
	  csync_fatal("Out of memory in vasprintf at %s:%d\n", __FILE__, __LINE__); \
} while (0)

/* check.c */
//#define DEV_INO_SAME 0
//#define DEV_CHANGED 1
//#define INO_CHANGED 2
//#define DEV_MISSING 4
//#define INO_MISSING 8
/* check.c */
#define OP_UNDEF      0
#define OP_MARK       0
#define OP_MKDIR      1
#define OP_NEW        2
#define OP_MKFIFO     4
#define OP_MKCHR      8
#define OP_MOVE      16
#define OP_HARDLINK  32
#define OP_RM        64
#define OP_MOD      128
#define OP_MOD2     256
#define OP_SYNC     (OP_MOD|OP_MOD2)
#define OP_FILTER   (~(OP_SYNC) & 1023)

#define IS_UPGRADE  1
#define IS_DIRTY    2
#define CALC_DIGEST 4
#define DEV_CHANGE  8

/* Check conversion of char pointer to std::string */
std::string  check_string(const char *str);

#include "textlist.hpp"

#include "groups.hpp"

int csync2_main(int argc, char **argv);

/* cfgfile_parser_processed.y - additional missing prototypes */
#ifdef __cplusplus
extern "C" {
#endif
void csync_config_destroy_group(struct csync_group *group);
void csync_config_destroy(void);
int yyparse(void);
int yylex_destroy(void);
#ifdef __cplusplus
}
#endif

/* global variables */
extern "C" {
#include "csync2.h"
#include "error.h"
#include "utils.h"
}

extern unsigned csync_lock_timeout;
extern unsigned csync_lock_time;
extern char *csync_tempdir;

extern char *csync_database;
extern char *csync_redis;

extern int csync_error_count;
extern int csync_level_debug;
extern int csync_syslog;
extern int csync_facility;
extern FILE *csync_out_debug;

extern long csync_last_printtime;
extern FILE *csync_timestamp_out;

extern int csync_quiet;
extern int csync_messages_printed;
extern int csync_server_child_pid;
extern int csync_timestamps;
extern int csync_new_force;

extern char g_myhostname[];
extern const char *csync_port;
extern const char *csync_confdir;
extern char *g_active_grouplist;
extern char *g_active_peerlist;

extern const char *g_cfgname;

extern int csync_ignore_uid;
extern int csync_ignore_gid;
extern int csync_ignore_mod;
extern int csync_dump_dir_fd;

extern char *csync_use_ip;
extern int csync_compare_mode;
#ifdef __cplusplus
extern std::set<std::string> g_active_peers;
#else
extern char **g_active_peers;
#endif

#ifdef HAVE_LIBGNUTLS
extern int csync_conn_usessl;
#endif

#ifdef __CYGWIN__
extern int csync_lowercyg_disable;
extern int csync_lowercyg_used;
extern int csync_cygwin_case_check(filename_p filename);

static inline char *on_cygwin_lowercase(char *cchar) {
#ifdef __CYGWIN__
	if (!csync_lowercyg_disable) {
		char *s = (char *) cchar;
		int i;
		for (i=0; s[i]; i++)
			s[i] = tolower(s[i]);
	}
	csync_lowercyg_used = 1;
#endif
	return cchar;
}
#endif

static inline int lstat_strict(const char *filename, struct stat *buf) {
#ifdef __CYGWIN__
	if (csync_lowercyg_disable && !csync_cygwin_case_check(filename)) {
		errno = ENOENT;
		return -1;
	}
#endif
	return lstat(filename, buf);
}

static inline int lstat_strict(filename_p filename, struct stat *buf) {
 	return lstat_strict(filename.c_str(), buf);
}

#endif /* CSYNC2_HPP */
