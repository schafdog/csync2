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

#include "csync2.hpp"
#include <fnmatch.h>

int csync_compare_mode = 0;
struct csync_group *csync_group = 0;

static int match_pattern_list(filename_p filename, const char *basename, const struct csync_group_pattern *p, int compare_mode) {
	// unused
	(void) compare_mode;

	int match_path = 0, match_base = 1;

	while (p) {
		int matched = 0;

		if (p->iscompare && !csync_compare_mode)
			goto next_pattern;

		if (p->pattern[0] != '/' && p->pattern[0] != '%') {
			if (!fnmatch(p->pattern, basename, 0)) {
				match_base = p->isinclude;
				matched = 1;
			}
		} else {
			int fnm_pathname = p->star_matches_slashes ? 0 : FNM_PATHNAME;
			if (!fnmatch(p->pattern, filename.c_str(), FNM_LEADING_DIR | fnm_pathname)) {
				match_path = p->isinclude;
				matched = 1;
			}
		}
		if (matched) {
			csync_debug(3, "Match (%c): %s on %s\n", p->isinclude ? '+' : '-', p->pattern, filename.c_str());
		}
		next_pattern: p = p->next;
	}
	return match_path && match_base;
}

const struct csync_group* csync_find_next(const struct csync_group *g, filename_p filename, int compare_mode) {
	const char *basename = strrchr(filename.c_str(), '/');

	if (basename)
		basename++;
	else
		basename = filename.c_str();

	for (g = g == 0 ? csync_group : g->next; g; g = g->next) {
		if (!g->myname)
			continue;
		if (compare_mode && !g->hasactivepeers)
			continue;
		if (match_pattern_list(filename, basename, g->pattern, compare_mode))
			break;
	}
	return g;
}

static int csync_step_into(filename_p filename, int compare_mode) {
	const struct csync_group_pattern *p;
	const struct csync_group *g;

	if (filename == "/")
		return 1;

	for (g = csync_group; g; g = g->next) {
		if (!g->myname)
			continue;
		if (compare_mode && !g->hasactivepeers)
			continue;
		for (p = g->pattern; p; p = p->next) {
			if (p->iscompare && !compare_mode)
				continue;
			if ((p->pattern[0] == '/' || p->pattern[0] == '%') && p->isinclude) {
				char *t = static_cast<char*>(malloc(strlen(p->pattern) + 1));
				char *l;
				int fnm_pathname = p->star_matches_slashes ? 0 : FNM_PATHNAME;
				strcpy(t, p->pattern);
				while ((l = strrchr(t, '/')) != 0) {
					*l = 0;
					if (!fnmatch(t, filename.c_str(), fnm_pathname)) {
						free(t);
						return 1;
					}
				}
				free(t);
			}
		}
	}
	return 0;
}

int csync_match_file(filename_p filename, int compare_mode, const struct csync_group **g) {
	*g = NULL;
	if ((*g = csync_find_next(0, filename, compare_mode)))
		return MATCH_NEXT;
	if (csync_step_into(filename, compare_mode))
		return MATCH_INTO;
	return 0;
}

int csync_check_usefullness(filename_p filename, int recursive) {
	if (csync_find_next(0, filename, 0))
		return 0; // OK
	if (recursive && csync_step_into(filename, 0))
		return 0; // OK

	// TODO make it optional if we want to log
	csync_warn(2, "groups: %s did not match any configuration.\n", filename.c_str());
	return -1;
}

int csync_match_file_host(filename_p filename, peername_p myname, peername_p peername, const char **keys) {
	const struct csync_group *g = NULL;

	while ((g = csync_find_next(g, filename, 0))) {
		struct csync_group_host *h = g->host;
		if (myname != g->myname)
			continue;
		if (keys) {
			const char **k = keys;
			while (*k && **k)
				if (!strcmp(*(k++), g->key))
					goto found_key;
			continue;
		}
		found_key: while (h) {
			if (peername == h->hostname)
				return 1;
			h = h->next;
		}
	}
	return 0;
}

struct peer* csync_find_peers(peername_p file, peername_p thispeer) {
	const struct csync_group *g = NULL;
	struct peer *plist = 0;
	int pl_size = 0;

	while ((g = csync_find_next(g, file, 0))) {
		struct csync_group_host *h = g->host;

		if (thispeer != "") {
			while (h) {
				if (thispeer == h->hostname)
					break;
				h = h->next;
			}
			if (!h)
				goto next_group;
			h = g->host;
		}

		while (h) {
			int i = 0;
			while (plist && plist[i].peername)
				if (!strcmp(plist[i++].peername, h->hostname))
					goto next_host;
			plist = static_cast<struct peer*>(realloc(plist, sizeof(struct peer) * (++pl_size + 1)));
			plist[pl_size - 1].peername = h->hostname;
			plist[pl_size - 1].myname = g->myname;
			plist[pl_size].peername = 0;
			next_host: h = h->next;
		}
		next_group: ;
	}

	return plist;
}

const char* csync_key(peername_p hostname, filename_p filename) {
	const struct csync_group *g = NULL;
	struct csync_group_host *h;

	while ((g = csync_find_next(g, filename, 0)))
		for (h = g->host; h; h = h->next)
			if (hostname == h->hostname)
				return g->key;

	return 0;
}

int csync_perm(filename_p filename, const char *key, const char *hostname, int compare_mode) {
	const struct csync_group *g = NULL;
	struct csync_group_host *h;
	int false_retcode = 1;

	while ((g = csync_find_next(g, filename, compare_mode))) {
		//  TODO verify
		if (!hostname)
			continue;
		for (h = g->host; h; h = h->next)
			if (!strcmp(h->hostname, hostname) && !strcmp(g->key, key)) {
				if (!h->slave)
					return 0;
				else
					false_retcode = 2;
			}
	}
	return false_retcode;
}
