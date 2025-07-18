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

#ifndef CSYNC2_UPDATE_H
#define CSYNC2_UPDATE_H 1
int get_auto_method(peername_p peername, filename_p filename);
int csync_auto_resolve_time_size(int auto_method, time_t time_l, time_t time_p, long long size_l, long long size_p);
int compare_files(filename_p filename, const char *pattern, int recursive);
extern void csync_update(db_conn_p db, const char *myname, char **peers,
			 const char **patlist, int patnum, int ip_version, update_func func, int flags);

extern void csync_update_host(db_conn_p db, const char *myname, peername_p peername,
			      const char **patlist, int patnum, int ip_version, int flags);

extern void csync_sync_host(db_conn_p db, const char *myname, peername_p peername,
			    const char **patlist, int patnum, int ip_version, int flags);

extern void csync_ping_host(db_conn_p db, const char *myname, peername_p peername,
			    const char **patlist, int patnum, int ip_version, int flags);

extern int csync_diff(db_conn_p db, const char *myname, peername_p peername, filename_p filename, int ip_version);
extern int csync_insynctest(db_conn_p db, const char *myname, peername_p peername, filename_p filename, int ip_version, int flags);
extern int csync_insynctest_all(db_conn_p db, filename_p filename, int ip_version, char *active_peers[], int flags);
extern void csync_remove_old(db_conn_p db, filename_p pattern);
int csync_update_file_sig_rs_diff(int conn, peername_p myname, peername_p peername, const char *key_enc,
								  filename_p filename, filename_p filename_enc,
								  const struct stat *st,
								  const char *uidptr, const char *gidptr,
								  const char *chk_local,
								  const char *digest,
								  int *last_conn_status,
								  int log_level);
#endif /* CSYNC2_UPDATE_H */
