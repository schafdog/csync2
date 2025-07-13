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
int db_type = DB_SQLITE3; //default type
static db_conn_p global_db = 0;
// TODO make configurable

static int get_dblock_timeout(void) {
	return getpid() % 7 + csync_lock_timeout;
}

static int tqueries_counter = -50;
static int begin_commit_recursion = 0;
static int in_sql_query = 0;
const char *(*db_decode)(const char *value);

static void csync_db_alarmhandler(int signum) {
	// unused parameter
	(void) signum;

	if (in_sql_query || begin_commit_recursion)
		alarm(2);

	if (tqueries_counter <= 0)
		return;

	begin_commit_recursion++;

	// csync_info(3, "Database idle in transaction. Forcing COMMIT.\n");
	global_db->exec("COMMIT ");
	tqueries_counter = -10;

	begin_commit_recursion--;
}

db_conn_p csync_db_open(const char *file) {
	db_conn_p db = NULL;
	int rc = db_open(file, db_type, &db);
	global_db = db;
	if (rc != DB_OK || db == NULL)
		csync_fatal("Can't open database: %s\n", file);

	db_set_logger(db, csync_log_c);

	/* ignore errors on table creation */
	in_sql_query++;

	if (db->schema_version() < DB_SCHEMA_VERSION)
	    if (db->upgrade_to_schema(DB_SCHEMA_VERSION) == DB_SCHEMA_VERSION)
			csync_fatal("Cannot create database tables (version requested = %d): %s\n", DB_SCHEMA_VERSION,
					db->errmsg());

	if (!db_sync_mode)
		db->exec("PRAGMA synchronous = OFF");
	in_sql_query--;
	return db;
}

void csync_db_close(db_conn_p db) {
    //delete db;
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
