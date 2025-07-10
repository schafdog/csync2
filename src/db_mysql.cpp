/* -*- c-file-style: "k&r"; c-basic-offset: 4; tab-width: 4; indent-tabs-mode: t -*-
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

#include "csync2.hpp"
#include <stdio.h>
#include <stdarg.h>
#include <stdlib.h>
#include <unistd.h>
#include <signal.h>
#include <time.h>
#include <string.h>
#include "database_mysql_v2.hpp"
#include "database_v2.hpp"
#include "db_api.hpp"
#include "db.hpp"
#include "db_mysql.hpp"
#include "dl.hpp"
#include "ringbuffer.hpp"
#include "utils.hpp"

#ifdef HAVE_MYSQL
#ifdef HAVE_MYSQL
#include <mysql.h>
#include <mysqld_error.h>
#include "db_sql.hpp"
#elif HAVE_MYSQL_MYSQL_H
#include <mysql/mysql.h>
#include <mysql/mysqld_error.h>
#include "db_sql.hpp"
#endif

static struct db_mysql_fns {
	MYSQL* (*mysql_init_fn)(MYSQL*);
	MYSQL* (*mysql_real_connect_fn)(MYSQL*, const char*, const char*, const char*, const char*, unsigned int,
			const char*, unsigned long);
	int (*mysql_errno_fn)(MYSQL*);
	int (*mysql_query_fn)(MYSQL*, const char*);
	int (*mysql_stmt_prepare_fn)(MYSQL_STMT *stmt, const char *stmt_str, unsigned long length);
	void (*mysql_close_fn)(MYSQL*);
	const char* (*mysql_error_fn)(MYSQL*);
	MYSQL_RES* (*mysql_store_result_fn)(MYSQL*);
	unsigned int (*mysql_num_fields_fn)(MYSQL_RES*);
	MYSQL_ROW (*mysql_fetch_row_fn)(MYSQL_RES*);
	void (*mysql_free_result_fn)(MYSQL_RES*);
	unsigned int (*mysql_warning_count_fn)(MYSQL*);
	unsigned long (*mysql_real_escape_string_fn)(MYSQL *mysql, char *to, const char *from, unsigned long length);
	void (*mysql_library_end_fn)(void);
	long (*mysql_affected_rows_fn)(MYSQL*);
} f;

static void *dl_handle;

#define SO_FILE     "libmariadb" SO_FILE_EXT
#define SO_FILE_ALT "libmariadbclient" SO_FILE_EXT

static void db_mysql_dlopen(void) {
	csync_debug(3, "Opening shared library %s\n", SO_FILE);
	dl_handle = dlopen(SO_FILE, RTLD_LAZY);
	if (dl_handle == NULL && (dl_handle = dlopen(SO_FILE_ALT, RTLD_LAZY)) == NULL) {
		csync_fatal(
				"Could not open " SO_FILE ": %s\nPlease install Mysql/Mariadb client library or use other database (sqlite, postgresql)\n",
				dlerror());
	}

	csync_debug(3, "Reading symbols from shared library " SO_FILE "\n");

	LOOKUP_SYMBOL(dl_handle, mysql_init);
	LOOKUP_SYMBOL(dl_handle, mysql_real_connect);
	LOOKUP_SYMBOL(dl_handle, mysql_errno);
	LOOKUP_SYMBOL(dl_handle, mysql_query);
	LOOKUP_SYMBOL(dl_handle, mysql_stmt_prepare);
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

static int db_mysql_parse_url(char *url, char **host, char **user, char **pass, char **database, unsigned int *port,
		char **unix_socket) {
	char *pos = strchr(url, '@');
	if (pos) {
		// Optional user/passwd
		*(pos) = 0;
		*(user) = url;
		url = pos + 1;

		pos = strchr(*user, ':');
		if (pos) {
			*(pos) = 0;
			*(pass) = (pos + 1);
		} else
			*pass = 0;
	} else {
		// No user/pass password
		*user = 0;
		*pass = 0;
	}
	*host = url;
	pos = strchr(*host, '/');
	if (pos) {
		// Database
		(*pos) = 0;
		*database = pos + 1;
	} else {
		*database = 0;
	}
	pos = strchr(*host, ':');
	if (pos) {
		(*pos) = 0;
		*port = atoi(pos + 1);
	}
	*unix_socket = 0;
	return DB_OK;
}
#endif

#ifdef HAVE_MYSQL

void DbMySql::close() {
	if (!private_data)
		return;
	f.mysql_close_fn(static_cast<MYSQL*>(private_data));
	private_data = 0;
}

const char* DbMySql::errmsg() {
	if (!private_data)
		return "(no private data in conn)";
	return f.mysql_error_fn(static_cast<MYSQL*>(private_data));
}

static void print_warnings(int level, MYSQL *m) {
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
		csync_warn(level, "MySql Warning: %s\n", row[2]);
		row = f.mysql_fetch_row_fn(res);
	}

	f.mysql_free_result_fn(res);
}

int DbMySql::exec(const char *sql) {
	int rc = DB_ERROR;
	if (!private_data) {
		/* added error element */
		return DB_NO_CONNECTION_REAL;
	}
	rc = f.mysql_query_fn(static_cast<MYSQL*>(private_data), sql);
	/* Treat warnings as errors. For example when a column is too short this should
	 be an error. */

	affected_rows = f.mysql_affected_rows_fn(static_cast<MYSQL*>(private_data));

	if (rc == 0) {
		return DB_OK;
	}
	if (rc == ER_LOCK_DEADLOCK) {
		return DB_BUSY;
	}
	if (f.mysql_warning_count_fn(static_cast<MYSQL*>(private_data)) > 0) {
		print_warnings(1, static_cast<MYSQL*>(private_data));
		return DB_ERROR;
	}
	/* On error parse, create DB ERROR element */
	csync_warn(0, "Unmapped MYSQL error: %d \n", rc);
	return rc > 0 ? -rc : rc;
}

