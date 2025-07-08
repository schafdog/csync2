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

#ifndef CSYNC2_H
#define CSYNC2_H 1

// #define CSYNC2_VERSION "2.0-rc2"

#ifndef _GNU_SOURCE
#define _GNU_SOURCE
#endif

#include <stdio.h>
#include <stdlib.h>
#include <sys/stat.h>
#include <inttypes.h>
#include <errno.h>
#include <stdarg.h>
#include <string.h>
#include <syslog.h>

#ifdef __DARWIN_C_LEVEL
#define DEV_FORMAT "%u"
#define INO_FORMAT "%" PRIu64
#else
#define DEV_FORMAT "%" PRIu64
#define INO_FORMAT "%" PRIu64
#endif

#define DB_SCHEMA_VERSION 2

#define DEFAULT_PORT "30865"
#define ERROR_DIRTY_STR "File is also marked dirty here!"
#define ERROR_DIRTY_LEN (static_cast<int>(sizeof ERROR_DIRTY_STR) - 1)

#include "error.h"

/*
#define ASPRINTF(s, fmt, ...) do {\
	int __ret = asprintf(s, fmt __VA_OPT__(, ) __VA_ARGS__);\
	if (__ret < 0) \
	  csync_fatal("Out of memory in asprintf at %s:%d\n", __FILE__, __LINE__); \
} while (0)

#define VASPRINTF(s, fmt, ...) do {\
	int __ret = vasprintf(s, fmt __VA_OPT__(, ) __VA_ARGS__;\
	if (__ret < 0) \
	  csync_fatal("Out of memory in vasprintf at %s:%d\n", __FILE__, __LINE__); \
} while (0)
*/

/* config structures */

struct csync_nossl;
struct csync_group;
struct csync_group_host;
struct csync_group_pattern;
struct csync_hostinfo;

struct csync_hostinfo {
    char *name; // Alias
    char *host;
    char *port; // service or port number
    struct csync_hostinfo *next;
};

struct csync_group_host {
	struct csync_group_host *next;
        char *hostname;
        char *port; // service or port number
	int on_left_side;
	int slave;
};

struct csync_group_pattern {
	struct csync_group_pattern *next;
	int isinclude, iscompare, star_matches_slashes;
	char *pattern;
};

struct csync_group_action_pattern {
	struct csync_group_action_pattern *next;
	int star_matches_slashes;
	char *pattern;
};

struct csync_group_action_command {
	struct csync_group_action_command *next;
	char *command;
};

struct csync_group_action {
	struct csync_group_action *next;
	struct csync_group_action_pattern *pattern;
	struct csync_group_action_command *command;
	char *logfile;
	int do_local;
	int do_local_only;
};

struct csync_group {
    struct csync_group *next;
    struct csync_group_host *host;
    struct csync_group_pattern *pattern;
    struct csync_group_action *action;
    char *key, *myname, *gname;
    int auto_method, local_slave;
    char *backup_directory;
    int backup_generations;
    int hasactivepeers;
    int flags;
};

struct csync_prefix {
	char *name, *path;
	struct csync_prefix *next;
};

struct csync_nossl {
	struct csync_nossl *next;
	char *pattern_from;
	char *pattern_to;
};

enum CSYNC_AUTO_METHOD {
	CSYNC_AUTO_METHOD_NONE,
	CSYNC_AUTO_METHOD_FIRST,

	CSYNC_AUTO_METHOD_YOUNGER,
	CSYNC_AUTO_METHOD_OLDER,

	CSYNC_AUTO_METHOD_BIGGER,
	CSYNC_AUTO_METHOD_SMALLER,

	CSYNC_AUTO_METHOD_LEFT,
	CSYNC_AUTO_METHOD_RIGHT,

	CSYNC_AUTO_METHOD_LEFT_RIGHT_LOST
};

/* global variables */

extern struct csync_group  *csync_group;
extern struct csync_prefix *csync_prefix;
extern struct csync_nossl  *csync_nossl;
extern struct csync_hostinfo  *csync_hostinfo;

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

#ifdef HAVE_LIBGNUTLS
extern int csync_conn_usessl;
#endif

#ifdef __CYGWIN__
extern int csync_lowercyg_disable;
extern int csync_lowercyg_used;
extern int csync_cygwin_case_check(const char *filename);
#endif

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

#endif /* CSYNC2_H */
