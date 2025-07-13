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
#include "modern_logging.hpp"
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
	csync_debug_cpp(3, "Opening shared library {}", SO_FILE);
	dl_handle = dlopen(SO_FILE, RTLD_LAZY);
	if (dl_handle == NULL && (dl_handle = dlopen(SO_FILE_ALT, RTLD_LAZY)) == NULL) {
		csync_fatal_cpp(
				"Could not open " SO_FILE ": {}\nPlease install Mysql/Mariadb client library or use other database (sqlite, postgresql)",
				dlerror());
	}

	csync_debug_cpp(3, "Reading symbols from shared library {}", SO_FILE);

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

const char* DbMySql::errmsg() {
    void *private_data = conn_->get_private_data();
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
		csync_fatal_cpp("print_warnings: m is NULL");

	rc = f.mysql_query_fn(m, "SHOW WARNINGS");
	if (rc != 0)
		csync_fatal_cpp("print_warnings: Failed to get warning messages");

	res = f.mysql_store_result_fn(m);
	if (res == NULL)
		csync_fatal_cpp("print_warnings: Failed to get result set for warning messages");

	fields = f.mysql_num_fields_fn(res);
	if (fields < 2)
		csync_fatal_cpp("print_warnings: Strange: show warnings result set has less than 2 rows");

	row = f.mysql_fetch_row_fn(res);

	while (row) {
		csync_warn(level, "MySql Warning: %s\n", row[2]);
		row = f.mysql_fetch_row_fn(res);
	}

	f.mysql_free_result_fn(res);
}

int DbMySql::exec(const char *sql) {
    conn_->query(sql);
    return 0;
}

int DbMySql::insert_update_file(filename_p filename, const char *checktxt, struct stat *file_stat,
		const char *digest) {
	int count = conn_->execute_update("insert_update_file",
			        "INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) "
					"VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?) "
					"ON DUPLICATE KEY UPDATE "
					"checktxt = ?, device = ?, inode = ?, "
					"digest = ?, mode = ?, size = ?, mtime = ?, type = ?",
					g_myhostname, filename, checktxt,
					fstat_dev(file_stat), static_cast<long long>(file_stat->st_ino), digest, file_stat->st_mode, file_stat->st_size,
					file_stat->st_mtime, get_file_type(file_stat->st_mode),
					// SET
					checktxt, fstat_dev(file_stat), static_cast<long long>(file_stat->st_ino), digest, static_cast<int>(file_stat->st_mode),
					file_stat->st_size, file_stat->st_mtime, get_file_type(file_stat->st_mode));
	return count;
}

int DbMySql::upgrade_to_schema(int new_version) {
	csync_debug_cpp(2, "Upgrading database schema to version {}.", new_version);

	/* We want proper logging, so use the csync sql function instead
	 * of that from the database layer.
	 */
	conn_->execute_update("Creating host table",
	        "CREATE TABLE `host` ("
			"  `host` varchar(%u) DEFAULT NULL,"
			"  `status`  int,"
			"  KEY `host` (`host`)"
			") ENGINE=InnoDB CHARACTER SET utf8 COLLATE utf8_bin", HOST_LENGTH);

	conn_->execute_query("Creating action table",
	        "CREATE TABLE `action` ("
			"  `filename` varchar(%u) DEFAULT NULL,"
			"  `command`  text,"
			"  `logfile` text,"
			"  KEY `filename` (`filename`(%u),`command`(%u)) "
			") ENGINE=InnoDB CHARACTER SET utf8 COLLATE utf8_bin", FILE_LENGTH, FILE_LENGTH, FILE_LENGTH);
	conn_->execute_update("Creating dirty table",
	                "CREATE TABLE `dirty` ("
             		//"  id        bigint       AUTO_INCREMENT,"
					"  filename  varchar(%u)  DEFAULT NULL,"
					"  forced    int \t       DEFAULT NULL,"
					"  myname    varchar(%u)  DEFAULT NULL,"
					"  peername  varchar(%u)  DEFAULT NULL,"
					"  operation varchar(20)  DEFAULT NULL,"
					"  op        int          DEFAULT NULL,"
					"  checktxt  varchar(%u)  DEFAULT NULL,"
					"  device    bigint       DEFAULT NULL,"
					"  inode     bigint       DEFAULT NULL,"
					"  other     varchar(%u)  DEFAULT NULL,"
					"  file_id   bigint       DEFAULT NULL,"
					"  digest    varchar(70)  DEFAULT NULL,"
					"  mode      int\t        DEFAULT NULL,"
					"  mtime     int          DEFAULT NULL,"
					"  type      int          DEFAULT NULL,"
					"  `timestamp` timestamp  NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,"
					"  UNIQUE KEY `filename_peername_myname` (`filename`(%u),`peername`,`myname`), "
					"  KEY `idx_file_dev_inode` (`device`,`inode`) "
					") ENGINE=InnoDB CHARACTER SET utf8 COLLATE utf8_bin",
	FILE_LENGTH, HOST_LENGTH, HOST_LENGTH, FILE_LENGTH + 50, FILE_LENGTH, FILE_LENGTH);

	conn_->execute_update("Creating file table", "CREATE TABLE `file` ("
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

	conn_->execute_update("Creating hint table",
	        "  CREATE TABLE `hint` ("
			"  `filename` varchar(%u) DEFAULT NULL,"
			"  `recursive` int(11)    DEFAULT NULL"
			") ENGINE=InnoDB CHARACTER SET utf8 COLLATE utf8_bin",
	FILE_LENGTH);

conn_->execute_query("Creating x509_cert table",
           	"CREATE TABLE `x509_cert` ("
			"  `peername` varchar(50)  DEFAULT NULL,"
			"  `certdata` text DEFAULT NULL,"
			"  UNIQUE KEY `peername` (`peername`)"
			") ENGINE=InnoDB CHARACTER SET utf8 COLLATE utf8_bin");

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

				csync_debug_cpp(2, "creating database {}", database);
				if (f.mysql_query_fn(db, create_database_statement) != 0)
					csync_fatal_cpp("Cannot create database {}: Error: {}", database, f.mysql_error_fn(db));
				free(create_database_statement);

				f.mysql_close_fn(db);
				db = f.mysql_init_fn(0);

				if (f.mysql_real_connect_fn(db, host, user, pass, database, port, unix_socket, 0) == NULL)
					goto fatal;
			}
		} else {
			fatal:
			csync_fatal_cpp("Failed to connect to database: Error: {}", f.mysql_error_fn(db));
		}
	}
	const char *encoding = mysql_character_set_name(db);
	csync_debug_cpp(2, "Default encoding {}", encoding);
	if (mysql_set_character_set(db, "utf8")) {
		csync_fatal_cpp("Cannot set character set to utf8");
	}
	DatabaseConnection *conn = new MySQLConnection(db);
    DbMySql *api = new DbMySql(conn);
	if (conn == NULL) {
		return DB_ERROR;
	}
	*api_p = api;

	free(db_url);
	return rc;
#else
  return DB_ERROR;
#endif
}
#endif