class DbMySqlStmt : public DbStmt {
public:
    DbMySqlStmt(MYSQL_RES *res, DbApi *db) : DbStmt(db), private_data(res) {}
    ~DbMySqlStmt() override { close(); };

    const char* get_column_text(int column) override;
    const char* get_column_blob(int column) override;
    int get_column_int(int column) override;
    int next() override;
    int close() override;
    long get_affected_rows() override { return 0; };

private:
    MYSQL_RES *private_data;
    MYSQL_ROW private_data2;
};

const char* DbMySqlStmt::get_column_blob(int column) {
	if (!private_data2) {
		return 0;
	}
	return private_data2[column];
}

const char* DbMySqlStmt::get_column_text(int column) {
	if (!private_data2) {
		return 0;
	}
	return private_data2[column];
}

int DbMySqlStmt::get_column_int(int column) {
	const char *value = get_column_text(column);
	if (value)
		return atoi(value);
	/* error mapping */
	return 0;
}

int DbMySqlStmt::next() {
	private_data2 = f.mysql_fetch_row_fn(private_data);
	/* error mapping */
	if (private_data2)
		return DB_ROW;
	return DB_DONE;
}

int DbMySqlStmt::close() {
    if (!private_data) {
        return DB_OK;
	}
	f.mysql_free_result_fn(private_data);
    private_data = NULL;
	return DB_OK;
}

int DbMySql::insert_update_file(filename_p encoded, const char *checktxt_encoded, struct stat *file_stat,
		const char *digest) {
	BUF_P buf = buffer_init();
	char *digest_quote = buffer_quote(buf, digest);
	int count = SQL(this, "Add or update file entry",
			"INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) "
					"VALUES ('%s', '%s', '%s', %lu, %llu, %s, %u, %lu, %lu, %u) ON DUPLICATE KEY UPDATE "
					"checktxt = '%s', device = %lu, inode = %llu, "
					"digest = %s, mode = %u, size = %lu, mtime = %lu, type = %u", g_myhostname, encoded.c_str(), checktxt_encoded,
			fstat_dev(file_stat), file_stat->st_ino, digest_quote, file_stat->st_mode, file_stat->st_size,
			file_stat->st_mtime, get_file_type(file_stat->st_mode),
			// SET
			checktxt_encoded, fstat_dev(file_stat), file_stat->st_ino, digest_quote, file_stat->st_mode,
			file_stat->st_size, file_stat->st_mtime, get_file_type(file_stat->st_mode));
	buffer_destroy(buf);
	return count;
}

