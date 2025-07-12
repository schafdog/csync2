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

#ifndef CSYNC2_DB_H
#define CSYNC2_DB_H 1

#include <sys/stat.h>
#include "db_api.hpp"

/* db.c - Database operations and SQL macros */
extern db_conn_p csync_db_open(const char *file);
extern void csync_db_close(db_conn_p db);

extern long csync_db_sql(db_conn_p db, const char *err, const char *fmt, ...);
extern long db_query(db_conn_p db, const char *err, const char *fmt, ...);
extern void* csync_db_begin(db_conn_p db, const char *err, const char *fmt, ...);
extern int csync_db_next(void *vmx, const char *err,
		int *pN, const char ***pazValue, const char ***pazColName);
extern void csync_db_fin(void *vmx, const char *err);
extern const char* csync_db_colblob(void *stmtx,int col);
extern long  csync_db_long(void *stmtx,int col, long *result);
extern char *db_default_database(const char *dbdir, const char *myhostname, const char *cfg_name);
const char *csync_db_escape(const char *);
const char *csync_db_escape(filename_p filename);
extern const char *csync_db_quote(filename_p filename);
extern const char *csync_db_escape_quote(filename_p filename);
dev_t fstat_dev(struct stat *file_stat);

extern int db_blocking_mode;
extern int db_sync_mode;

#endif /* CSYNC2_DB_H */
