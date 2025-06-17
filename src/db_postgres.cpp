/*  -*- c-file-style: "k&r"; c-basic-offset: 4; tab-width: 4; indent-tabs-mode: t -*-
 *  Copyright (C) 2010  Dennis Schafroth <dennis@schafroth.com>
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
#include "db_api.hpp"
#include "db_postgres.hpp"
#include "dl.hpp"
#include "db_sql.hpp"
#include "ringbuffer.hpp"
#include "check.hpp"

#ifdef HAVE_POSTGRESQL_LIBPQ_FE_H
#include <postgresql/libpq-fe.h>
#endif

#ifdef HAVE_PGSQL_LIBPQ_FE_H
#include <pgsql/libpq-fe.h>
#endif

#ifdef HAVE_LIBPQ
#include <libpq-fe.h>
#endif

// Works with both GCC and Clang
#if defined(__GNUC__) || defined(__clang__)
#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wswitch-enum"
#endif

#if (!defined HAVE_LIBPQ)
int db_postgres_open(const char *file, db_conn_p *conn_p)
{
	return DB_ERROR;
}
#else

static struct db_postgres_fns {
	PGconn* (*PQconnectdb_fn)(char*);
	ConnStatusType (*PQstatus_fn)(const PGconn*);
	char* (*PQerrorMessage_fn)(const PGconn*);
	void (*PQfinish_fn)(PGconn*);
	PGresult* (*PQexec_fn)(PGconn*, const char*);
	ExecStatusType (*PQresultStatus_fn)(const PGresult*);
	char* (*PQresultErrorMessage_fn)(const PGresult*);
	void (*PQclear_fn)(PGresult*);
	int (*PQntuples_fn)(const PGresult*);
	char* (*PQgetvalue_fn)(const PGresult*, int, int);
	size_t (*PQescapeStringConn_fn)(const PGconn*, char*, const char*, size_t, int*);
} f;

static void *dl_handle;

#define SO_FILE "libpq" SO_FILE_EXT

static void db_postgres_dlopen(void) {
	csync_debug(3, "Opening shared library %s\n", SO_FILE);

	dl_handle = dlopen(SO_FILE, RTLD_LAZY);
	if (dl_handle == NULL) {
		csync_fatal("Could not open libpq.so: %s\n"
				"Please install postgres client library (libpg) or use other database (sqlite, mysql)\n", dlerror());
	}
	csync_debug(3, "Reading symbols from shared library " SO_FILE "\n");

	LOOKUP_SYMBOL(dl_handle, PQconnectdb);
	LOOKUP_SYMBOL(dl_handle, PQstatus);
	LOOKUP_SYMBOL(dl_handle, PQerrorMessage);
	LOOKUP_SYMBOL(dl_handle, PQfinish);
	LOOKUP_SYMBOL(dl_handle, PQexec);
	LOOKUP_SYMBOL(dl_handle, PQresultStatus);
	LOOKUP_SYMBOL(dl_handle, PQresultErrorMessage);
	LOOKUP_SYMBOL(dl_handle, PQclear);
	LOOKUP_SYMBOL(dl_handle, PQntuples);
	LOOKUP_SYMBOL(dl_handle, PQgetvalue);
	LOOKUP_SYMBOL(dl_handle, PQescapeStringConn);
	LOOKUP_SYMBOL(dl_handle, PQntuples);
}

/* Thi function parses a URL string like pgsql://[user[:passwd]@]hostname[:port]/database.
 and returns the result in the given parameters.

 If an optional keyword is not given, the value of the parameter is not changed.
 */

static int db_pgsql_parse_url(char *url, char **host, char **user, char **pass, char **database, unsigned int *port) {
	char *pos = strchr(url, '@');
	if (pos) {
		*(pos) = 0;
		*(user) = url;
		url = pos + 1;

		pos = strchr(*user, ':');
		if (pos) {
			*(pos) = 0;
			*(pass) = (pos + 1);
		}
	}
	*host = url;
	pos = strchr(*host, '/');
	if (pos) {
		// Database
		(*pos) = 0;
		*database = pos + 1;
	}
	pos = strchr(*host, ':');
	if (pos) {
		(*pos) = 0;
		*port = atoi(pos + 1);
	}
	return DB_OK;
}

static void db_postgres_close(db_conn_p conn) {
	if (!conn)
		return;
	if (!conn->private_data)
		return;
	f.PQfinish_fn(static_cast<PGconn*>(conn->private_data));
	conn->private_data = 0;
}

static const char* db_postgres_errmsg(db_conn_p conn) {
	if (!conn)
		return "(no connection)";
	if (!conn->private_data)
		return "(no private_data data in conn)";
	return f.PQerrorMessage_fn(static_cast<PGconn*>(conn->private_data));
}

