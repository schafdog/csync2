/* -*- c-file-style: "k&r"; c-basic-offset: 4; tab-width: 4; indent-tabs-mode: t -*-
 *  Copyright (C) 2010  Dennis Schafroth <dennis@schafroth.com>>
 *  Copyright (C) 2010  Johannes Thoma <johannes.thoma@gmx.at>
 *
 *  This program is free software; you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation; either version 2 of the License, or
 *  (at your option) any later version.
 *
 *  This program is didbstributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License
 *  along with this program; if not, write to the Free Software
 *  Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

#include "csync2.hpp"
#include "database.hpp"
#include "database_v2.hpp"
#include <memory>
#if defined(HAVE_SQLITE3)
#include <sqlite3.h>
#endif
#include <stdio.h>
#include <stdarg.h>
#include <stdlib.h>
#include <unistd.h>
#include <signal.h>
#include <time.h>
#include "db.hpp"
#include "db_api.hpp"
#include "db_sqlite.hpp"
#include "dl.hpp"
#include "db_sql.hpp"
#include "ringbuffer.hpp"
#include "database_sqlite_v2.hpp"

#ifndef HAVE_SQLITE3
int db_sqlite_open(const char *file, db_conn_p *conn_p) {
  return DB_ERROR;
}
#else

static struct db_sqlite3_fns {
	int (*sqlite3_open_fn)(const char*, sqlite3**);
	int (*sqlite3_close_fn)(sqlite3*);
	const char* (*sqlite3_errmsg_fn)(sqlite3*);
	int (*sqlite3_exec_fn)(sqlite3*, const char*, int (*)(void*, int, char**, char**), void*, char**);
	int (*sqlite3_prepare_v2_fn)(sqlite3*, const char*, int, sqlite3_stmt**, const char **pzTail);
	const unsigned char* (*sqlite3_column_text_fn)(sqlite3_stmt*, int);
	const void* (*sqlite3_column_blob_fn)(sqlite3_stmt*, int);
	int (*sqlite3_column_int_fn)(sqlite3_stmt*, int);
	int (*sqlite3_step_fn)(sqlite3_stmt*);
	int (*sqlite3_finalize_fn)(sqlite3_stmt*);
	const char* (*sqlite3_free_fn)(void*);
	char* (*sqlite3_mprintf_fn)(const char*, ...);
} f;

static void *dl_handle = NULL;

#define SO_FILE "libsqlite3" SO_FILE_EXT

static void db_sqlite3_dlopen(void) {
    if (dl_handle)
        return;

	csync_debug(3, "Opening shared library %s\n", SO_FILE);

	dl_handle = dlopen(SO_FILE, RTLD_LAZY);
	if (dl_handle == NULL) {
		csync_fatal(
				"Could not open %s: %s\nPlease install sqlite3 client library (libsqlite3) or use other database (postgres, mysql)\n",
				SO_FILE, dlerror());
	}
	csync_debug(3, "Reading symbols from shared library " SO_FILE "\n");


	LOOKUP_SYMBOL(dl_handle, sqlite3_open);
	LOOKUP_SYMBOL(dl_handle, sqlite3_close);
	LOOKUP_SYMBOL(dl_handle, sqlite3_errmsg);
	LOOKUP_SYMBOL(dl_handle, sqlite3_exec);
	LOOKUP_SYMBOL(dl_handle, sqlite3_prepare_v2);
	LOOKUP_SYMBOL(dl_handle, sqlite3_column_text);
	LOOKUP_SYMBOL(dl_handle, sqlite3_column_blob);
	LOOKUP_SYMBOL(dl_handle, sqlite3_column_int);
	LOOKUP_SYMBOL(dl_handle, sqlite3_step);
	LOOKUP_SYMBOL(dl_handle, sqlite3_finalize);
	LOOKUP_SYMBOL(dl_handle, sqlite3_mprintf);
	LOOKUP_SYMBOL(dl_handle, sqlite3_free);
}

static int sqlite_errors[] = { SQLITE_OK, SQLITE_ERROR, SQLITE_BUSY, SQLITE_ROW,
SQLITE_DONE, -1 };
static int db_errors[] = { DB_OK, DB_ERROR, DB_BUSY, DB_ROW, DB_DONE, -1 };

static int db_sqlite_error_map(int sqlite_err) {
	int index;
	for (index = 0;; index++) {
		if (sqlite_errors[index] == -1)
			return DB_ERROR;
		if (sqlite_err == sqlite_errors[index])
			return db_errors[index];
	}
	return DB_OK;
}

const char* DbSqlite::errmsg() {
    void *private_data = conn_->get_private_data();
    if (!private_data)
		return "(no private data in conn)";
	return f.sqlite3_errmsg_fn(static_cast<sqlite3*>(private_data));
}

int DbSqlite::exec(const char *sql) {
	int rc;
	void *private_data = conn_->get_private_data();
	if (!private_data) {
		/* added error element */
		return DB_NO_CONNECTION_REAL;
	}
	rc = f.sqlite3_exec_fn(static_cast<sqlite3*>(private_data), sql, 0, 0, 0);
	return db_sqlite_error_map(rc);
}

