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
extern void* csync_db_begin(db_conn_p db, const char *err, const char *fmt, ...);
extern int csync_db_next(void *vmx, const char *err,
		int *pN, const char ***pazValue, const char ***pazColName);
extern void csync_db_fin(void *vmx, const char *err);
extern const char* csync_db_colblob(void *stmtx,int col);
extern long  csync_db_long(void *stmtx,int col, long *result);
extern char *db_default_database(const char *dbdir, const char *myhostname, const char *cfg_name);
extern const char *csync_db_escape(const char *);
extern const char *csync_db_quote(filename_p filename); 
extern const char *csync_db_escape_quote(filename_p filename); 
dev_t fstat_dev(struct stat *file_stat);

#define SQL(db, e, s, rest...) csync_db_sql(db, e, s, ##rest)

extern const char* (*db_decode) (const char *value); 
//extern const char* (*db_encode) (const char *value); 

#define SQL_BEGIN(db, e, s, ...) \
{ \
    const char *SQL_ERR = e; \
	void *SQL_VM = csync_db_begin(db, SQL_ERR, s, ##__VA_ARGS__); \
	int SQL_COUNT = 0; \
	(void) SQL_COUNT; \
\
	if (SQL_VM) { \
		while (1) { \
			const char **dataSQL_V, **dataSQL_N; \
			int SQL_C; \
			if ( !csync_db_next(SQL_VM, SQL_ERR,		\
						&SQL_C, &dataSQL_V, &dataSQL_N) ) break; \
			SQL_COUNT++;

#define SQL_V(col)				\
    (static_cast<const char *>(csync_db_colblob(SQL_VM,(col))))

#define SQL_V_long(col, result)			\
    (csync_db_long(SQL_VM,(col), (result)))

#define SQL_FIN }{

#define SQL_END \
		} \
		    csync_db_fin(SQL_VM, SQL_ERR);	\
	} \
}

extern int db_blocking_mode;
extern int db_sync_mode;

#endif /* CSYNC2_DB_H */
