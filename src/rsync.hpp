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

#ifndef CSYNC2_RSYNC_H
#define CSYNC2_RSYNC_H 1

#include <stdio.h>
#include <sys/types.h>

/* rsync.c - Rsync operations and file transfer */
extern int csync_rs_check(int conn, filename_p filename, int isreg);
extern void csync_rs_sig( int conn, filename_p filename);
extern int csync_rs_delta(int conn, filename_p filename);
extern int csync_rs_patch(int conn, filename_p filename);
extern int csync_recv_file(int conn, FILE *file);
extern int csync_send_file(int conn, FILE *file);
extern int csync_rs_recv_delta_and_patch(int sock, filename_p fname);

/* Utility functions */
extern char *to_hex(const char str[], size_t length, char hexbuffer[]);

#endif /* CSYNC2_RSYNC_H */
