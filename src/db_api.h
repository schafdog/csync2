#ifndef DB_API_H
#define DB_API_H

#define DB_SQLITE2 1 
#define DB_SQLITE3 2 
#define DB_MYSQL   3
#define DB_PGSQL   4

#define DB_OK                  0
#define DB_ERROR               1
#define DB_BUSY                2
#define DB_NO_CONNECTION       3
#define DB_NO_CONNECTION_REAL  4
#define DB_ROW  100
#define DB_DONE 101


#ifdef __DARWIN_C_LEVEL
#define SO_FILE_EXT ".dylib"
#else
#define SO_FILE_EXT ".so"
#endif
#include "buffer.h"

typedef struct db_conn_t *db_conn_p;
typedef struct db_stmt_t *db_stmt_p;

#include "csync2.h"

struct textlist;
typedef struct textlist *textlist_p;

typedef textlist_p (*check_old_operation_f) (const char *file,
					     int mode,
					     struct stat *st_file, 
					     const char *old_filename,
					     const char *old_other,
					     operation_t old_operation,
					     const char *old_checktxt,
					     const char *peername,
					     BUF_P buffer);

struct db_conn_t {
    void *private;
    int         (*exec)   (db_conn_p conn, const char* exec);
    int         (*prepare)(db_conn_p conn, const char *statement, db_stmt_p *stmt, char **value);
    void        (*close)  (db_conn_p conn);
    void        (*logger) (int lv, const char *fmt, ...);
    const char* (*errmsg) (db_conn_p conn);
    int         (*upgrade_to_schema) (db_conn_p db, int version);
    const char* (*escape) (db_conn_p conn, const char *string);
    void        (*free)   (db_conn_p conn, const char *escaped);
    void        (*shutdown) ();
    void        (*mark)(db_conn_p conn, char *active_peerlist, const char *realname, int recursive);

    // query functions 
    int         (*list_dirty) (db_conn_p conn, char **active_peers, const char *realname, int recursive);
    void        (*list_hint)  (db_conn_p conn);
    void        (*list_files) (db_conn_p conn);
    void        (*list_file)  (db_conn_p conn, const char *filename, const char *myname, const char *peername);
    void        (*list_sync)  (db_conn_p conn /*, const char *filename, const char *peername */);

    int         (*is_dirty)  (db_conn_p conn, const char *filename, const char *peername, int *operation, int *mode);
    void        (*force) (db_conn_p conn, const char *realname, int recursive);
    int         (*upgrade_db) (db_conn_p conn);
    int         (*update_format_v1_v2) (db_conn_p conn, const char *filename, int recursive, int do_it);
    void        (*add_hint)    (db_conn_p conn, const char *filename, int recursive);
    void        (*remove_hint) (db_conn_p conn, const char *filename, int recursive);
    void        (*remove_file) (db_conn_p conn, const char *filename, int recursive);
    void        (*delete_file) (db_conn_p conn, const char *filename, int recursive);
    textlist_p  (*find_dirty) (db_conn_p conn, int (*filter_dirty) (const char *filename,
								    const char *localname, const char *peername));
    textlist_p  (*find_file) (db_conn_p conn, int (*filter_file) (const char *filename));
    int         (*add_dirty) (db_conn_p conn, const char *file_new, int csync_new_force, const char *myname, const char *peername,
			      const char *operation, const char *checktxt, const char *dev, const char *ino, const char *result_other,
			      int op, int mode);
    
    void        (*remove_dirty)    (db_conn_p conn, const char *peername, const char *filename, int recursive);
    
//    textlist_p  (*get_dirty_by_peer) (db_conn_p db, const char *myname, const char *peername);
    textlist_p  (*get_dirty_by_peer_match) (db_conn_p db, const char *myname, const char *peername, int recursive, const char *patlist[], int num,
					    int (*match_func) (const char *file, const char *pattern, int recursive));

    void        (*clear_dirty)     (db_conn_p conn, const char *peername, const char *filename, int recursive);
    void        (*clear_operation) (db_conn_p conn, const char *myname, const char *peername, const char *filename, int recursive);

    textlist_p  (*get_old_operation) (db_conn_p db, const char *checktxt,
				      const char *peername, filename_p filename, 
				      const char *device, const char *ino, BUF_P buffer);

    textlist_p  (*get_commands) (db_conn_p conn);
    textlist_p  (*get_command_filename) (db_conn_p conn, const char *filename, const char *logfile);
    textlist_p  (*get_hosts) (db_conn_p conn); 
    textlist_p  (*get_hints) (db_conn_p conn); 

    int         (*update_file) (db_conn_p conn, filename_p encoded, const char *checktxt_encoded, struct stat *file_stat,
				const char *digest);
    int         (*insert_file) (db_conn_p conn, filename_p encoded, const char *checktxt_encoded, struct stat *file_stat,
				const char *digest);
    int         (*check_delete) (db_conn_p conn, filename_p filename, int recursive, int init_run);

    int         (*del_action)  (db_conn_p conn, filename_p filename, const char *prefix_command);
    int         (*add_action)  (db_conn_p conn, filename_p filename, const char *prefix_command, const char *logfile);
    int         (*remove_action_entry)  (db_conn_p conn, filename_p filename, const char *command, const char *logfile);

    int        (*check_file) (db_conn_p db, const char *file,
			      const char *enc, int version, char **other,
			      char *checktxt, struct stat *file_stat,
			      BUF_P buffer, int *operation,
			      char **digest);
		
    textlist_p (*check_file_same_dev_inode) (db_conn_p db, filename_p filename, const char *checktxt, const char *digest, struct stat *st);
    textlist_p (*check_dirty_file_same_dev_inode) (db_conn_p db, peername_p peername, filename_p filename,
						   const char *checktxt, const char *digest, struct stat *st);
    textlist_p (*non_dirty_files_match) (db_conn_p db, const char *pattern);
    textlist_p (*get_dirty_hosts) (db_conn_p db);
    int (*dir_count) (db_conn_p db, const char *dirname);
    int (*move_file) (db_conn_p db, const char *oldfile, const char *newfile);
};

struct db_stmt_t {
  void *private;
  void *private2;
  db_conn_p db;
  const char *    (*get_column_text) (db_stmt_p vmx, int column);
  const void*     (*get_column_blob) (db_stmt_p vmx, int column);
  int             (*get_column_int)  (db_stmt_p vmx, int column);
  int       (*next) (db_stmt_p stmt);
  int       (*close)(db_stmt_p stmt);
};

//struct db_conn *db_conn;

int       db_open(const char *file, int type, db_conn_p *db);
void      db_close();
void      db_conn_close(db_conn_p conn);

int       db_exec(db_conn_p conn, const char* exec);
int       db_exec2(db_conn_p conn, const char* exec, void (*callback)(void *, int, int), void *data, const char **err);

int       db_prepare_stmt(db_conn_p conn, const char *statement, db_stmt_p *stmt, char **value);

const char *    db_stmt_get_column_text(db_stmt_p stmt, int column);
int       db_stmt_get_column_int(db_stmt_p  stmt, int column);
int       db_stmt_next (db_stmt_p stmt);
int       db_stmt_close(db_stmt_p stmt);

void      db_set_logger(db_conn_p conn, void (*logger)(int lv, const char *fmt, ...));
int       db_schema_version(db_conn_p db);
int       db_upgrade_to_schema(db_conn_p db, int version);
const char *db_errmsg(db_conn_p conn);
const char *db_escape(db_conn_p conn, const char *string);
#endif
