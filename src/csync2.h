/*
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
#include <string.h>
#include <sys/stat.h>
#include <inttypes.h>
#include <errno.h>
#include <stdarg.h>

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
#define IGNORE_    128

#if __DARWIN_C_LEVEL
#define DEV_FORMAT "%u"
#define INO_FORMAT "%"PRIu64
#else
#define DEV_FORMAT "%"PRIu64
#define INO_FORMAT "%"PRIu64
#endif

#define DB_SCHEMA_VERSION 0

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

};

#define DEFAULT_PORT "30865" 
#define ERROR_DIRTY_STR "File is also marked dirty here!"
#define ERROR_DIRTY_LEN ((int)sizeof ERROR_DIRTY_STR - 1)

#define csync_fatal(fmt, ...) {\
  csync_debug(0,fmt, ##__VA_ARGS__);\
  exit(1);\
} while(0)

/* asprintf with test for no memory */
#define ASPRINTF(s, fmt, ...) do {\
	int __ret = asprintf(s, fmt, ##__VA_ARGS__);\
	if (__ret < 0) \
	  csync_fatal("Out of memory in asprintf at %s:%d\n", __FILE__, __LINE__); \
} while (0)

#define VASPRINTF(s, fmt, args...) do {\
	int __ret = vasprintf(s, fmt, ##args);\
	if (__ret < 0) \
	  csync_debug(-1,"Out of memory in vasprintf at %s:%d\n", __FILE__, __LINE__); \
} while (0)


/* csync2.c */

extern int match_peer(char **active_peers, const char *peer);

/* action.c */

extern void  csync_schedule_commands(db_conn_p db, const char *filename, int islocal);
extern void  csync_run_commands(db_conn_p db);

/* groups.c */

struct peer {
	const char *myname;
	const char *peername;
};

typedef struct  peer *peer_t; 

struct file_info {
  const char *filename;
  const char *filename_enc;
  const char *operation;
  const char *key_enc;
  const struct stat *stat;
  const int rc_stat;
};

typedef struct file_info *file_info_t; 

extern const struct csync_group *csync_find_next(const struct csync_group *g, const char *file);
extern int csync_match_file(const char *file);
extern void csync_check_usefullness(const char *file, int recursive);
extern int csync_match_file_host(const char *file, const char *myname, const char *peername, const char **keys);
extern struct peer *csync_find_peers(const char *file, const char *thispeer);
extern const char *csync_key(const char *hostname, const char *filename);
extern int csync_perm(const char *filename, const char *key, const char *hostname);


/* error.c */

extern void csync_printtime();
extern void csync_printtotaltime();
extern void csync_debug(int lv, const char *fmt, ...);

#define csync_debug_ping(N) \
csync_debug(N, "--> %s %d\n", __FILE__, __LINE__)


/* conn.c */

extern int conn_open(const char *peername, int ip_version);
extern int conn_get();
extern int conn_set(int infd, int outfd);
extern int conn_activate_ssl(int server_role);
extern int conn_check_peer_cert(db_conn_p db, const char *peername, int callfatal);
extern int conn_close();

extern int conn_read(void *buf, size_t count);
extern int conn_read_get_content_length(long *size);
extern int conn_write(const void *buf, size_t count);
size_t conn_gets_newline(char *s, size_t size, int remove_newline);

extern void conn_printf(const char *fmt, ...);
extern int conn_fgets(char *s, int size);
extern size_t conn_gets(char *s, size_t size);


/* db.c */

extern db_conn_p csync_db_open(const char *file);
extern void csync_db_close();

extern void csync_db_sql(db_conn_p db, const char *err, const char *fmt, ...);
extern void* csync_db_begin(db_conn_p db, const char *err, const char *fmt, ...);
extern int csync_db_next(void *vmx, const char *err,
		int *pN, const char ***pazValue, const char ***pazColName);
extern void csync_db_fin(void *vmx, const char *err);
extern const void * csync_db_colblob(void *stmtx,int col);
extern long  csync_db_long(void *stmtx,int col, long *result);
extern char *db_default_database(char *dbdir, char *myhostname, char *cfg_name);
extern const char *csync_db_escape(const char *);
extern const char *csync_db_quote(const char *filename); 
extern const char *csync_db_escape_quote(const char *filename); 



#define SQL(db, e, s, rest...) csync_db_sql(db, e, s, ##rest)

