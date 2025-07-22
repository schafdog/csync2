/*  -*- c-file-style: "k&r"; c-basic-offset: 4; tab-width: 4; indent-tabs-mode: t -*-
 *  csync2 - cluster synchronization tool, 2nd generation
 *  LINBIT Information Technologies GmbH <http://www.linbit.com>
 *  Copyright (C) 2005  Clifford Wolf <clifford@clifford.at>
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
#include "utils.hpp"
#include <string>

// Modern C++ version that returns std::string
std::string prefixsubst_cpp(const char *in) {
	struct csync_prefix *p;
	const char *pn, *path;
	size_t pn_len;

	if (!in || *in != '%')
		return std::string(in ? in : "");

       pn = in + 1;
       pn_len = strcspn(pn, "%");

       path = pn + pn_len;
       if (*path == '%')
               path++;

       for (p = csync_prefix; p; p = p->next) {
               if (strlen(p->name) == pn_len && !strncmp(p->name, pn, pn_len) && p->path) {
                       return std::string(p->path) + std::string(path);
               }
       }

       csync_fatal("Prefix '{:.{}}' is not defined for host '{}'.\n", pn, pn_len,  g_myhostname.c_str());
       return std::string();
}

std::string prefixsubst_cpp(const std::string &in) {
    return prefixsubst_cpp(in.c_str());
}

#define RINGBUFF_LEN 100

static char *ringbuff[RINGBUFF_LEN];
static int ringbuff_counter = 0;

// Legacy C-style version for backward compatibility
const char* prefixsubst(const char *in) {
	struct csync_prefix *p;
	const char *pn, *path;
	size_t pn_len;

	if (!in || *in != '%')
		return in;

	pn = in + 1;
	pn_len = strcspn(pn, "%");

	path = pn + pn_len;
	if (*path == '%')
		path++;

	for (p = csync_prefix; p; p = p->next) {
		if (strlen(p->name) == pn_len && !strncmp(p->name, pn, pn_len) && p->path) {
			ringbuff_counter = (ringbuff_counter + 1) % RINGBUFF_LEN;
			if (ringbuff[ringbuff_counter])
				free(ringbuff[ringbuff_counter]);
			ASPRINTF(&ringbuff[ringbuff_counter], "%s%s", p->path, path);
			return ringbuff[ringbuff_counter];
		}
	}

	csync_fatal_c("Prefix '%.*s' is not defined for host '%s'.\n", pn_len, pn, g_myhostname.c_str());
	return 0;
}

const char *prefixsubst(filename_p filename) {
	return prefixsubst(filename.c_str());
}

// Modern C++ version that returns std::string
std::string prefixencode_cpp(const char *filename) {
	if (!filename) return std::string();

#ifdef __CYGWIN__
	if (!strcmp(filename, "/")) {
		filename = "/cygdrive";
	}
#endif
	struct csync_prefix *p = csync_prefix;

	/*
	 * Canonicalized paths will always contain /
	 * Prefixsubsted paths will probably contain %
	 */
	if (*filename == '/') {
		while (p) {
			if (p->path) {
				int p_len = strlen(p->path);
				int f_len = strlen(filename);

				if (p_len <= f_len && !strncmp(p->path, filename, p_len)
						&& (filename[p_len] == '/' || !filename[p_len])) {
					return std::string("%") + std::string(p->name) + std::string("%") + std::string(filename + p_len);
				}
			}
			p = p->next;
		}
	}
	return std::string(filename);
}

// Legacy C-style version for backward compatibility
const char* prefixencode(const char *filename) {
#ifdef __CYGWIN__
	if (!strcmp(filename, "/")) {
		filename = "/cygdrive";
	}
#endif
	struct csync_prefix *p = csync_prefix;

	/*
	 * Canonicalized paths will always contain /
	 * Prefixsubsted paths will probably contain %
	 */
	if (*filename == '/')
		while (p) {
			if (p->path) {
				int p_len = strlen(p->path);
				int f_len = strlen(filename);

				if (p_len <= f_len && !strncmp(p->path, filename, p_len)
						&& (filename[p_len] == '/' || !filename[p_len])) {
					ringbuff_counter = (ringbuff_counter + 1) % RINGBUFF_LEN;
					if (ringbuff[ringbuff_counter])
						free(ringbuff[ringbuff_counter]);
					ASPRINTF(&ringbuff[ringbuff_counter], "%%%s%%%s", p->name, filename + p_len);
					return ringbuff[ringbuff_counter];
				}
			}
			p = p->next;
		}
	return filename;
}

const char* prefixencode(filename_p filename) {
	return prefixencode(filename.c_str());
}

