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
#include <time.h>
#include <string.h>
#include "database_postgres_v2.hpp"
#include "database_v2.hpp"
#include "modern_logging.hpp"
#include "db_api.hpp"
#include "db.hpp"
#include "db_postgres.hpp"
#include "dl.hpp"
#include "db_sql.hpp"
#include "utils.hpp"

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
	PGconn* (*PQconnectdb_fn)(const char*);
	ConnStatusType (*PQstatus_fn)(const PGconn*);
	char* (*PQerrorMessage_fn)(const PGconn*);
	void (*PQfinish_fn)(PGconn*);
	PGresult* (*PQexec_fn)(PGconn*, const char*);
	PGresult* (*PQprepare_fn)(PGconn *conn,
                    const char *stmtName, const char *query,
                    int nParams, const Oid *paramTypes);
	PGresult (*PQexecPrepared_fn)(PGconn *conn, const char *stmtName,
                         int nParams, const char * const *paramValues,
                         const int *paramLengths,const int *paramFormats,
                         int resultFormat);
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
	csync_debug(3, "Opening shared library {}", SO_FILE);

	dl_handle = dlopen(SO_FILE, RTLD_LAZY);
	if (dl_handle == NULL) {
		csync_fatal("Could not open libpq.so: {}\n"
				"Please install postgres client library (libpg) or use other database (sqlite, mysql)", dlerror());
	}
	csync_debug(3, "Reading symbols from shared library {}", SO_FILE);

	LOOKUP_SYMBOL(dl_handle, PQconnectdb);
	LOOKUP_SYMBOL(dl_handle, PQstatus);
	LOOKUP_SYMBOL(dl_handle, PQerrorMessage);
	LOOKUP_SYMBOL(dl_handle, PQfinish);
	LOOKUP_SYMBOL(dl_handle, PQexec);
	LOOKUP_SYMBOL(dl_handle, PQprepare);
	LOOKUP_SYMBOL(dl_handle, PQexecPrepared);
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

const char* DbPostgres::errmsg() {
    void *private_data = conn_->get_private_data();
	if (!private_data)
		return "(no private_data data in conn)";
	return f.PQerrorMessage_fn(static_cast<PGconn*>(private_data));
}

int DbPostgres::exec(const char *sql) {

	conn_->query(sql);
	return 0;
}

int DbPostgres::upgrade_to_schema(int new_version) {
	csync_info(2, "Upgrading database schema to version {}.", new_version);
	conn_->query("SET client_min_messages TO WARNING;");

	conn_->query(std::format(
		"CREATE TABLE IF NOT EXISTS action ("
		"  filename varchar({}),"
		"  command varchar(1000),"
		"  logfile varchar(1000),"
		"  UNIQUE (filename,command));",
		FILE_LENGTH));
	
	conn_->query(std::format(
		"CREATE TABLE IF NOT EXISTS host ("
		"  host varchar({}),"
		"  status integer, "
		"  UNIQUE (host));",
		HOST_LENGTH));

	conn_->query(std::format(
		"CREATE TABLE IF NOT EXISTS dirty ("
		"  filename  varchar({}) ,"
		"  forced    int         ,"
		"  myname    varchar({}) ,"
		"  peername  varchar({}) ,"
		"  checktxt  varchar({}) ,"
		"  digest    varchar({}) ,"
		"  device    bigint      ,"
		"  inode     bigint      ,"
		"  operation varchar(20) ,"
		"  op        int         ,"
		"  other     varchar({}) ,"
		"  mode      int         ,"
		"  mtime     int         ,"
		"  type      int         ,"
		"  file_id   bigint      ,"
		"  timestamp timestamp   DEFAULT current_timestamp,"
		"  UNIQUE (filename,peername,myname)"			");"
		"CREATE INDEX IF NOT EXISTS idx_dirty_device_inode on dirty (device, inode);",
		FILE_LENGTH, HOST_LENGTH, HOST_LENGTH, CHECKTXT_LENGTH+FILE_LENGTH, DIGEST_LENGTH, FILE_LENGTH));

	conn_->query(std::format(
	    "CREATE TABLE IF NOT EXISTS file ("
		//		     "  id     serial        ,"				 "  parent bigint        ,"
        "  filename varchar({}) ,"				 //"  basename varchar({}) ,"
        "  hostname varchar({}) ,"
        "  checktxt varchar({}) ,"
        "  device bigint        ,"
        "  inode  bigint        ,"
        "  size   bigint        ,"
        "  mode   int           ,"
        "  mtime  int           ,"
        "  type   int           ,"
        "  digest varchar({})   ,"
        "  timestamp timestamp   DEFAULT current_timestamp,"
        // "  UNIQUE (id),"
   	    "  UNIQUE (filename,hostname)"				 "); "
        "CREATE INDEX IF NOT EXISTS idx_file_device_inode ON file (device, inode); ",
		FILE_LENGTH, HOST_LENGTH, CHECKTXT_LENGTH+FILE_LENGTH, DIGEST_LENGTH));

	conn_->query(std::format(
	    "CREATE TABLE IF NOT EXISTS hint ("
		"  filename varchar({})    ,"
		"  is_recursive int        ,"
		"  UNIQUE (filename)       "
		");",
		FILE_LENGTH));

	conn_->query(std::format(
	    "CREATE TABLE IF NOT EXISTS x509_cert ("
		"  peername varchar(50) ,"
		"  certdata text ,"
		"  UNIQUE (peername)"
		");"));

	return DB_OK;
}