static int db_postgres_exec(db_conn_p conn, const char *sql) {
	PGresult *res;

	if (!conn)
		return DB_NO_CONNECTION;

	if (!conn->private_data) {
		/* added error element */
		return DB_NO_CONNECTION_REAL;
	}
	res = f.PQexec_fn(static_cast<PGconn*>(conn->private_data), sql);
	conn->affected_rows = 0;

	switch (f.PQresultStatus_fn(res)) {
	case PGRES_TUPLES_OK:
		conn->affected_rows = f.PQntuples_fn(res);
		return DB_OK;
	case PGRES_COMMAND_OK:
		return DB_OK;

	case PGRES_EMPTY_QUERY:
	case PGRES_COPY_OUT:
	case PGRES_COPY_IN:
	default:
		return DB_ERROR;
	}
}

static const char* db_postgres_stmt_get_column_blob(db_stmt_p stmt, int column) {
	PGresult *result;
	int *row_p;

	if (!stmt || !stmt->private_data || !stmt->private_data2) {
		return 0;
	}
	result = static_cast<PGresult*>(stmt->private_data);
	row_p = static_cast<int*>(stmt->private_data2);

	if (*row_p >= f.PQntuples_fn(result) || *row_p < 0) {
		csync_error(1, "row index out of range (should be between 0 and %d, is %d)\n", *row_p, f.PQntuples_fn(result));
		return NULL;
	}
	return f.PQgetvalue_fn(result, *row_p, column);
}

static const char* db_postgres_stmt_get_column_text(db_stmt_p stmt, int column) {
	PGresult *result;
	int *row_p;

	if (!stmt || !stmt->private_data || !stmt->private_data2) {
		return 0;
	}
	result = static_cast<PGresult*>(stmt->private_data);
	row_p = static_cast<int*>(stmt->private_data2);

	if (*row_p >= f.PQntuples_fn(result) || *row_p < 0) {
		csync_error(1, "row index out of range (should be between 0 and %d, is %d)\n", *row_p, f.PQntuples_fn(result));
		return NULL;
	}
	return f.PQgetvalue_fn(result, *row_p, column);
}

static int db_postgres_stmt_get_column_int(db_stmt_p stmt, int column) {
	PGresult *result;
	int *row_p;

	if (!stmt || !stmt->private_data || !stmt->private_data2) {
		return 0;
	}
	result = static_cast<PGresult*>(stmt->private_data);
	row_p = static_cast<int*>(stmt->private_data2);

	if (*row_p >= f.PQntuples_fn(result) || *row_p < 0) {
		csync_error(1, "row index out of range (should be between 0 and %d, is %d)\n", *row_p, f.PQntuples_fn(result));
		return 0;
	}
	return atoi(f.PQgetvalue_fn(result, *row_p, column));
}

static int db_postgres_stmt_next(db_stmt_p stmt) {
	PGresult *result;
	int *row_p;

	if (!stmt || !stmt->private_data || !stmt->private_data2) {
		return 0;
	}
	result = static_cast<PGresult*>(stmt->private_data);
	row_p = static_cast<int*>(stmt->private_data2);

	(*row_p)++;
	if (*row_p >= f.PQntuples_fn(result))
		return DB_DONE;

	return DB_ROW;
}

static int db_postgres_stmt_close(db_stmt_p stmt) {
	PGresult *res = static_cast<PGresult*>(stmt->private_data);

	f.PQclear_fn(res);
	free(stmt->private_data2);
	free(stmt);
	return DB_OK;
}