int DbMySql::upgrade_to_schema(int new_version) {
	csync_debug(2, "Upgrading database schema to version %d.\n", new_version);

	/* We want proper logging, so use the csync sql function instead
	 * of that from the database layer.
	 */
	csync_db_sql(reinterpret_cast<db_conn_p>(this), "Creating host table", "CREATE TABLE `host` ("
			"  `host` varchar(%u) DEFAULT NULL,"
			"  `status`  int,"
			"  KEY `host` (`host`)"
			") ENGINE=InnoDB CHARACTER SET utf8 COLLATE utf8_bin", HOST_LENGTH);

	csync_db_sql(reinterpret_cast<db_conn_p>(this), NULL, /*"Creating action table" */
	"CREATE TABLE `action` ("
			"  `filename` varchar(%u) DEFAULT NULL,"
			"  `command`  text,"
			"  `logfile` text,"
			"  KEY `filename` (`filename`(%u),`command`(%u)) "
			") ENGINE=InnoDB CHARACTER SET utf8 COLLATE utf8_bin", FILE_LENGTH, FILE_LENGTH, FILE_LENGTH);
	csync_db_sql(reinterpret_cast<db_conn_p>(this), "Creating dirty table", "CREATE TABLE `dirty` ("
//		 "  id        bigint       AUTO_INCREMENT,"
					"  filename  varchar(%u)  DEFAULT NULL,"
					"  forced    int \t      DEFAULT NULL,"
					"  myname    varchar(%u)  DEFAULT NULL,"
					"  peername  varchar(%u)  DEFAULT NULL,"
					"  operation varchar(20)  DEFAULT NULL,"
					"  op \t      int\t      DEFAULT NULL,"
					"  checktxt  varchar(%u)  DEFAULT NULL,"
					"  device    bigint       DEFAULT NULL,"
					"  inode     bigint       DEFAULT NULL,"
					"  other     varchar(%u)  DEFAULT NULL,"
					"  file_id   bigint       DEFAULT NULL,"
					"  digest    varchar(70)  DEFAULT NULL,"
					"  mode      int\t      DEFAULT NULL,"
					"  mtime     int    \t  DEFAULT NULL,"
					"  type      int    \t  DEFAULT NULL,"
					"  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,"
					"  UNIQUE KEY `filename_peername_myname` (`filename`(%u),`peername`,`myname`), "
					"  KEY `idx_file_dev_inode` (`device`,`inode`) "
					") ENGINE=InnoDB CHARACTER SET utf8 COLLATE utf8_bin",
	FILE_LENGTH, HOST_LENGTH, HOST_LENGTH, FILE_LENGTH + 50, FILE_LENGTH, FILE_LENGTH);

	csync_db_sql(reinterpret_cast<db_conn_p>(this), "Creating file table", "CREATE TABLE `file` ("
//		 "  `id`       bigint AUTO_INCREMENT,"
			//		"  `parent`   bigint DEFAULT NULL,"
					"  filename varchar(%u)  DEFAULT NULL,"
					"  hostname varchar(%u)  DEFAULT NULL,"
					"  checktxt varchar(%u)  DEFAULT NULL,"
					"  device   bigint \t  DEFAULT NULL,"
					"  inode    bigint \t  DEFAULT NULL,"
					"  size     bigint \t  DEFAULT NULL,"
					"  mode     int    \t  DEFAULT NULL,"
					"  mtime    int    \t  DEFAULT NULL,"
					"  type     int    \t  DEFAULT NULL,"
					"  digest   varchar(70)  DEFAULT NULL,"
					"  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,"
					"  UNIQUE KEY `hostname_filename` (`hostname` , `filename` (%u)), "
					"  KEY `idx_file_dev_inode` (`device`,`inode`) "
					") ENGINE=InnoDB CHARACTER SET utf8 COLLATE utf8_bin",
	FILE_LENGTH, HOST_LENGTH, FILE_LENGTH + 50, FILE_LENGTH);

	csync_db_sql(reinterpret_cast<db_conn_p>(this), NULL, /* "Creating hint table", */
	"  CREATE TABLE `hint` ("
			"  `filename` varchar(%u) DEFAULT NULL,"
			"  `recursive` int(11)    DEFAULT NULL"
			") ENGINE=InnoDB CHARACTER SET utf8 COLLATE utf8_bin",
	FILE_LENGTH);

	csync_db_sql(reinterpret_cast<db_conn_p>(this), NULL, /* "Creating x509_cert table", */
	"CREATE TABLE `x509_cert` ("
			"  `peername` varchar(50)  DEFAULT NULL,"
			"  `certdata` text DEFAULT NULL,"
			"  UNIQUE KEY `peername` (`peername`)"
			") ENGINE=InnoDB CHARACTER SET utf8 COLLATE utf8_bin");

	/* csync_db_sql does a csync_fatal on error, so we always return DB_OK here. */
	return DB_OK;
}

