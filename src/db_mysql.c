/*
 *  Copyright (C) 2010  Dennis Schafroth <dennis@schafroth.com>>
 *  Copyright (C) 2010  Johannes Thoma <johannes.thoma@gmx.at>
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

#include "csync2.h"
#include <stdio.h>
#include <stdarg.h>
#include <stdlib.h>
#include <unistd.h>
#include <signal.h>
#include <time.h>
#include <string.h>
#include "db_api.h"
#include "db_mysql.h"
#include "dl.h"

#ifdef HAVE_MYSQL
#ifdef HAVE_MYSQL_H
#include <mysql.h>
#include <mysqld_error.h>
#elif HAVE_MYSQL_MYSQL_H
#include <mysql/mysql.h>
#include <mysql/mysqld_error.h>
#include "db_sql.h"
#endif 


static struct db_mysql_fns {
    MYSQL *(*mysql_init_fn)(MYSQL*);
    MYSQL *(*mysql_real_connect_fn)(MYSQL *, const char *, const char *, const char *, const char *, unsigned int, const char *, unsigned long);
    int (*mysql_errno_fn)(MYSQL*);
    int (*mysql_query_fn)(MYSQL*, const char*);
    void (*mysql_close_fn)(MYSQL*);
    const char *(*mysql_error_fn)(MYSQL *);
    MYSQL_RES *(*mysql_store_result_fn)(MYSQL *);
    unsigned int (*mysql_num_fields_fn)(MYSQL_RES *);
    MYSQL_ROW (*mysql_fetch_row_fn)(MYSQL_RES *);
    void (*mysql_free_result_fn)(MYSQL_RES *);
    unsigned int (*mysql_warning_count_fn)(MYSQL *);
    unsigned long (*mysql_real_escape_string_fn)(MYSQL *mysql, char *to, const char *from, unsigned long length);
    void (*mysql_library_end_fn)();
    long (*mysql_affected_rows_fn)(MYSQL*);
} f;

static void *dl_handle;

#define SO_FILE     "libmariadb" SO_FILE_EXT
#define SO_FILE_ALT "libmariadbclient" SO_FILE_EXT

static void db_mysql_dlopen(void)
{
    csync_log(LOG_DEBUG, 3, "Opening shared library %s\n", SO_FILE);
    dl_handle = dlopen(SO_FILE, RTLD_LAZY);
    if (dl_handle == NULL && (dl_handle = dlopen(SO_FILE_ALT, RTLD_LAZY)) == NULL) {
	csync_fatal("Could not open " SO_FILE ": %s\nPlease install Mysql/Mariadb client library or use other database (sqlite, postgresql)\n",
		    dlerror());
    }

    csync_log(LOG_DEBUG, 3, "Reading symbols from shared library " SO_FILE "\n");

    LOOKUP_SYMBOL(dl_handle, mysql_init);
    LOOKUP_SYMBOL(dl_handle, mysql_real_connect);
    LOOKUP_SYMBOL(dl_handle, mysql_errno);
    LOOKUP_SYMBOL(dl_handle, mysql_query);
    LOOKUP_SYMBOL(dl_handle, mysql_close);
    LOOKUP_SYMBOL(dl_handle, mysql_error);
    LOOKUP_SYMBOL(dl_handle, mysql_store_result);
    LOOKUP_SYMBOL(dl_handle, mysql_num_fields);
    LOOKUP_SYMBOL(dl_handle, mysql_fetch_row);
    LOOKUP_SYMBOL(dl_handle, mysql_free_result);
    LOOKUP_SYMBOL(dl_handle, mysql_warning_count);
    LOOKUP_SYMBOL(dl_handle, mysql_real_escape_string);
    LOOKUP_SYMBOL(dl_handle, mysql_affected_rows);
    //LOOKUP_SYMBOL(dl_handle, mysql_library_end);
}


int db_mysql_parse_url(char *url, char **host, char **user, char **pass, char **database, unsigned int *port, char **unix_socket) 
{
  char *pos = strchr(url, '@'); 
  if (pos) {
    // Optional user/passwd
    *(pos) = 0;
    *(user) = url;
    url = pos + 1;

    pos = strchr(*user, ':');
    if (pos) {
      *(pos) = 0;
      *(pass) = (pos +1);
    }
    else
      *pass = 0;
  }
  else {
    // No user/pass password 
    *user = 0;
    *pass = 0;
  }
  *host = url;
  pos = strchr(*host, '/');
  if (pos) {
    // Database
    (*pos) = 0;
    *database = pos+1;
  }
  else {
    *database = 0;
  }
  pos = strchr(*host, ':');
  if (pos) {
    (*pos) = 0;
    *port = atoi(pos+1);
  }
  *unix_socket = 0;
  return DB_OK;
}

#endif

#ifdef HAVE_MYSQL

void db_mysql_close(db_conn_p conn)
{
  if (!conn)
    return;
  if (!conn->private) 
    return;
  f.mysql_close_fn(conn->private);
  conn->private = 0;
//  csync_log(LOG_DEBUG, "freeing db_conn_p %p");
//  free(conn);
  // TODO wrong place
  //f.mysql_library_end_fn();
}

const char *db_mysql_errmsg(db_conn_p conn)
{
  if (!conn)
    return "(no connection)";
  if (!conn->private)
    return "(no private data in conn)";
  return f.mysql_error_fn(conn->private);
}

static void print_warnings(int level, MYSQL *m)
{
  int rc;
  MYSQL_RES *res;
  int fields;
  MYSQL_ROW row;

  if (m == NULL)
    csync_fatal("print_warnings: m is NULL");

  rc = f.mysql_query_fn(m, "SHOW WARNINGS");
  if (rc != 0)
    csync_fatal("print_warnings: Failed to get warning messages");

  res = f.mysql_store_result_fn(m);
  if (res == NULL)
    csync_fatal("print_warnings: Failed to get result set for warning messages");

  fields = f.mysql_num_fields_fn(res);
  if (fields < 2)
    csync_fatal("print_warnings: Strange: show warnings result set has less than 2 rows");

  row = f.mysql_fetch_row_fn(res);

  while (row) {
      csync_log(LOG_WARNING, level, "MySql Warning: %s\n", row[2]);
      row = f.mysql_fetch_row_fn(res);
  }

  f.mysql_free_result_fn(res);
}

int db_mysql_exec(db_conn_p conn, const char *sql) 
{
  int rc = DB_ERROR;
  if (!conn)
    return DB_NO_CONNECTION; 

  if (!conn->private) {
    /* added error element */
    return DB_NO_CONNECTION_REAL;
  }
  rc = f.mysql_query_fn(conn->private, sql);
  /* Treat warnings as errors. For example when a column is too short this should
     be an error. */

  conn->affected_rows = f.mysql_affected_rows_fn(conn->private);

  if (rc == ER_LOCK_DEADLOCK) {
      return DB_BUSY;
  }
  if (f.mysql_warning_count_fn(conn->private) > 0) {
    print_warnings(1, conn->private);
    return DB_ERROR;
  }
  /* On error parse, create DB ERROR element */
  return rc;
}

