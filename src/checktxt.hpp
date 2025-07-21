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

#ifndef CSYNC2_CHECKTXT_H
#define CSYNC2_CHECKTXT_H 1
#include <time.h>

std::string csync_genchecktxt(const struct stat *st, filename_p filename, int flags);
std::string csync_genchecktxt_version(const struct stat *st, filename_p filename, int flags, int version);
const char* csync_genchecktxt_version_old(const struct stat *st, filename_p filename, int flags, int version);
int csync_cmpchecktxt(const char *a, const char *b);
int csync_cmpchecktxt(const std::string& a, const std::string& b);
int csync_cmpchecktxt_component(const char *a, const char *b, int flags);
int csync_get_checktxt_version(const char *value);
time_t csync_checktxt_get_time(const char *checktxt);
long long csync_checktxt_get_size(const char *checktxt);
long long csync_checktxt_get_long_long(const char *checktxt, const char *token);
/* checktxt.c  additional missing prototypes */
#endif /* CSYNC2_CHECKTXT_H */
