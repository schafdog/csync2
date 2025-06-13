/*  -*- c-file-style: "k&r"; c-basic-offset: 4; tab-width: 4; indent-tabs-mode: t -*-
 *  csync2 - cluster synchronization tool, 2nd generation
 *  LINBIT Information Technologies GmbH <http://www.linbit.com>
 *  Copyright (C) 2004, 2005, 2006  Clifford Wolf <clifford@clifford.at>
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
#include "db_api.hpp"
#include "db.hpp"

#define DEADLOCK_MESSAGE \
	"Database backend is exceedingly busy => Terminating (requesting retry).\n"

int db_blocking_mode = 1;
int db_sync_mode = 1;

extern int db_type;
static db_conn_p global_db = 0;
// TODO make configurable
static int wait_length = 2;

static int get_dblock_timeout(void) {
	return getpid() % 7 + csync_lock_timeout;
}

static int tqueries_counter = -50;
static time_t transaction_begin = 0;
static time_t last_wait_cycle = 0;
static int begin_commit_recursion = 0;
static int in_sql_query = 0;

static void csync_db_alarmhandler(int signum) {
	// unused parameter
	(void) signum;

	if (in_sql_query || begin_commit_recursion)
		alarm(2);

	if (tqueries_counter <= 0)
		return;

	begin_commit_recursion++;

	// csync_info(3, "Database idle in transaction. Forcing COMMIT.\n");
	SQL(global_db, "COMMIT (alarmhandler)", "COMMIT ");
	tqueries_counter = -10;

	begin_commit_recursion--;
}

static void csync_db_maybegin(db_conn_p db) {
	if (!db_blocking_mode || begin_commit_recursion)
		return;
	begin_commit_recursion++;

	signal(SIGALRM, SIG_IGN);
	alarm(0);

	tqueries_counter++;
	if (tqueries_counter <= 0) {
		begin_commit_recursion--;
		return;
	}

	if (tqueries_counter == 1) {
		transaction_begin = time(0);
		if (!last_wait_cycle)
			last_wait_cycle = transaction_begin;
		SQL(db, "BEGIN ", "BEGIN ");
	}

	begin_commit_recursion--;
}

static void csync_db_maycommit(db_conn_p db) {
	time_t now;

	if (!db_blocking_mode || begin_commit_recursion)
		return;
	begin_commit_recursion++;

	if (tqueries_counter <= 0) {
		begin_commit_recursion--;
		return;
	}

	now = time(0);

	if (wait_length && (now - last_wait_cycle) > 10) {
		SQL(db, "COMMIT", "COMMIT ");
		if (wait_length) {
			csync_info(2, "Waiting %d secs so others can lock the database (%d - %d)...\n", wait_length, (int )now,
					(int )last_wait_cycle);
			sleep(wait_length);
		}
		last_wait_cycle = 0;
		tqueries_counter = -10;
		begin_commit_recursion--;
		return;
	}

	if ((tqueries_counter > 1000) || ((now - transaction_begin) > 3)) {
		SQL(db, "COMMIT (1000) ", "COMMIT ");
		tqueries_counter = 0;
		begin_commit_recursion--;
		return;
	}

	//signal(SIGALRM, csync_db_alarmhandler);
	//alarm(10);

	begin_commit_recursion--;
	return;
}

db_conn_p csync_db_open(const char *file) {
	db_conn_p db = NULL;
	int rc = db_open(file, db_type, &db);
	global_db = db;
	if (rc != DB_OK || db == NULL)
		csync_fatal("Can't open database: %s\n", file);

	db_set_logger(db, csync_log);

	/* ignore errors on table creation */
	in_sql_query++;

	if (db_schema_version(global_db) < DB_SCHEMA_VERSION)
		if (db_upgrade_to_schema(db, DB_SCHEMA_VERSION) == DB_SCHEMA_VERSION)
			csync_fatal("Cannot create database tables (version requested = %d): %s\n", DB_SCHEMA_VERSION,
					db_errmsg(global_db));

	if (!db_sync_mode)
		db_exec(db, "PRAGMA synchronous = OFF");
	in_sql_query--;
	return db;
}

void csync_db_close(db_conn_p db) {
	if (!db || begin_commit_recursion)
		return;

	begin_commit_recursion++;
	if (tqueries_counter > 0) {
		SQL(db, "COMMIT (close)", "COMMIT ");
		tqueries_counter = -10;
	}
	csync_info(4, "Closing db: %p\n", db);
	db_conn_close(db);
	csync_info(4, "Closed db: %p\n", db);
	begin_commit_recursion--;
	global_db = 0;
	free(db);
}

long csync_db_sql(db_conn_p db, const char *err, const char *fmt, ...) {
	char *sql;
	va_list ap;
	int rc, busyc = 0;

	va_start(ap, fmt);
	VASPRINTF(&sql, fmt, ap);
	va_end(ap);

	in_sql_query++;
	csync_db_maybegin(db);

	csync_info(3, "csync2_db_SQL: %s\n", sql);

	while (1) {
		rc = db_exec(db, sql);
		if (rc != DB_BUSY)
			break;
		if (busyc++ > get_dblock_timeout()) {
			db = 0;
			csync_fatal(DEADLOCK_MESSAGE);
		}
		csync_warn(1, "Database is busy, sleeping before retry of SQL: '%s'\n", sql);
		sleep(1);
	}
	long count = 0;
	if (rc != DB_OK && err) {
		csync_fatal("Database Error: %s [%d]: %s on executing %s\n", err, rc, db_errmsg(db), sql);
	} else {
		if (rc == DB_OK)
			count = db->affected_rows;
		else
			count = rc;
	}
	free(sql);

	csync_db_maycommit(db);
	in_sql_query--;
	return count;
}