int db_mysql_prepare(db_conn_p conn, const char *sql, db_stmt_p *stmt_p, 
		     char **pptail) {
  int rc = DB_ERROR;

  *stmt_p = NULL;

  if (!conn)
    return DB_NO_CONNECTION;

  if (!conn->private) {
    /* added error element */
    return DB_NO_CONNECTION_REAL;
  }
  db_stmt_p stmt = malloc(sizeof(*stmt));
  /* TODO avoid strlen, use configurable limit? */
  rc = f.mysql_query_fn(conn->private, sql);
  
/* Treat warnings as errors. For example when a column is too short this should
   be an error. */

  if (f.mysql_warning_count_fn(conn->private) > 0) {
    print_warnings(1, conn->private);
    return DB_ERROR;
  }

  MYSQL_RES *mysql_stmt = f.mysql_store_result_fn(conn->private);
  if (mysql_stmt == NULL) {
    csync_error(2, "Error in mysql_store_result: %s", f.mysql_error_fn(conn->private));
    return DB_ERROR;
  }

/* Treat warnings as errors. For example when a column is too short this should
   be an error. */

  if (f.mysql_warning_count_fn(conn->private) > 0) {
    print_warnings(1, conn->private);
    return DB_ERROR;
  }

  stmt->private = mysql_stmt;
  /* TODO error mapping / handling */
  *stmt_p = stmt;
  stmt->get_column_text = db_mysql_stmt_get_column_text;
  stmt->get_column_blob = db_mysql_stmt_get_column_blob;
  stmt->get_column_int = db_mysql_stmt_get_column_int;
  stmt->next = db_mysql_stmt_next;
  stmt->close = db_mysql_stmt_close;
  stmt->db = conn;
  return DB_OK;
}