extern const char* (*db_decode) (const char *value); 
extern const char* (*db_encode) (const char *value); 

#define SQL_BEGIN(db, e, s, ...)			\
{ \
	char *SQL_ERR = e; \
	void *SQL_VM = csync_db_begin(db, SQL_ERR, s, ##__VA_ARGS__);	\
	int SQL_COUNT = 0; \
\
	if (SQL_VM) { \
		while (1) { \
			const char **dataSQL_V, **dataSQL_N; \
			int SQL_C; \
			if ( !csync_db_next(SQL_VM, SQL_ERR,		\
						&SQL_C, &dataSQL_V, &dataSQL_N) ) break; \
			SQL_COUNT++;

#define SQL_V(col)				\
    (csync_db_colblob(SQL_VM,(col)))

#define SQL_V_long(col, result)			\
    (csync_db_long(SQL_VM,(col), (result)))

#define SQL_FIN }{

#define SQL_END \
		} \
		    csync_db_fin(SQL_VM, SQL_ERR);	\
	} \
}

extern int db_blocking_mode;
extern int db_sync_mode;


/* rsync.c */

extern int csync_rs_check(const char *filename, int isreg);
extern void csync_rs_sig(const char *filename);
extern int csync_rs_delta(const char *filename);
extern int csync_rs_patch(const char *filename);


/* checktxt.c */

//extern const char *csync_genchecktxt(const struct stat *st, const char *filename, int flags);
extern const char *csync_genchecktxt_version(const struct stat *st, const char *filename, int flags, int version);
extern int csync_cmpchecktxt(const char *a, const char *b);
extern int csync_cmpchecktxt_component(const char *a, const char *b);
int csync_get_checktxt_version(const char *value);

/* check.c */
struct textlist;
/* check.c */
#define OP_NEW      1
#define OP_MKDIR    2
#define OP_MKFIFO   4
#define OP_MKCHR    8
#define OP_MOVE     16
#define OP_HARDLINK 32
#define OP_RM       64
#define OP_MOD	    128
#define OP_MARK	    256
#define OP_UNDEF    512

extern const char *csync_mode_op_str(int st_mode, int op);
extern operation_t csync_operation(const char *operation);
extern const char *csync_operation_str(operation_t op);

extern void csync_hint(db_conn_p db, const char *file, int recursive);
extern void csync_check(db_conn_p db, const char *filename, int recursive, int init_run, int version, int flags);
/* Single file checking but returns possible operation */ 
extern int  csync_check_single(db_conn_p db, const char *filename, int init_run, int version); 
extern void csync_mark(db_conn_p db, const char *file, const char *thispeer, const char *peerfilter, operation_t op, const char *checktxt, const char *dev, const char *ino, int mode);
extern struct textlist *csync_mark_hardlinks(db_conn_p db, const char *filename, struct stat *st, struct textlist *tl);
extern char *csync_check_path(char *filename); 
extern int   csync_check_pure(const char *filename);
typedef struct textlist *(*textlist_loop_t)(const char *filename, struct stat *st, struct textlist *tl);
struct textlist *csync_check_move(db_conn_p db, const char *peername, const char *filename, const char* checktxt, const char *digest, struct stat *st);
struct textlist *csync_check_link_move(db_conn_p db, const char *peername, const char *filename,
				       const char* checktxt, operation_t op, const char *digest,
				       struct stat *st, textlist_loop_t loop);



/* update.c */

void cmd_printf(const char *cmd, const char *key, 
		const char *filename, const char *secondname,
		const struct stat *st, const char *uidptr, const char* gidptr);
int csync_check_mod(db_conn_p db, const char *file, int recursive, int ignnoent, int init_run, int version, int flags, int *count_dirty);
extern void csync_update(db_conn_p db, const char *myname, char **peers, const char **patlist, int patnum, int recursive,
			 int dry_run, int ip_version, int db_version);
extern int csync_diff(db_conn_p db, const char *myname, const char *peername, const char *filename, int ip_version);
extern int csync_insynctest(db_conn_p db, const char *myname, const char *peername, int init_run, int auto_diff, const char *filename, int ip_version);
extern int csync_insynctest_all(db_conn_p db, int init_run, int auto_diff, const char *filename, int ip_version, char *active_peers[]);
extern void csync_remove_old();
int csync_update_file_sig_rs_diff(const char *peername, const char *key_enc,
				  const char *filename, const char *filename_enc,
				  const struct stat *st, 
				  const char *uidptr, const char *gidptr,
				  const char *chk_local,
				  const char *digest,
				  int *last_conn_status, 
				  int log_level);


/* daemon.c */

extern void csync_daemon_session(db_conn_p db, int db_version, int protocol_version, int mode);
extern int csync_copy_file(int fd_in, int fd_out);

/* ringbuffer.c */
extern void  ringbuffer_init();
extern char *ringbuffer_malloc(size_t length);
extern char *ringbuffer_strdup(const char *cpy);
void         ringbuffer_add(const char* string, void (*free_fn) (void *) );
extern void  ringbuffer_destroy();
extern int   ringbugger_getcount();

/* getrealfn.c */

extern char *getrealfn(const char *filename);


/* urlencode.c */

/* only use this functions if you understood the sideeffects of the ringbuffer
 * used to allocate the return values.
 */
const char *url_encode(const char *in);
const char *url_decode(const char *in);


/* prefixsubst.c */

/* another ringbuffer here. so use it with care!! */
const char *prefixsubst(const char *in);
const char *prefixencode(const char *filename);

/* textlist implementation */

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
    (*listhandle)->values = calloc(sizeof(char*),num);
    (*listhandle)->data = NULL;
    (*listhandle)->destroy = NULL;
    va_start ( arguments, num );           
    /* Sum all the inputs; we still rely on the function caller to tell us how
     * many there are */
    for ( int x = 0; x < num; x++ ) {
	char *item = va_arg ( arguments, char * ); 
	(*listhandle)->values[x] = (item  ? strdup(item)  : 0);
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
	csync_debug(3, "Adding textlist_add_new: %s\n", item);
    }
    else {
      csync_debug(3, "Skipping textlist_add_new: %s\n", item);
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

static inline void textlist_add_new3(struct textlist **listhandle, const char *filename, const char *checktxt, const char *operation)
{
    if (!(*listhandle) || !textlist_in_list(*listhandle, filename, 0)) {
	textlist_add3(listhandle, filename, checktxt, operation, 0);
	csync_debug(3, "Adding textlist_add_new3: %s\n", filename);
    }
    else {
      csync_debug(3, "Skipping textlist_add_new3: %s\n", filename);
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

void csync_config_destroy();

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
        int port;
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
	const char *command;
};

struct csync_group_action {
	struct csync_group_action *next;
	struct csync_group_action_pattern *pattern;
	struct csync_group_action_command *command;
	const char *logfile;
	int do_local;
	int do_local_only;
};

struct csync_group {
	struct csync_group *next;
	struct csync_group_host *host;
	struct csync_group_pattern *pattern;
	struct csync_group_action *action;
	const char *key, *myname, *gname;
	int auto_method, local_slave;
	const char *backup_directory;
	int backup_generations;
	int hasactivepeers;
};

struct csync_prefix {
	const char *name, *path;
	struct csync_prefix *next;
};

struct csync_nossl {
	struct csync_nossl *next;
	const char *pattern_from;
	const char *pattern_to;
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
extern char *csync_tempdir;

extern char *csync_database;

extern int csync_error_count;
extern int csync_debug_level;
extern int csync_syslog;
extern FILE *csync_debug_out;

extern long csync_last_printtime;
extern FILE *csync_timestamp_out;

extern int csync_quiet;
extern int csync_messages_printed;
extern int csync_server_child_pid;
extern int csync_timestamps;
extern int csync_new_force;

extern char myhostname[];
extern char *csync_port;
extern char *csync_confdir;
extern char *active_grouplist;
extern char *active_peerlist;

extern char *cfgname;

extern int csync_ignore_uid;
extern int csync_ignore_gid;
extern int csync_ignore_mod;

extern int csync_dump_dir_fd;

extern int csync_compare_mode;

#ifdef HAVE_LIBGNUTLS
extern int csync_conn_usessl;
#endif

#ifdef __CYGWIN__
extern int csync_lowercyg_disable;
extern int csync_lowercyg_used;
extern int csync_cygwin_case_check(const char *filename);
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

static inline char *on_cygwin_lowercase(char *s) {
#ifdef __CYGWIN__
	if (!csync_lowercyg_disable) {
		int i;
		for (i=0; s[i]; i++)
			s[i] = tolower(s[i]);
	}
	csync_lowercyg_used = 1;
#endif
	return s;
}

#endif /* CSYNC2_H */

