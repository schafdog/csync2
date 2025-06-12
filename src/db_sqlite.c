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

#include "csync2.h"
#if defined(HAVE_SQLITE3)
#include <sqlite3.h>
#endif
#include <stdio.h>
#include <stdarg.h>
#include <stdlib.h>
#include <unistd.h>
#include <signal.h>
#include <time.h>
#include "db_api.h"
#include "db_sqlite.h"
#include "dl.h"
#include "db_sql.h"

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

static void *dl_handle;

#define SO_FILE "libsqlite3" SO_FILE_EXT

static void db_sqlite3_dlopen(void) {
	csync_log(LOG_DEBUG, 3, "Opening shared library %s\n", SO_FILE);

	dl_handle = dlopen(SO_FILE, RTLD_LAZY);
	if (dl_handle == NULL) {
		csync_fatal(
				"Could not open %s: %s\nPlease install sqlite3 client library (libsqlite3) or use other database (postgres, mysql)\n",
				SO_FILE, dlerror());
	}
	csync_log(LOG_DEBUG, 3, "Reading symbols from shared library " SO_FILE "\n");

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

static void db_sqlite_close(db_conn_p conn) {
	if (!conn)
		return;
	if (!conn->private)
		return;
	f.sqlite3_close_fn(conn->private);
	conn->private = 0;
}

static const char* db_sqlite_errmsg(db_conn_p conn) {
	if (!conn)
		return "(no connection)";
	if (!conn->private)
		return "(no private data in conn)";
	return f.sqlite3_errmsg_fn(conn->private);
}

static int db_sqlite_exec(db_conn_p conn, const char *sql) {
	int rc;
	if (!conn)
		return DB_NO_CONNECTION;

	if (!conn->private) {
		/* added error element */
		return DB_NO_CONNECTION_REAL;
	}
	rc = f.sqlite3_exec_fn(conn->private, sql, 0, 0, 0);
	return db_sqlite_error_map(rc);
}

static const char* db_sqlite_stmt_get_column_text(db_stmt_p stmt, int column) {
	if (!stmt || !stmt->private) {
		return 0;
	}
	sqlite3_stmt *sqlite_stmt = stmt->private;
	const unsigned char *result = f.sqlite3_column_text_fn(sqlite_stmt, column);
	/* error handling */
	return (const char*) result;
}

#if defined(HAVE_SQLITE3)
static const void* db_sqlite_stmt_get_column_blob(db_stmt_p stmtx, int col) {
	sqlite3_stmt *stmt = stmtx->private;
	return f.sqlite3_column_blob_fn(stmt, col);
}
#endif

static int db_sqlite_stmt_get_column_int(db_stmt_p stmt, int column) {
	sqlite3_stmt *sqlite_stmt = stmt->private;
	int rc = f.sqlite3_column_int_fn(sqlite_stmt, column);
	return db_sqlite_error_map(rc);
}

static int db_sqlite_stmt_next(db_stmt_p stmt) {
	sqlite3_stmt *sqlite_stmt = stmt->private;
	int rc = f.sqlite3_step_fn(sqlite_stmt);
	return db_sqlite_error_map(rc);
}

static int db_sqlite_stmt_close(db_stmt_p stmt) {
	sqlite3_stmt *sqlite_stmt = stmt->private;
	int rc = f.sqlite3_finalize_fn(sqlite_stmt);
	free(stmt);
	return db_sqlite_error_map(rc);
}

static char* db_my_escape(const char *string) {
	if (string == NULL)
		return NULL;
	char *escaped = malloc(strlen(string) * 2 + 1);
	const char *p = string;
	char *e = escaped;
	while (*p != 0) {
		switch (*p) {
		case '\'':
		case '\\':
			*(e++) = '\'';
			;
		default:
			*(e++) = *(p++);
		}
		*e = 0;
	};
	return escaped;
}
;

static const char* db_sqlite_escape(db_conn_p conn, const char *string) {
	// unused
	(void) conn;

	char *escaped = db_my_escape(string); // f.sqlite3_mprintf_fn("%q", string);
	if (escaped)
		ringbuffer_add(escaped, free);
	return escaped;
}

static int db_sqlite_upgrade_to_schema(db_conn_p db, int version) {
	if (version < 0)
		return DB_OK;

	if (version > 0)
		return DB_ERROR;

	csync_info(2, "Upgrading database schema to version %d.\n", version);

	csync_db_sql(db, NULL, /* "Creating file table", */
	"CREATE TABLE file ("
			"	filename, hostname, checktxt, device, inode, size, digest, mode, mtime, type, "
			"       timestamp DATETIME DEFAULT CURRENT_TIMESTAMP, "
			"	UNIQUE (hostname, filename), "
			"       ON CONFLICT REPLACE); "
			"       CREATE INDEX idx_file_device_inode on file (device, inode);");

	csync_db_sql(db, NULL, /* "Creating dirty table", */
			"CREATE TABLE dirty ("
					"	filename, forced, myname, peername, checktxt, op, operation, device, inode, other, digest, mode, mtime, type, "
					"       timestamp DATETIME DEFAULT CURRENT_TIMESTAMP, "
					"	UNIQUE (filename, peername), "
					"	KEY (device, inode), "
					"       ON CONFLICT IGNORE); "
					"       CREATE INDEX idx_dirty_device_inode on file (device, inode);");
	csync_db_sql(db, NULL, /* "Creating hint table", */
	"CREATE TABLE hint ("
			"	filename, recursive,"
			"	UNIQUE ( filename, recursive ) ON CONFLICT IGNORE)");

	csync_db_sql(db, NULL, /* "Creating action table", */
	"CREATE TABLE action ("
			"	filename, command, logfile, "
			"	UNIQUE ( filename, command ) ON CONFLICT IGNORE"
			")");

	csync_db_sql(db, NULL, /* "Creating host table", */
	"CREATE TABLE host ("
			"	hostname, status, "
			"	UNIQUE ( hostname ) ON CONFLICT IGNORE)");

	csync_db_sql(db, NULL, /* "Creating x509_cert table", */
	"CREATE TABLE x509_cert ("
			"	peername, certdata, "
			"	UNIQUE ( peername ) ON CONFLICT IGNORE)");

	return DB_OK;
}

static int db_sqlite_prepare(db_conn_p conn, const char *sql, db_stmt_p *stmt_p, const char **pptail) {
	int rc;

	*stmt_p = NULL;

	if (!conn)
		return DB_NO_CONNECTION;

	if (!conn->private) {
		/* added error element */
		return DB_NO_CONNECTION_REAL;
	}
	db_stmt_p stmt = malloc(sizeof(*stmt));
	sqlite3_stmt *sqlite_stmt = 0;
	/* TODO avoid strlen, use configurable limit? */
	rc = f.sqlite3_prepare_v2_fn(conn->private, sql, strlen(sql), &sqlite_stmt, pptail);
	if (rc != SQLITE_OK)
		return db_sqlite_error_map(rc);
	stmt->private = sqlite_stmt;
	*stmt_p = stmt;
	stmt->get_column_text = db_sqlite_stmt_get_column_text;
	stmt->get_column_blob = db_sqlite_stmt_get_column_blob;
	stmt->get_column_int = db_sqlite_stmt_get_column_int;
	stmt->next = db_sqlite_stmt_next;
	stmt->close = db_sqlite_stmt_close;
	stmt->db = conn;
	return db_sqlite_error_map(rc);
}

int db_sqlite_open(const char *file, db_conn_p *conn_p) {
	sqlite3 *db;

	db_sqlite3_dlopen();

	int rc = f.sqlite3_open_fn(file, &db);
	if (rc != SQLITE_OK) {
		return db_sqlite_error_map(rc);
	};
	db_conn_p conn = calloc(1, sizeof(*conn));
	if (conn == NULL) {
		return DB_ERROR;
	}
	db_sql_init(conn);
	*conn_p = conn;
	conn->private = db;
	conn->close = db_sqlite_close;
	conn->exec = db_sqlite_exec;
	conn->prepare = db_sqlite_prepare;
	conn->errmsg = db_sqlite_errmsg;
	conn->upgrade_to_schema = db_sqlite_upgrade_to_schema;
	conn->escape = db_sqlite_escape;
	return db_sqlite_error_map(rc);
}
#endif