const void* db_mysql_stmt_get_column_blob(db_stmt_p stmt, int column) {
  if (!stmt || !stmt->private2) {
    return 0;
  }
  MYSQL_ROW row = stmt->private2;
  return row[column];
}

const char *db_mysql_stmt_get_column_text(db_stmt_p stmt, int column) {
  if (!stmt || !stmt->private2) {
    return 0;
  }
  MYSQL_ROW row = stmt->private2;
  return row[column];
}

int db_mysql_stmt_get_column_int(db_stmt_p stmt, int column) {
  const char *value = db_mysql_stmt_get_column_text(stmt, column);
  if (value)
    return atoi(value);
  /* error mapping */
  return 0;
}


int db_mysql_stmt_next(db_stmt_p stmt)
{
  MYSQL_RES *mysql_stmt = stmt->private;
  stmt->private2 = f.mysql_fetch_row_fn(mysql_stmt);
  /* error mapping */ 
  if (stmt->private2)
    return DB_ROW;
  return DB_DONE;
}

int db_mysql_stmt_close(db_stmt_p stmt)
{
  MYSQL_RES *mysql_stmt = stmt->private;
  f.mysql_free_result_fn(mysql_stmt);
  free(stmt);
  return DB_OK; 
}

#define FILE_LENGTH 250
#define HOST_LENGTH  50
int db_mysql_upgrade_to_schema(db_conn_p conn, int version)
{
    csync_log(LOG_DEBUG, 2, "Upgrading database schema to version %d.\n", version);

/* We want proper logging, so use the csync sql function instead
 * of that from the database layer.
 */
    csync_db_sql(conn, "Creating host table", 
		 "CREATE TABLE `host` ("
		 "  `host` varchar(%u) DEFAULT NULL,"
		 "  `status`  int,"
		 "  KEY `host` (`host`)"
		 ") ENGINE=InnoDB CHARACTER SET utf8 COLLATE utf8_bin", HOST_LENGTH);

    csync_db_sql(conn, NULL, /*"Creating action table" */
		 "CREATE TABLE `action` ("
		 "  `filename` varchar(%u) DEFAULT NULL,"
		 "  `command`  text,"
		 "  `logfile` text,"
		 "  KEY `filename` (`filename`(%u),`command`(%u))"
		 ") ENGINE=InnoDB CHARACTER SET utf8 COLLATE utf8_bin", FILE_LENGTH, FILE_LENGTH, FILE_LENGTH);

    csync_db_sql(conn, NULL, /* "Creating dirty table" */ 
		 "CREATE TABLE `dirty` ("
		 //		"  `id`        bigint        AUTO_INCREMENT,"
		 "  filename  varchar(%u)  DEFAULT NULL,"
		 "  forced    int 	   DEFAULT NULL,"
		 "  myname    varchar(%u)  DEFAULT NULL,"
		 "  peername  varchar(%u)  DEFAULT NULL,"
		 "  operation varchar(100) DEFAULT NULL,"
		 "  op 	      int	   DEFAULT NULL,"
		 "  checktxt  varchar(200) DEFAULT NULL,"
		 "  device    bigint       DEFAULT NULL,"
		 "  inode     bigint       DEFAULT NULL,"
		 "  other     varchar(%u)  DEFAULT NULL,"
		 "  file_id   bigint       DEFAULT NULL,"
		 "  digest    varchar(130) DEFAULT NULL,"
		 "  mode      int	   DEFAULT NULL,"
		 "  mtime     int    	   DEFAULT NULL,"
		 "  type      int    	   DEFAULT NULL,"
		 "  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,"
		 "  UNIQUE KEY `filename_peer` (`filename`(%u),`peername`)"
		 //		"  KEY `dirty_host` (`peername`(10))"
		 ") ENGINE=InnoDB CHARACTER SET utf8 COLLATE utf8_bin", FILE_LENGTH, HOST_LENGTH, HOST_LENGTH, FILE_LENGTH, FILE_LENGTH);

    csync_db_sql(conn, NULL, /* "Creating file table", */
		 "CREATE TABLE `file` ("
		 //		"  `id`       bigint AUTO_INCREMENT,"
		 //		"  `parent`   bigint DEFAULT NULL,"
		 "  filename varchar(%u)  DEFAULT NULL,"
		 "  hostname varchar(%u)  DEFAULT NULL,"
		 "  checktxt varchar(200) DEFAULT NULL,"
		 "  device   bigint 	  DEFAULT NULL,"
		 "  inode    bigint 	  DEFAULT NULL,"
		 "  size     bigint 	  DEFAULT NULL,"
		 "  mode     int    	  DEFAULT NULL,"
		 "  mtime    int    	  DEFAULT NULL,"
		 "  type     int    	  DEFAULT NULL,"
		 "  digest   varchar(130) DEFAULT NULL,"
		 "  UNIQUE KEY `hostname_filename` (`hostname` (%u), `filename`(%u))"
		 ") ENGINE=InnoDB CHARACTER SET utf8 COLLATE utf8_bin", FILE_LENGTH, HOST_LENGTH, HOST_LENGTH, FILE_LENGTH);

    csync_db_sql(conn, NULL, /* "Creating hint table", */
		     "CREATE TABLE `hint` ("
		 "  `filename` varchar(%u) DEFAULT NULL,"
		 "  `recursive` int(11)    DEFAULT NULL"
		 ") ENGINE=InnoDB CHARACTER SET utf8 COLLATE utf8_bin", FILE_LENGTH);

    csync_db_sql(conn, NULL, /* "Creating x509_cert table", */
		 "CREATE TABLE `x509_cert` ("
		 "  `peername` varchar(50)  DEFAULT NULL,"
		 "  `certdata` varchar(255) DEFAULT NULL,"
		 "  UNIQUE KEY `peername` (`peername`)"
		 ") ENGINE=InnoDB");

/* csync_db_sql does a csync_fatal on error, so we always return DB_OK here. */
    return DB_OK;
}

