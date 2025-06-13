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

#include "config.h"
#include <stdio.h>
#include <stdlib.h>
#include <sys/stat.h>
#include <inttypes.h>
#include <errno.h>
#include <stdarg.h>
#include <string.h>
#include <syslog.h>

typedef int operation_t;
typedef const char * filename_p;
typedef const char * peername_p;

#include <db_api.h>

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
#define INO_FORMAT "%"PRIu64
#else
#define DEV_FORMAT "%"PRIu64
#define INO_FORMAT "%"PRIu64
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
#define ERROR_DIRTY_LEN ((int)sizeof ERROR_DIRTY_STR - 1)

#include "error.h"

#define ASPRINTF(s, fmt, ...) do {\
	int __ret = asprintf(s, fmt, ##__VA_ARGS__);\
	if (__ret < 0) \
	  csync_fatal("Out of memory in asprintf at %s:%d\n", __FILE__, __LINE__); \
} while (0)

#define VASPRINTF(s, fmt, args...) do {\
	int __ret = vasprintf(s, fmt, ##args);\
	if (__ret < 0) \
	  csync_fatal("Out of memory in vasprintf at %s:%d\n", __FILE__, __LINE__); \
} while (0)


typedef void (*update_func)(db_conn_p db, const char *myname, const char *peer,
							const char **patlist, int patnum, int ip_version, int flags);

/* csync2.c */

int csync_start(int mode, int flags, int argc, char *argv[], update_func update_func,
				int listenfd, int cmd_db_version, int cmd_ip_version);

/* check.c */
#define DEV_INO_SAME 0
#define DEV_CHANGED 1
#define INO_CHANGED 2
#define DEV_MISSING 4
#define INO_MISSING 8
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

/* textlist implementation */

struct dirty_by_name {
    char *filename;
    char *op;
    int operation;
    char *other;
    char *checktxt;
    char *digest;
    int forced;
};

typedef struct dirty_by_peer *dirty_by_peer_p;

struct textlist {
    struct textlist *next;
    int operation;
    int intvalue;
    char *value;
    char *value2;
    char *value3;
    char *value4;
    char *value5;
    int num;
    char **values;
    void *data;
    union {
	dirty_by_peer_p *dirty_by_peer;
    };
    void (*destroy)(void *data);
};

typedef struct text_list *text_list_p;

static inline void textlist_add_struct(struct textlist **listhandle, void *data, void (*destroy) (void *))
{
    struct textlist *tmp = *listhandle;
    *listhandle = malloc(sizeof(struct textlist));
    (*listhandle)->intvalue = 0;
    (*listhandle)->data = data;
    (*listhandle)->destroy = destroy;
    (*listhandle)->next = tmp;
}    

static inline void textlist_add_var(struct textlist **listhandle, int intitem, int num, ...) {
    /* Initializing arguments to store all values after num */
    struct textlist *tmp = *listhandle;
    va_list arguments;

    *listhandle = malloc(sizeof(struct textlist));
    (*listhandle)->intvalue = intitem;
    (*listhandle)->num = num;
    (*listhandle)->values = calloc(num,sizeof(char*));
    (*listhandle)->data = NULL;
    (*listhandle)->destroy = NULL;
    va_start ( arguments, num );           
    /* Sum all the inputs; we still rely on the function caller to tell us how
     * many there are */
    for ( int x = 0; x < num; x++ ) {
	const char *item = va_arg ( arguments, char * ); 
	(*listhandle)->values[x] = (item  ? strdup(item)  : NULL);
    }
    va_end ( arguments );                  // Cleans up the list
    (*listhandle)->next = tmp;
}

static inline void textlist_add5(struct textlist **listhandle, const char *item, const char *item2, 
				 const char *item3, const char *item4, const char *item5,
				 int intitem, int operation)
{
	struct textlist *tmp = *listhandle;
	*listhandle = malloc(sizeof(struct textlist));
	(*listhandle)->intvalue = intitem;
	(*listhandle)->operation = operation;
	(*listhandle)->value  = (item  ? strdup(item)  : 0);
	(*listhandle)->value2 = (item2 ? strdup(item2) : 0);
	(*listhandle)->value3 = (item3 ? strdup(item3) : 0);
	(*listhandle)->value4 = (item4 ? strdup(item4) : 0);
	(*listhandle)->value5 = (item5 ? strdup(item5) : 0);
	(*listhandle)->next = tmp;
}

