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

#ifndef CSYNC2_CONN_H
#define CSYNC2_CONN_H 1

#include <stdio.h>
#include <sys/types.h>
#include <db_api.h>

/* Forward declarations */
typedef const char * peername_p;

/* conn.c - Connection management and SSL */
extern int conn_open(peername_p myhostname, peername_p peername, int ip_version);
extern int conn_set(int infd, int outfd);
extern int conn_activate_ssl(int server_role, int in, int out);
extern int conn_check_peer_cert(db_conn_p db, peername_p peername, int callfatal);
extern int conn_close(int conn);

extern ssize_t conn_read(int fd, char *buf, size_t count);
extern ssize_t conn_read_get_content_length(int fd, long long *size, int *type);
extern ssize_t conn_write(int fd, const char *buf, size_t count);
ssize_t gets_newline(int filedesc, char *s, size_t size, int remove_newline);
ssize_t conn_gets_newline(int filedesc, char *s, size_t size, int remove_newline);

extern void conn_printf(int fd, const char *fmt, ...);
extern int conn_fgets(int fd, char *s, int size);
extern size_t conn_gets(int fd, char *s, size_t size);
extern ssize_t conn_read_chunk(int fd, char **buffer, size_t *n_bytes);
extern int conn_write_chunk(int fd, const char *buffer, size_t n_bytes);
extern int conn_read_file_chunked(int sockfd, FILE *file);
extern int conn_send_file_chunked(int sockfd, FILE *file, size_t size);
#endif /* CSYNC2_CONN_H */