#define FILE_LENGTH 275
#define HOST_LENGTH  50
static int db_postgres_upgrade_to_schema(db_conn_p conn, int version) {
	csync_info(2, "Upgrading database schema to version %d.\n", version);

	csync_db_sql(conn, NULL, /* "Creating action table", */
	"CREATE TABLE action ("
			"  filename varchar(%u),"
			"  command varchar(1000),"
			"  logfile varchar(1000),"
			"  UNIQUE (filename,command));", FILE_LENGTH);

	csync_db_sql(conn, NULL, /* "Creating host table", */
	"CREATE TABLE host ("
			"  host varchar(%u),"
			"  status integer, "
			"  UNIQUE (host));", HOST_LENGTH);

	csync_db_sql(conn, NULL, /* "Creating dirty table", */
	"CREATE TABLE dirty ("
			"  filename  varchar(%u) ,"
			"  forced    int         ,"
			"  myname    varchar(%u) ,"
			"  peername  varchar(%u) ,"
			"  checktxt  varchar(255),"
			"  digest    varchar(130),"
			"  device    bigint      ,"
			"  inode     bigint      ,"
			"  operation varchar(100),"
			"  op 	  int	      ,"
			"  other     varchar(%u) ,"
			"  mode   int            ,"
			"  mtime  int    	      ,"
			"  type   int    	      ,"
			"  file_id   bigint      ,"
			"  timestamp timestamp   DEFAULT current_timestamp,"
			"  UNIQUE (filename,peername,myname)"
			");"
			"CREATE INDEX idx_dirty_device_inode on dirty (device, inode);",
	FILE_LENGTH, HOST_LENGTH, HOST_LENGTH, FILE_LENGTH);

	csync_db_sql(conn, NULL, /* "Creating file table", */
	"CREATE TABLE file ("
//		     "  id     serial        ,"
				 "  parent bigint        ,"
				 "  filename varchar(%u) ,"
				 "  basename varchar(%u) ,"
				 "  hostname varchar(%u) ,"
				 "  checktxt varchar(%u),"
				 "  device bigint        ,"
				 "  inode  bigint        ,"
				 "  size   bigint        ,"
				 "  mode   int           ,"
				 "  mtime  int    	     ,"
				 "  type   int    	     ,"
				 "  digest varchar(130)  ,"
				 "  timestamp timestamp  DEFAULT CURRENT_TIMESTAMP,"
//		     "  UNIQUE (id),"
				 "  UNIQUE (filename,hostname)"
				 "); "
				 "CREATE INDEX idx_file_device_inode ON FILE (device, inode); ",
	FILE_LENGTH, FILE_LENGTH, HOST_LENGTH, FILE_LENGTH + 50);

	csync_db_sql(conn, NULL, /* "Creating hint table", */
	"CREATE TABLE hint ("
			"  filename varchar(%u)   ,"
			"  recursive int          "
			");", FILE_LENGTH);

	csync_db_sql(conn, NULL, /* "Creating x509_cert table", */
	"CREATE TABLE x509_cert ("
			"  peername varchar(50) ,"
			"  certdata text ,"
			"  UNIQUE (peername)"
			");");

	return DB_OK;
}

static const char* db_postgres_escape(db_conn_p conn, const char *string) {
	int rc = DB_ERROR;
	if (!conn)
		return 0;

	if (!conn->private_data) {
		return 0;
	}
	size_t length = strlen(string);
	char *escaped_buffer = ringbuffer_malloc(2 * length + 1);
	f.PQescapeStringConn_fn(static_cast<PGconn*>(conn->private_data), escaped_buffer, string, length, &rc);

	return escaped_buffer;
}

static int db_postgres_insert_update_file(db_conn_p db, filename_p encoded, const char *checktxt_encoded,
		struct stat *file_stat, const char *digest) {
	BUF_P buf = buffer_init();
	char *digest_quote = buffer_quote(buf, digest);
	int count =
			SQL(db, "Add or update file entry",
					"INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) "
							"VALUES ('%s', '%s', '%s', %lu, %llu, %s, %u, %lu, %lu, %u) ON CONFLICT (filename, hostname) DO UPDATE SET "
							"checktxt = '%s', device = %lu, inode = %llu, "
							"digest = %s, mode = %u, size = %lu, mtime = %lu, type = %u", g_myhostname, encoded.c_str(),
					checktxt_encoded, fstat_dev(file_stat), file_stat->st_ino, digest_quote, file_stat->st_mode,
					file_stat->st_size, file_stat->st_mtime, get_file_type(file_stat->st_mode),
					// SET
					checktxt_encoded, fstat_dev(file_stat), file_stat->st_ino, digest_quote, file_stat->st_mode,
					file_stat->st_size, file_stat->st_mtime, get_file_type(file_stat->st_mode));
	buffer_destroy(buf);
	return count;
}

static int db_postgres_prepare(db_conn_p conn, const char *sql, db_stmt_p *stmt_p, const char **pptail) {
	// unused
	(void) pptail;

	PGresult *result;
	int *row_p;

	*stmt_p = NULL;

	if (!conn)
		return DB_NO_CONNECTION;

	if (!conn->private_data) {
		/* added error element */
		return DB_NO_CONNECTION_REAL;
	}
	result = f.PQexec_fn(static_cast<PGconn*>(conn->private_data), sql);

	if (result == NULL) {
		csync_fatal("No memory for result\n");
	}

	switch (f.PQresultStatus_fn(result)) {
	case PGRES_COMMAND_OK:
	case PGRES_TUPLES_OK:
		break;

	default:
		csync_error(1, "Error in PQexec: %s", f.PQresultErrorMessage_fn(result));
		f.PQclear_fn(result);
		return DB_ERROR;
	}

	row_p = static_cast<int*>(malloc(sizeof(*row_p)));
	if (row_p == NULL) {
		csync_fatal("No memory for row\n");
	}
	*row_p = -1;

	db_stmt_p stmt = static_cast<db_stmt_p>(malloc(sizeof(*stmt)));
	if (stmt == NULL) {
		csync_fatal("No memory for stmt\n");
	}

	stmt->private_data = result;
	stmt->private_data2 = row_p;

	*stmt_p = stmt;
	stmt->get_column_text = db_postgres_stmt_get_column_text;
	stmt->get_column_blob = db_postgres_stmt_get_column_blob;
	stmt->get_column_int = db_postgres_stmt_get_column_int;
	stmt->next = db_postgres_stmt_next;
	stmt->close = db_postgres_stmt_close;
	stmt->db = conn;
	return DB_OK;
}



