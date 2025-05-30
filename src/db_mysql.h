/* -*- c-file-style: "k&r"; c-basic-offset: 4; tab-width: 4; indent-tabs-mode: t -*-
 *
 */
#ifndef DB_MYSQL_H
#define DB_MYSQL_H

/* public */
int   db_mysql_open(const char *file, db_conn_p *conn_p);
/* Private */
void  db_mysql_close(db_conn_p db_conn);
int   db_mysql_exec(db_conn_p conn, const char *sql);
int   db_mysql_prepare(db_conn_p conn, const char *sql, db_stmt_p *stmt_p, char **pptail);
int   db_mysql_stmt_next(db_stmt_p stmt);
const void* db_mysql_stmt_get_column_blob(db_stmt_p stmt, int column);
const char *db_mysql_stmt_get_column_text(db_stmt_p stmt, int column);
int   db_mysql_stmt_get_column_int(db_stmt_p stmt, int column);
int   db_mysql_stmt_close(db_stmt_p stmt);
const char *db_mysql_errmsg(db_conn_p db_conn);
int   db_mysql_upgrade_to_schema(db_conn_p conn, int version);
int   db_mysql_schema_version(db_conn_p conn);
const char *db_mysql_escape(db_conn_p db_conn, const char *from);

#endif