int DbPostgres::insert_update_file(filename_p filename, const std::string& checktxt,
		struct stat *file_stat, const char *digest) {
	int count =
			conn_->execute_update("insert_update_file",
					"INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) "
							"VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?) ON CONFLICT (filename, hostname) DO UPDATE SET "
							"checktxt = ?, device = ?, inode = ?, "
							"digest = ?, mode = ?, size = ?, mtime = ?, type = ?",
							g_myhostname, filename, checktxt,
							fstat_dev(file_stat), file_stat->st_ino,
							digest,
							file_stat->st_mode, file_stat->st_size, file_stat->st_mtime,
							get_file_type(file_stat->st_mode),
					// SET
					checktxt, fstat_dev(file_stat), file_stat->st_ino, digest, file_stat->st_mode,
					file_stat->st_size, file_stat->st_mtime, get_file_type(file_stat->st_mode));
	return count;
}

DbPostgres::DbPostgres() {}

DbPostgres::~DbPostgres() {
    delete conn_;
    if (dl_handle) {
        dlclose(dl_handle);
        dl_handle = NULL;
    }
}

int db_postgres_open(const char *file, db_conn_p *api_p) {
	PGconn *pg_conn;
	char *host = NULL, *user = NULL, *pass = NULL, *database = NULL;
	unsigned int port = 5432; /* default postgres port */
	std::string db_url(file);
	db_postgres_dlopen();

	int rc = db_pgsql_parse_url(const_cast<char *>(db_url.c_str()), &host, &user, &pass, &database, &port);
	if (rc != DB_OK) {
		return rc;
	}
	std::string	pg_conn_info = std::format("host='{}' user='{}' password='{}' dbname='{}' port={}",
										   host, user, pass, database, port);
	pg_conn = f.PQconnectdb_fn(pg_conn_info.c_str());
	if (pg_conn == NULL) {
		csync_fatal("No memory for postgress connection handle");
	}
	if (f.PQstatus_fn(pg_conn) != CONNECTION_OK) {
		f.PQfinish_fn(pg_conn);
			return DB_ERROR;
	}
	DatabaseConnection *conn = new PostgresConnection(pg_conn);
    DbPostgres *api = new DbPostgres(conn);
	if (api == NULL) {
		csync_fatal("No memory for conn");
	}
	*api_p = api;

	return DB_OK;
}

#endif   /* HAVE_POSTGRES */