const char* db_mysql_escape(db_conn_p conn, const char *string) 
{
  int rc = DB_ERROR;

  if (!conn)
    return 0; 
  if (!conn->private)
    return 0;
  if (string == 0)
    return 0; 

  size_t length = strlen(string);
  char *escaped_buffer = ringbuffer_malloc(2*length+1);
  rc = f.mysql_real_escape_string_fn(conn->private, escaped_buffer, string, length);

  return escaped_buffer;
}

int db_mysql_open(const char *file, db_conn_p *conn_p)
{
#ifdef HAVE_MYSQL
  db_mysql_dlopen();

  MYSQL *db = f.mysql_init_fn(0);
  char *host = 0, *user = 0, *pass = 0, *database = 0, *unix_socket = 0;
  unsigned int port = 0;
  char db_url[strlen(file)+1];
  char *create_database_statement = 0;

  strcpy(db_url, file);
  int rc = db_mysql_parse_url(db_url, &host, &user, &pass, &database, &port, &unix_socket);
  if (rc != DB_OK) {
    return rc;
  }

  if (f.mysql_real_connect_fn(db, host, user, pass, database, port, unix_socket, 0) == NULL) {
    if (f.mysql_errno_fn(db) == ER_BAD_DB_ERROR) {
      if (f.mysql_real_connect_fn(db, host, user, pass, NULL, port, unix_socket, 0) != NULL) {
	ASPRINTF(&create_database_statement, "create database %s", database);

	csync_log(LOG_DEBUG, 2, "creating database %s\n", database);
        if (f.mysql_query_fn(db, create_database_statement) != 0)
          csync_fatal("Cannot create database %s: Error: %s\n", database, f.mysql_error_fn(db));
	free(create_database_statement);

	f.mysql_close_fn(db);
	db = f.mysql_init_fn(0);

        if (f.mysql_real_connect_fn(db, host, user, pass, database, port, unix_socket, 0) == NULL)
          goto fatal;
      }
    } else
fatal:
      csync_fatal("Failed to connect to database: Error: %s\n", f.mysql_error_fn(db));
  }

  db_conn_p conn = calloc(1, sizeof(*conn));
  if (conn == NULL) {
    return DB_ERROR;
  }
  *conn_p = conn;
  // Setup common SQL statements. Override where needed
  db_sql_init(conn);

  conn->private = db;
  conn->close   = db_mysql_close;
  conn->exec    = db_mysql_exec;
  conn->prepare = db_mysql_prepare;
  conn->errmsg  = db_mysql_errmsg;
  conn->upgrade_to_schema = db_mysql_upgrade_to_schema;
  conn->escape  = db_mysql_escape;
  //  conn->free    = db_mysql_free;
  conn->shutdown = f.mysql_library_end_fn;

  return rc;
#else
  return DB_ERROR;
#endif
}



#endif
