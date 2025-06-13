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

#ifndef CSYNC2_GROUPS_H
#define CSYNC2_GROUPS_H 1

#include <sys/stat.h>

/* Forward declarations */
typedef const char * filename_p;
typedef const char * peername_p;
struct csync_group;

/* groups.c - Group management and peer handling */

struct peer {
	const char *myname;
	peername_p peername;
};

typedef struct  peer *peer_t; 

struct file_info {
  filename_p filename;
  filename_p filename_enc;
  const char *operation;
  const char *key_enc;
  const struct stat *stat;
  const int rc_stat;
};

typedef struct file_info *file_info_t; 

extern const struct csync_group *csync_find_next(const struct csync_group *g, const char *file, int compare_mode);
extern int csync_match_file(const char *file, int compare_mode, const struct csync_group **g);
extern int csync_check_usefullness(const char *file, int recursive);
extern int csync_match_file_host(const char *file, const char *myname, peername_p peername, const char **keys);
extern struct peer *csync_find_peers(const char *file, const char *thispeer);
extern const char *csync_key(const char *hostname, filename_p filename);
extern int csync_perm(filename_p filename, const char *key, const char *hostname, int compare_mode);

#endif /* CSYNC2_GROUPS_H */
