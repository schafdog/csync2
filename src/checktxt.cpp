/* -*- c-file-style: "k&r"; c-basic-offset: 4; tab-width: 4; indent-tabs-mode: t -*-
 *  csync2 - cluster synchronization tool, 2nd generation
 *  LINBIT Information Technologies GmbH <http://www.linbit.com>
 *  Copyright (C) 2004, 2005  Clifford Wolf <clifford@clifford.at>
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
#include <string.h>
#include <stdio.h>
#include <unistd.h>
#include <stdarg.h>
#include <assert.h>
#include "checktxt.hpp"
#include "uidgid.hpp"
#include "urlencode.hpp"

/*
 * this csync_genchecktxt() function might not be nice or
 * optimal - but it is hackish and easy to read at the same
 * time....  ;-)
 */

#define xxprintf(...) \
	{ \
	int t = snprintf(NULL, 0, ##__VA_ARGS__);	\
	elements[elidx]=static_cast<char*>(alloca(t+1));		\
	snprintf(elements[elidx], t+1, ##__VA_ARGS__);	\
	len+=t; elidx++; }

const char* csync_genchecktxt(const struct stat *st, filename_p filename, int flags) {
	return csync_genchecktxt_version(st, filename, flags, 1);
}

const char* csync_genchecktxt_version(const struct stat *st, filename_p filename, int flags, int version) {
	static char *buffer = 0;
	char *elements[64];
	int elidx = 0, len = 1;
	int i, j, k;

	if (!st)
		return "---";

	xxprintf("v%d", version);

	//	if ( !S_ISLNK(st->st_mode) && !S_ISDIR(st->st_mode))
	xxprintf(":mtime=%llu", flags & IGNORE_MTIME ? static_cast<long long>(0) : static_cast<long long>(st->st_mtime));

	if (!csync_ignore_mod)
		xxprintf(":mode=%d", static_cast<int>(st->st_mode));

	char user[100];
	int rc = uid_to_name(st->st_uid, user, 100, NULL);
	if (!csync_ignore_uid) {
		if (!rc && (flags & SET_USER)) {
			xxprintf(":user=%s", user);
		} else {
			xxprintf(":uid=%d", static_cast<int>(st->st_uid));
		}
	}

	char *group = user;
	rc = gid_to_name(st->st_gid, group, 100, NULL);
	if (!csync_ignore_gid) {
		if (!rc && (flags & SET_GROUP)) {
			xxprintf(":group=%s", group);
		} else {
			xxprintf(":gid=%d", static_cast<int>(st->st_gid));
		}
	}

	if (S_ISREG(st->st_mode)) {
		xxprintf(":type=reg:size=%llu", static_cast<long long>(st->st_size));
		// TODO would be nice with the real count,
		// but for now just an indicator for hard links

		//if (st->st_nlink > 1)
		//  xxprintf(":link=H");
	}
	if (S_ISDIR(st->st_mode))
		xxprintf(":type=dir");

	if (S_ISCHR(st->st_mode))
		xxprintf(":type=chr:dev=%d", static_cast<int>(st->st_rdev));

	if (S_ISBLK(st->st_mode))
		xxprintf(":type=blk:dev=%d", static_cast<int>(st->st_rdev));

	if (S_ISFIFO(st->st_mode))
		xxprintf(":type=fifo");

	if (S_ISLNK(st->st_mode)) {
		char tmp[4096];
		int r = readlink(filename, tmp, 4095);
		tmp[r >= 0 ? r : 0] = 0;
		xxprintf(":type=lnk:target=%s", (version == 1 ? url_encode(tmp) : tmp));
	}

	if (S_ISSOCK(st->st_mode))
		xxprintf(":type=sock");

	/*	if ( st->st_nlink > 1 && !S_ISDIR(st->st_mode)) {
	 xxprintf(":nlink=%lu", st->st_nlink);
	 }
	 */
	/*
	 if (version > 1) {
	 xxprintf(":inode=%lu",st->st_ino);
	 }
	 */

	if (buffer)
		free(buffer);
	buffer = static_cast<char*>(malloc(len));

	for (i = j = 0; j < elidx; j++)
		for (k = 0; elements[j][k]; k++)
			buffer[i++] = elements[j][k];
	assert(i == len - 1);
	buffer[i] = 0;

	return buffer;
}

/* In future version of csync this might also convert
 * older checktxt strings to the new format.
 * WARNING: Inverted to return the n'th character.
 */
int csync_cmpchecktxt(const char *a, const char *b) {
	int rc = strcmp(a, b);
	if (rc != 0) {
		csync_debug(3, "csync_cmpchecktxt A: %s \n", a);
		csync_debug(3, "csync_cmpchecktxt B: %s \n", b);
	}
	if (rc < 0) {
		return -1;
	} else if (rc > 0) {
		return 1;
	}
	return rc;

	int i;
	for (i = 0; a[i] && a[i] != '\n' && b[i] && b[i] != '\n'; i++) {
		if (a[i] != b[i]) {
			csync_debug(2, "csync_cmpchecktxt differ at %d: \n\t%s \n\t%s \n", i, a, b);
			return i;
		}
	}
	return 0;
}

int csync_cmpchecktxt_component(const char *a, const char *b, int flags) {
	char *a_new = strdup(a);
	char *b_new = strdup(b);
	csync_debug(2, "csync_cmpchecktxt (components) A: %s \n", a);
	csync_debug(2, "csync_cmpchecktxt (components) B: %s \n", b);
	int differs = 0;
	char *a_save = NULL;
	char *b_save = NULL;
	char *a_ptr = strtok_r(a_new, ":", &a_save);
	char *b_ptr = strtok_r(b_new, ":", &b_save);
	//  printf("components: %s %s", a_ptr, b_ptr);

	while (a_ptr && b_ptr && !differs) {
		// Not ignore mtime or not mtime
		if (!(flags & FLAG_IGN_MTIME) || strncmp("mtime=", a_ptr, 6)) {
			if (strcmp(a_ptr, b_ptr)) {
				csync_debug(3, "%s!=%s:", a_ptr, b_ptr);
				differs = 1;
			}
		}
		csync_debug(1, "components: %s %s", a_ptr, b_ptr);
		a_ptr = strtok_r(NULL, ":", &a_save);
		b_ptr = strtok_r(NULL, ":", &b_save);
	}
	// TODO should write rest of both a and b out, but assuming same number of tokens
	free(a_new);
	free(b_new);
	return differs;
}

time_t csync_checktxt_get_time(const char *checktxt) {
	return static_cast<time_t>(csync_checktxt_get_long_long(checktxt, ":mtime="));
}

long long csync_checktxt_get_size(const char *checktxt) {
	return csync_checktxt_get_long_long(checktxt, ":size=");
}

long long csync_checktxt_get_long_long(const char *checktxt, const char *token) {
	long long number = -1;
	const char *pos = strstr(checktxt, token);
	if (pos != NULL) {
		number = atoll(pos + strlen(token) + 1);
	}
	return number;
}