operation_t csync_operation(const char *operation) {
	if (!operation) {
		csync_warn(0, "Called with null operation");
		return OP_UNDEF;
	}
	if (!strcmp(operation, "NEW"))
		return OP_NEW;
	if (!strcmp(operation, "MKDIR"))
		return OP_MKDIR;
	if (!strcmp(operation, "MKINFO"))
		return OP_NEW;
	if (!strcmp(operation, "MKCHR"))
		return OP_NEW;
	if (!strcmp(operation, "MOVE"))
		return OP_MOVE;
	if (!strcmp(operation, "MV"))
		return OP_MOVE;
	if (!strcmp(operation, "HARDLINK"))
		return OP_HARDLINK;
	if (!strcmp(operation, "RM"))
		return OP_RM;
	if (!strncmp(operation, "MOD", 3))
		return OP_MOD;
	if (!strncmp(operation, "MARK", 4))
		return OP_MARK;
	csync_warn(0, "Called with unknown operation: %s", operation);
	return OP_UNDEF;
}

const char* csync_operation_str(operation_t op) {
	switch (op & OP_FILTER) {
	case OP_NEW:
		return "NEW";
	case OP_MKDIR:
		return "MKDIR";
	case OP_MOD:
		return "MOD";
	case OP_RM:
		return "RM";
	case OP_HARDLINK:
		return "HARDLINK";
	case OP_MARK:
		return "MARK";
	case OP_MOVE:
		return "MV";
	}
	csync_error(1, "No mapping for operation: %u %u\n", op, OP_FILTER);
	return "?";
}

extern int csync_zero_mtime_debug;

char* filter_mtime_copy(const char *buffer) {
	char *copy = strdup(buffer);
	return filter_mtime(copy);
}

char* filter_mtime(char *buffer) {
	char *str = buffer;
	if (csync_zero_mtime_debug) {
		char *pos = strstr(str, "mtime=");
		if (pos != NULL) {
			pos += 6;
			while (*pos != '\0' && *pos != '%' && *pos != ':') {
				*pos = 'x';
				pos++;
			}
		}
		// remove mtime at end of end of line
		int len = strlen(str);
		if (len > 0) {
			if (!strncmp(str, "PATCH", 5) || !strncmp(str, "SET", 3) || !strncmp(str, "MKDIR", 5)
					|| !strncmp(str, "SIG", 3) || !strncmp(str, "MOD", 3)|| !strncmp(str, "CREATE", 6)) {
				char *ptr = str + strlen(str) - 1;
				// csync_debug(0, "Remove time: {}\n", str);
				while (*ptr >= '0' && *ptr <= '9' && ptr >= str) { //  || (*ptr >= '0' && *ptr <= '9')) {
					*ptr = 'x';
					--ptr;
				}
				// csync_debug(0, "Removed time: {}\n", str);
			}
		}
	}
	return str;
}

int get_file_type(int st_mode) {

	if (S_ISREG(st_mode))
		return REG_TYPE;
	if (S_ISDIR(st_mode))
		return DIR_TYPE;
	if (S_ISCHR(st_mode))
		return CHR_TYPE;
	if (S_ISBLK(st_mode))
		return BLK_TYPE;
	if (S_ISFIFO(st_mode))
		return FIFO_TYPE;
	if (S_ISLNK(st_mode))
		return LINK_TYPE;
	if (S_ISSOCK(st_mode))
		return SOCK_TYPE;
	return -1;
}

int match_peer(const std::set<std::string> &active_peers, const char *peer)
{
	if (active_peers.empty())
	{
		return 1; // If no peers specified, match all
	}

	for (const auto &active_peer : active_peers)
	{
		if (active_peer == peer)
		{
			return 1;
		}
	}
	return 0;
}
extern int g_db_version;
extern
int csync_get_checktxt_version(const char *value)
{
	if (value && strlen(value) > 2)
	{
		if (value[1] == '1')
			return 1;
		if (value[1] == '2')
			return 2;
	}
	// Weird
	return g_db_version;
}

int compare_files(filename_p str_filename, filename_p str_pattern, int recursive) {
	const char *filename = str_filename.c_str();
	const char *pattern = str_pattern.c_str();

	int i;
	const char *slash = "/";
	if (!strcmp(pattern, slash))
		return 1;
	for (i = 0; filename[i] && pattern[i]; i++)
		if (filename[i] != pattern[i])
			return 0;
	if (filename[i] == '/' && !pattern[i] && recursive)
		return 1;
	if (!filename[i] && !pattern[i])
		return 1;
	return 0;
}
