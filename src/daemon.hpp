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

#ifndef CSYNC2_DAEMON_H
#define CSYNC2_DAEMON_H 1
#include "db_api.hpp"
void csync_daemon_session(int conn, int conn_out, db_conn_p db, int protocol_version, int mode);
int csync_copy_file(int fd_in, int fd_out);
int csync_dir_count(db_conn_p db, filename_p filename);

int csync_start(int mode, int flags, int argc, char *argv[], update_func updater, int listenfd, int cmd_db_version,
				int cmd_ip_version);
#endif /* CSYNC2_DAEMON_H */
