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

#ifndef CSYNC2_UTILS_HPP
#define CSYNC2_UTILS_HPP 1
/* getrealfn.c */
char *getrealfn(filename_p filename);
const char *prefixsubst(filename_p filename);
const char *prefixencode(filename_p filename);

// Modern C++ versions
std::string prefixsubst_cpp(const char *in);
std::string prefixencode_cpp(const char *filename);

/* prefixsubst.c */
/* another ringbuffer here. so use it with care!! */
extern "C" {
#include "utils.h"
}

char *filter_mtime(char *chktxt);
char *filter_mtime_copy(const char *chktxt);

#define DIR_TYPE 1
#define REG_TYPE 2
#define CHR_TYPE 3
#define BLK_TYPE 4
#define FIFO_TYPE 5
#define LINK_TYPE 6
#define SOCK_TYPE 7
int get_file_type(int st_mode);
#endif /* CSYNC2_UTILS_HPP */