int DbSqlite::upgrade_to_schema(int new_version) {
	if (version < 0)
		return DB_OK;

	if (version > 0)
		return DB_ERROR;

	csync_info(2, "Upgrading database schema to version %d.\n", new_version);

	conn_->execute_update("Creating file table",
	        "CREATE TABLE file ("
			"  filename TEXT NOT NULL, hostname, checktxt, device, inode, size, digest, mode, mtime, type, "
			"       timestamp DATETIME DEFAULT CURRENT_TIMESTAMP, "
			"\tUNIQUE (hostname, filename), "
			"       ON CONFLICT REPLACE); "
			"       CREATE INDEX idx_file_device_inode on file (device, inode);");

	conn_->execute_update("Creating dirty table",
			"CREATE TABLE dirty ("
					"filename, forced, myname, peername, checktxt, op, operation, device, inode, other, digest, mode, mtime, type, "
					"       timestamp DATETIME DEFAULT CURRENT_TIMESTAMP, "
					"UNIQUE (filename, peername), "
					"KEY (device, inode), "
					"       ON CONFLICT IGNORE); "
					"CREATE INDEX idx_dirty_device_inode on file (device, inode);");
	conn_->execute_update("Creating hint table",
	        "CREATE TABLE hint ("
			" filename, recursive,"
			" UNIQUE ( filename, recursive ) ON CONFLICT IGNORE)");

	conn_->execute_update("Creating action table",
	        "CREATE TABLE action ("
			" filename, command, logfile, "
			" UNIQUE ( filename, command ) ON CONFLICT IGNORE"
			")");

	conn_->execute_update("Creating host table",
	        "CREATE TABLE host ("
			" hostname, status, "
			" UNIQUE ( hostname ) ON CONFLICT IGNORE)");

	conn_->execute_update("Creating x509_cert table",
	        "CREATE TABLE x509_cert ("
			" peername, certdata, "
			" UNIQUE ( peername ) ON CONFLICT IGNORE)");

	return DB_OK;
}

DbSqlite::DbSqlite() {}

DbSqlite::~DbSqlite() {
    if (dl_handle) {
        dlclose(dl_handle);
        dl_handle = NULL;
    }
}


int db_sqlite_open(const char *file, db_conn_p *conn_p) {
	sqlite3 *db;

	db_sqlite3_dlopen();

	int rc = f.sqlite3_open_fn(file, &db);
	if (rc != SQLITE_OK) {
		return db_sqlite_error_map(rc);
	};
	DatabaseConnection *conn = new SQLiteConnection(db);
    DbSqlite *dbApi = new DbSqlite(conn);
	if (conn == NULL) {
		return DB_ERROR;
	}
	*conn_p = dbApi;

	return db_sqlite_error_map(rc);
}

int db_sqlite_open_new(const char *file, db_conn_p *conn_p) {
    std::unique_ptr<DatabaseConnection> conn = create_connection(file);
	if (conn == NULL) {
		return DB_ERROR;
	}
	DbSqlite *dbApi = new DbSqlite(conn.release());
	*conn_p = dbApi;
	return db_sqlite_error_map(0);
}

#endif
