/* -*- c-file-style: "k&r"; c-basic-offset: 4; tab-width: 4; indent-tabs-mode: t -*-
 DB API

 */

#include "csync2.hpp"
#include <algorithm>
#include <stdio.h>
#include <stdarg.h>
#include <stdlib.h>
#include <unistd.h>
#include <signal.h>
#include <time.h>
#include "db_api.hpp"

#include "database.hpp"
#include "db_mysql.hpp"
#include "db_postgres.hpp"
#include "db_sqlite.hpp"

#define DEADLOCK_MESSAGE \
	"Database backend is exceedingly busy => Terminating (requesting retry).\n"

DbApi *db_create_api(std::unique_ptr<DatabaseConnection>& conn) {
		switch (conn->getType()) {
		case DBType::SQLite:
			return new DbSqlite(conn);
		case DBType::MySQL:
			return new DbMySql(conn.release());
		case DBType::PostgreSQL:
			return new DbPostgres(conn.release());
		default:
			throw DatabaseError("Unknown DatabaseConnection");
		}
}

DbApi *db_create_api(const char *conn_str) {
    auto conn = create_connection(conn_str);
	if (conn == NULL) {
		throw DatabaseError(std::string("Unknown DatabaseConnection:") + conn_str);
	}
	return db_create_api(conn);
}

static int db_detect_type(const char **db_str, int type) {
	const char *db_types[] = { "mysql://", "sqlite3://", "pgsql://", 0 };
	int types[] = { DB_MYSQL, DB_SQLITE3, DB_PGSQL };
	int index;
	for (index = 0; 1; index++) {
		if (db_types[index] == 0)
			break;
		if (!strncmp(*db_str, db_types[index], strlen(db_types[index]))) {
			*db_str += strlen(db_types[index]);
			return types[index];
		}
	}
	return type;
}
int db_open(const char *file, int default_type, db_conn_p *db) {
	int rc = DB_ERROR;
	const char *db_str;
	db_str = file;

	default_type = db_detect_type(&db_str, default_type);
	/* Switch between implementation */
	switch (default_type) {
	case DB_SQLITE3:
		rc = db_sqlite_open(db_str, db);

		if (rc != DB_OK && db_str[0] != '/')
			fprintf(csync_out_debug,
					"Cannot open database file: %s, maybe you need three slashes (like sqlite:///var/lib/csync2/csync2.db)\n",
					db_str);
		break;
#ifdef HAVE_MYSQL
	case DB_MYSQL:
		rc = db_mysql_open(db_str, db);
		break;
#else
  case DB_MYSQL:
    csync_fatal("No Mysql support configured. Please reconfigure with --enable-mysql (database is %s).\n", file);
    rc = DB_ERROR;
    break;
#endif
#ifdef HAVE_LIBPQ
	case DB_PGSQL:
		rc = db_postgres_open(db_str, db);
		break;
#else
  case DB_PGSQL:
    csync_fatal("No Postgres SQL support configured. Please reconfigure with --enable-postgres (database is %s).\n", file);
    rc = DB_ERROR;
    break;
#endif

	default:
		csync_fatal("Database type not found. Can't open database %s\n", file)
		;
		rc = DB_ERROR;
	}
	//if (*db)
	//	(*db)->logger = 0;
	return rc;
}

void db_set_logger(db_conn_p conn, void (*logger)(int priority, int lv, const char *fmt, ...)) {
	if (conn == NULL)
		csync_fatal("No connection in set_logger.\n");

	//conn->logger = logger;
}

void db_conn_close(db_conn_p conn) {
	if (!conn)
		return;
	delete conn;
}