int db_postgres_open(const char *file, db_conn_p *conn_p) {
	PGconn *pg_conn;
	char *host = NULL, *user = NULL, *pass = NULL, *database = NULL;
	unsigned int port = 5432; /* default postgres port */
	char *db_url = static_cast<char*>(malloc(strlen(file) + 1));
	char *pg_conn_info;

	db_postgres_dlopen();

	if (db_url == NULL) {
		csync_fatal("No memory for db_url\n");
	}

	strcpy(db_url, file);
	int rc = db_pgsql_parse_url(db_url, &host, &user, &pass, &database, &port);
	if (rc != DB_OK)
		return rc;

	ASPRINTF(&pg_conn_info, "host='%s' user='%s' password='%s' dbname='%s' port=%d", host, user, pass, database, port);

	pg_conn = f.PQconnectdb_fn(pg_conn_info);
	if (pg_conn == NULL) {
		csync_fatal("No memory for postgress connection handle\n");
	}
	if (f.PQstatus_fn(pg_conn) != CONNECTION_OK) {
		f.PQfinish_fn(pg_conn);
		free(pg_conn_info);

		ASPRINTF(&pg_conn_info, "host='%s' user='%s' password='%s' dbname='postgres' port=%d", host, user, pass, port);

		pg_conn = f.PQconnectdb_fn(pg_conn_info);
		if (pg_conn == NULL)
			csync_fatal("No memory for postgress connection handle\n");

		if (f.PQstatus_fn(pg_conn) != CONNECTION_OK) {
			csync_error(0, "Connection failed: %s", f.PQerrorMessage_fn(pg_conn));
			f.PQfinish_fn(pg_conn);
			free(pg_conn_info);
			return DB_ERROR;
		} else {
			char *create_database_statement;
			PGresult *res;

			csync_warn(1, "Database %s not found, trying to create it ...", database);
			ASPRINTF(&create_database_statement, "create database %s", database);
			res = f.PQexec_fn(pg_conn, create_database_statement);

			free(create_database_statement);

			switch (f.PQresultStatus_fn(res)) {
			case PGRES_COMMAND_OK:
			case PGRES_TUPLES_OK:
				break;

			case PGRES_EMPTY_QUERY:
			case PGRES_COPY_OUT:
			case PGRES_COPY_IN:
			default:
				csync_error(0, "Could not create database %s: %s", database, f.PQerrorMessage_fn(pg_conn));
				return DB_ERROR;
			}

			f.PQfinish_fn(pg_conn);
			free(pg_conn_info);

			ASPRINTF(&pg_conn_info, "host='%s' user='%s' password='%s' dbname='%s' port=%d", host, user, pass, database,
					port);

			pg_conn = f.PQconnectdb_fn(pg_conn_info);
			if (pg_conn == NULL) {
				csync_fatal("No memory for postgress connection handle\n");
			}
			if (f.PQstatus_fn(pg_conn) != CONNECTION_OK) {
				csync_error(0, "Connection failed: %s", f.PQerrorMessage_fn(pg_conn));
				f.PQfinish_fn(pg_conn);
				free(pg_conn_info);
				return DB_ERROR;
			}
		}
	}

	db_conn_p conn = static_cast<db_conn_p>(calloc(1, sizeof(*conn)));
	if (conn == NULL) {
		csync_fatal("No memory for conn\n");
	}
	db_sql_init(conn);
	*conn_p = conn;
	conn->private_data = pg_conn;
	conn->close = db_postgres_close;
	conn->exec = db_postgres_exec;
	conn->errmsg = db_postgres_errmsg;
	conn->prepare = db_postgres_prepare;
	conn->upgrade_to_schema = db_postgres_upgrade_to_schema;
	conn->insert_update_file = db_postgres_insert_update_file;
	conn->escape = db_postgres_escape;
	free(pg_conn_info);

	return DB_OK;
}

#endif   /* HAVE_POSTGRES */
