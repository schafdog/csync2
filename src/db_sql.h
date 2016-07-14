#ifndef DB_SQL_H
#define DB_SQL_H 1

#include "db_api.h"

int  db_sql_init(db_conn_p conn);

// Action
int db_sql_add_action(db_conn_p db, filename_p filename, const char *prefix_cmd, const char *logfile);
int db_sql_del_action(db_conn_p db, filename_p filename, const char *prefix_cmd);
int db_sql_remove_action_entry(db_conn_p db, filename_p filename, const char *command, const char *logfile);

// Dirty SQL
int db_sql_is_dirty(db_conn_p db, peername_p peername, filename_p filename,
		int *operation, int *mode);
void db_sql_force(db_conn_p db, const char *realname, int recursive);
int  db_sql_list_dirty(db_conn_p db, char **active_peers, const char *realname, int recursive);
textlist_p db_sql_get_dirty_hosts(db_conn_p);
textlist_p db_sql_get_dirty_by_peer_match(db_conn_p db, const char *myname, peername_p peername, int recursive, const char *patlist[], int numpat,
				    int (*get_dirty_by_peer) (filename_p filename, const char *pattern, int recursive));
textlist_p db_sql_get_dirty_hosts(db_conn_p db);
void db_sql_remove_dirty(db_conn_p db, peername_p peername, filename_p filename, int recursive);
textlist_p db_sql_find_dirty(db_conn_p db, int (*filter_dirty) (textlist_p *p_tl, filename_p filename, const char *localname, peername_p peername));
void db_sql_add_dirty_simple(db_conn_p db, const char *myname, peername_p peername, filename_p filename);
int db_sql_add_dirty(db_conn_p db, const char *file_new,
		     int new_force,
		     const char *myname, peername_p peername,
		     const char *operation, const char *checktxt,
		     const char *dev, const char *ino, const char *result_other,
		     operation_t op, int mode);
void db_sql_clear_operation(db_conn_p db, const char *myname, peername_p peername, filename_p filename);

textlist_p db_sql_get_old_operation(db_conn_p db, const char *checktxt,
				    peername_p peername, filename_p filename,
				    const char *device, const char *ino,
				    struct stat *st_file, int mode, BUF_P buffer,
				    check_old_operation_f check_old_operation);

// Both Files and dirty
void db_sql_mark(db_conn_p db, char *active_peerlist, const char *realname, int recursive);

/* 
 * File SQL
 */

int db_sql_check_file(db_conn_p db, const char *file,
		      const char *encoded,
		      int version, char **other,
		      char *checktxt, struct stat *file_stat,
		      BUF_P buffer, int *operation,
		      char **digest);
textlist_p db_sql_non_dirty_files_match(db_conn_p db, const char *pattern);
void db_sql_list_files(db_conn_p db);
void db_sql_list_file(db_conn_p db, filename_p filename, const char *myname, peername_p peername);
int db_sql_dir_count(db_conn_p db, const char *dirname);
textlist_p db_sql_find_file(db_conn_p db, int (*check_file) (filename_p filename, textlist_p *p_tl));
void db_sql_remove_file(db_conn_p db, filename_p filename, int recursive);
int db_sql_move_file(db_conn_p db, filename_p filename, const char *newname);
int db_sql_update_file(db_conn_p conn, filename_p encoded,
		       const char *checktxt_encoded,
		       struct stat *file_stat,
		       const char *digest);
int db_sql_insert_file(db_conn_p conn, filename_p encoded,
		       const char *checktxt_encoded,
		       struct stat *file_stat,
		       const char *digest);

// Special
textlist_p db_sql_check_file_same_dev_inode(db_conn_p db, filename_p filename, const char *checktxt, const char *digest, struct stat *st);

textlist_p db_sql_check_dirty_file_same_dev_inode(db_conn_p db,
						  peername_p peername,
						  filename_p filename,
						  const char *checktxt,
						  const char *digest,
						  struct stat *st);

int db_sql_upgrade_db(db_conn_p db);
int db_sql_update_format_v1_v2(db_conn_p db, const char *file, int recursive, int do_it);

/*
 * Hints 
 */
void db_sql_add_hint(db_conn_p db, const char *file, int recursive);
textlist_p db_sql_get_hints(db_conn_p db);
void db_sql_remove_hint(db_conn_p db, filename_p filename, int recursive);
void db_sql_list_hint(db_conn_p db);
int db_sql_update_path(filename_p filename, const char *newname);

// Special
void db_sql_list_sync(db_conn_p db);

// Commands
textlist_p db_sql_get_commands(db_conn_p db);
textlist_p db_sql_get_command_filename(db_conn_p db, const char *command, const char *logfile);


#endif