void* csync_db_begin(db_conn_p db, const char *err, const char *fmt, ...) {
	db_stmt_p stmt = NULL;
	char *sql;
	va_list ap;
	int rc, busyc = 0;
	const char *ppTail;
	va_start(ap, fmt);
	VASPRINTF(&sql, fmt, ap);
	va_end(ap);

	in_sql_query++;
	csync_db_maybegin(db);

	csync_log(LOG_DEBUG, 3, "SQL: %s\n", sql);
	while (1) {
		rc = db_prepare_stmt(db, sql, &stmt, &ppTail);
		if (rc != DB_BUSY)
			break;
		if (busyc++ > get_dblock_timeout()) {
			db = 0;
			csync_fatal(DEADLOCK_MESSAGE);
		}
		csync_warn(3, "Database is busy, sleeping a sec.\n");
		sleep(1);
	}

	if (rc != DB_OK && err)
		csync_fatal("Database Error: %s [%d]: %s on executing %s\n", err, rc, db_errmsg(db), sql);
	free(sql);

	return stmt;
}

static const char* csync_db_get_column_text(void *stmt, int column) {
	return db_stmt_get_column_text((db_stmt_p)stmt, column);
}

static int csync_db_get_column_int(void *stmt, int column) {
	return db_stmt_get_column_int((db_stmt_p) stmt, column);
}

int csync_db_next(void *vmx, const char *err, int *pN, const char ***pazValue, const char ***pazColName) {
	// unused
	(void) pN;
	(void) pazValue;
	(void) pazColName;

	db_stmt_p stmt = (db_stmt_p)vmx;
	int rc, busyc = 0;

	csync_info(4, "Trying to fetch a row from the database.\n");

	while (1) {
		rc = db_stmt_next(stmt);
		if (rc != DB_BUSY)
			break;
		if (busyc++ > get_dblock_timeout()) {
			global_db = 0;
			csync_fatal(DEADLOCK_MESSAGE);
		}
		csync_warn(3, "Database is busy, sleeping a sec.\n");
		sleep(1);
	}

	if (rc != DB_OK && rc != DB_ROW && rc != DB_DONE && err) {
		csync_fatal("Database Error: %s [%d]: %s\n", err, rc, db_errmsg(global_db));
	}

	return rc == DB_ROW;
}

const void* csync_db_colblob(void *stmtx, int col) {
	db_stmt_p stmt = (db_stmt_p)stmtx;
	const char  *ptr = (const char*)stmt->get_column_blob(stmt, col);
	if (stmt->db && stmt->db->logger) {
		stmt->db->logger(LOG_DEBUG, 4, "DB get blob: %s ", ptr);
	}
	return ptr;
}

long csync_db_long(void *stmtx, int col, long *result) {
	const char *ptr = (const char*) csync_db_colblob(stmtx, col);
	char *rest;
	if (!ptr) {
		return -1;
	}
	errno = 0;
	*result = strtol(ptr, &rest, 10);
	return errno;
}

void csync_db_fin(void *vmx, const char *err) {
	db_stmt_p stmt = (db_stmt_p) vmx;
	int rc, busyc = 0;

	if (vmx == NULL)
		return;

	csync_warn(3, "SQL Query finished.\n");

	while (1) {
		rc = db_stmt_close(stmt);
		if (rc != DB_BUSY)
			break;
		if (busyc++ > get_dblock_timeout()) {
			global_db = 0;
			csync_fatal(DEADLOCK_MESSAGE);
		}
		csync_warn(3, "Database is busy, sleeping a sec.\n");
		sleep(1);
	}

	if (rc != DB_OK && err)
		csync_fatal("Database Error: %s [%d]: %s\n", err, rc, db_errmsg(global_db));

	csync_db_maycommit(global_db);
	in_sql_query--;
}

#if defined(HAVE_SQLITE)
#define DBEXTENSION ".db"
#endif
#if defined(HAVE_SQLITE3)
#define DBEXTENSION ".db3"
#else
#define DBEXTENSION ""
#endif

char* db_default_database(const char *dbdir, const char *myhostname, const char *cfgname) {
	char *db;

#if defined(HAVE_SQLITE3)
	if (cfgname[0] != '\0')
		ASPRINTF(&db, "sqlite3://%s/%s_%s" DBEXTENSION, dbdir, myhostname, cfgname);
	else
		ASPRINTF(&db, "sqlite3://%s/%s" DBEXTENSION, dbdir, myhostname);
#elif defined(HAVE_SQLITE)
	if (cfgname[0] != '\0')
		ASPRINTF(&db, "sqlite2://%s/%s_%s" DBEXTENSION, dbdir, myhostname, cfgname);
	else
		ASPRINTF(&db, "sqlite2://%s/%s" DBEXTENSION, dbdir, myhostname);
#elif defined(HAVE_MYSQL)
	if (cfgname[0] != '\0')
		ASPRINTF(&db, "mysql://root@localhost/csync2_%s_%s" DBEXTENSION, myhostname, cfgname);
	else
		ASPRINTF(&db, "mysql://root@localhost/csync2_%s" DBEXTENSION, myhostname);

#elif defined(HAVE_LIBPQ)
	if (cfgname[0] != '\0')
		ASPRINTF(&db, "pgsql://root@localhost/csync2_%s_%s" DBEXTENSION, myhostname, cfgname);
	else
		ASPRINTF(&db, "pgsql://root@localhost/csync2_%s" DBEXTENSION, myhostname);

#else
#error "No database backend available. Please install either libpg, libmysqlclient or libsqlite, reconfigure and recompile"
#endif

	return db;
}