static inline void textlist_add4(struct textlist **listhandle, const char *item, const char *item2, const char *item3, 
				 const char *item4, int intitem)
{
    textlist_add5(listhandle, item, item2, item3, item4, 0, intitem, 0);
}

static inline void textlist_add(struct textlist **listhandle, const char *item, int intitem)
{
  textlist_add4(listhandle, item, 0, 0, 0, intitem);
}

static inline int textlist_in_list(struct textlist *listhandle, const char *item, int intitem) {
  while (listhandle) {
    if (!strcmp(listhandle->value, item)) {
      listhandle->intvalue = intitem;
      return 1;
    }
    listhandle = listhandle->next;
  };
  return 0;
}

static inline void textlist_add_new2(struct textlist **listhandle,
				     const char *item, const char *item2, int intitem)
{
    if (!(*listhandle) || !textlist_in_list(*listhandle, item, intitem)) {
		textlist_add(listhandle, item, intitem);
		(*listhandle)->value2 = (item2 ? strdup(item2) : 0);
		csync_log(LOG_DEBUG, 3, "Adding textlist_add_new: %s\n", item);
    }
    else {
		csync_log(LOG_DEBUG, 3, "Skipping textlist_add_new: %s\n", item);
	}
}

static inline void textlist_add_new(struct textlist **listhandle, const char *item, int intitem)
{
    textlist_add_new2(listhandle, item, 0, intitem);
}

static inline void textlist_add2(struct textlist **listhandle, const char *item, const char *item2, int intitem)
{
  textlist_add4(listhandle, item, item2, 0, 0, intitem);
}

static inline void textlist_add3(struct textlist **listhandle, const char *item, const char *item2, const char *item3, int intitem)
{
  textlist_add4(listhandle, item, item2, item3, 0, intitem);
}

static inline void textlist_add_new3(struct textlist **listhandle, filename_p filename, const char *checktxt, const char *operation)
{
    if (!(*listhandle) || !textlist_in_list(*listhandle, filename, 0)) {
	textlist_add3(listhandle, filename, checktxt, operation, 0);
	csync_log(LOG_DEBUG, 3, "Adding textlist_add_new3: %s\n", filename);
    }
    else {
	csync_log(LOG_DEBUG, 3, "Skipping textlist_add_new3: %s\n", filename);
  }
}

static inline void textlist_free(struct textlist *listhandle)
{
	struct textlist *next;
	while (listhandle != 0) {
		next = listhandle->next;
		free(listhandle->value);
		if (listhandle->value2)
			free(listhandle->value2);
		if ( listhandle->value3 )
			free(listhandle->value3);
		if ( listhandle->value4 )
			free(listhandle->value4);
		free(listhandle);
		listhandle = next;
	}
}

static inline void textlist_free_struct(struct textlist *listhandle)
{
    struct textlist *next;
    while (listhandle != 0) {
	next = listhandle->next;
	if (listhandle->data) 
	    listhandle->destroy(listhandle->data);
	free(listhandle);
	listhandle = next;
    }
}

#include "groups.h"

/* cfgfile_parser_processed.y - additional missing prototypes */
void csync_config_destroy_group(struct csync_group *group);
void csync_config_destroy(void);

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
extern char **g_active_peers;

#ifdef HAVE_LIBGNUTLS
extern int csync_conn_usessl;
#endif

#ifdef __CYGWIN__
extern int csync_lowercyg_disable;
extern int csync_lowercyg_used;
extern int csync_cygwin_case_check(filename_p filename);
#endif

static inline int lstat_strict(filename_p filename, struct stat *buf) {
#ifdef __CYGWIN__
	if (csync_lowercyg_disable && !csync_cygwin_case_check(filename)) {
		errno = ENOENT;
		return -1;
	}
#endif
	return lstat(filename, buf);
}

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