const char* DbMySql::escape(const char *string) {
	if (!private_data)
		return 0;
	if (string == 0)
		return 0;

	size_t length = strlen(string);
	char *escaped_buffer = ringbuffer_malloc(2 * length + 1);
	f.mysql_real_escape_string_fn(static_cast<MYSQL*>(private_data), escaped_buffer, string, length);
	return escaped_buffer;
}

int DbMySql::prepare(const char *sql, DbStmt **stmt_p, const char **pptail) {
	// unused
	(void) pptail;

	int rc = DB_ERROR;

	*stmt_p = NULL;

	if (!private_data) {
		/* added error element */
		return DB_NO_CONNECTION_REAL;
	}

	/* TODO avoid strlen, use configurable limit? */
	rc = f.mysql_query_fn(static_cast<MYSQL*>(private_data), sql);
	(void) rc;
	/* Treat warnings as errors. For example when a column is too short this should
	 be an error. */

	if (f.mysql_warning_count_fn(static_cast<MYSQL*>(private_data)) > 0) {
		print_warnings(1, static_cast<MYSQL*>(private_data));
		return DB_ERROR;
	}

	MYSQL_RES *mysql_res = f.mysql_store_result_fn(static_cast<MYSQL*>(private_data));
	if (mysql_res == NULL) {
		csync_error(2, "Error in mysql_store_result: %s", f.mysql_error_fn(static_cast<MYSQL*>(private_data)));
		return DB_ERROR;
	}

	/* Treat warnings as errors. For example when a column is too short this should
	 be an error. */

	if (f.mysql_warning_count_fn(static_cast<MYSQL*>(private_data)) > 0) {
		print_warnings(1, static_cast<MYSQL*>(private_data));
		return DB_ERROR;
	}

    *stmt_p = new DbMySqlStmt(mysql_res, this);
	return DB_OK;
}

DbMySql::DbMySql() {}

DbMySql::~DbMySql() {
    if (dl_handle) {
        dlclose(dl_handle);
        dl_handle = NULL;
    }
}

void DbMySql::shutdown() {
    f.mysql_library_end_fn();
}

int db_mysql_open(const char *file, db_conn_p *api_p) {
#ifdef HAVE_MYSQL
	db_mysql_dlopen();

	MYSQL *db = f.mysql_init_fn(0);
	char *host = 0, *user = 0, *pass = 0, *database = 0, *unix_socket = 0;
	unsigned int port = 0;
	char *db_url = static_cast<char*>(malloc(strlen(file) + 1));
	char *create_database_statement = 0;

	strcpy(db_url, file);
	int rc = db_mysql_parse_url(db_url, &host, &user, &pass, &database, &port, &unix_socket);
	if (rc != DB_OK) {
		free(db_url);
		return rc;
	}

	if (f.mysql_real_connect_fn(db, host, user, pass, database, port, unix_socket, CLIENT_FOUND_ROWS) == NULL) {
		if (f.mysql_errno_fn(db) == ER_BAD_DB_ERROR) {
			if (f.mysql_real_connect_fn(db, host, user, pass, NULL, port, unix_socket, 0) != NULL) {
				ASPRINTF(&create_database_statement, "create database %s", database);

				csync_debug(2, "creating database %s\n", database);
				if (f.mysql_query_fn(db, create_database_statement) != 0)
					csync_fatal("Cannot create database %s: Error: %s\n", database, f.mysql_error_fn(db));
				free(create_database_statement);

				f.mysql_close_fn(db);
				db = f.mysql_init_fn(0);

				if (f.mysql_real_connect_fn(db, host, user, pass, database, port, unix_socket, 0) == NULL)
					goto fatal;
			}
		} else {
			fatal:
			csync_fatal("Failed to connect to database: Error: %s\n", f.mysql_error_fn(db));
		}
	}
	const char *encoding = mysql_character_set_name(db);
	csync_debug(2, "Default encoding %s\n", encoding);
	if (mysql_set_character_set(db, "utf8")) {
		csync_fatal("Cannot set character set to utf8\n");
	}
	DatabaseConnection *conn = new MySQLConnection(db);
    DbMySql *api = new DbMySql(conn);
	if (conn == NULL) {
		return DB_ERROR;
	}
	*api_p = api;

	api->private_data = db;

	free(db_url);
	return rc;
#else
  return DB_ERROR;
#endif
}
#endif
