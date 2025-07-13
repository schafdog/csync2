/*  -*- c-file-style: "k&r"; c-basic-offset: 4; tab-width: 4; indent-tabs-mode: t -*-
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
#include "modern_logging.hpp"
#include <sys/types.h>
#include <sys/wait.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <fnmatch.h>
#include <string.h>
#include <errno.h>
#include <unistd.h>
#include <assert.h>
#include "action.hpp"
#include "groups.hpp"
#include "utils.hpp"

void csync_schedule_commands(db_conn_p db, filename_p filename, int islocal) {
	const struct csync_group *g = NULL;
	const struct csync_group_action *a = NULL;
	const struct csync_group_action_pattern *p = NULL;
	const struct csync_group_action_command *c = NULL;

	while ((g = csync_find_next(g, filename.c_str(), 0))) {
		for (a = g->action; a; a = a->next) {
			if (!islocal && a->do_local_only)
				continue;
			if (islocal && !a->do_local)
				continue;
			if (!a->pattern)
				goto found_matching_pattern;
			for (p = a->pattern; p; p = p->next) {
				const char *prefix = prefixsubst(p->pattern);
				csync_debug(1, "File pattern: {} => {} ", p->pattern,
						prefix);
				int fnm_pathname = p->star_matches_slashes ? 0 : FNM_PATHNAME;
				if (!fnmatch(prefix, filename.c_str(),
				FNM_LEADING_DIR | fnm_pathname))
					goto found_matching_pattern;
			}
			continue;
			found_matching_pattern: for (c = a->command; c; c = c->next) {
				const char *prefix_cmd = prefixsubst(c->command);
				db->del_action(filename, prefix_cmd);
				db->add_action(filename, prefix_cmd, a->logfile);
			}
		}
	}
}

static void csync_run_single_command(db_conn_p db, const char *command,
		const char *logfile) {
	char *command_clr = strdup(command);
	char *logfile_clr = strdup(logfile);
	char *real_command, *mark;
	pid_t pid;

	textlist_p tl = 0, t;
	tl = db->get_command_filename(command, logfile);
	mark = strstr(command_clr, "%%");
	if (!mark) {
		real_command = strdup(command_clr);
	} else {
		size_t len = strlen(command_clr) + 10;
		char *pos;

		for (t = tl; t != 0; t = t->next)
			len += strlen(t->value) + 1;

		pos = real_command = static_cast<char*>(malloc(len));
		memcpy(real_command, command_clr, mark - command_clr);
		real_command[mark - command_clr] = 0;

		for (t = tl; t != 0; t = t->next) {
			pos += strlen(pos);
			if (t != tl)
				*(pos++) = ' ';
			strcpy(pos, t->value);
		}

		pos += strlen(pos);
		strcpy(pos, mark + 2);

		assert(strlen(real_command) + 1 < len);
	}

	csync_info(1, "Running '{}' ...", real_command);

	pid = fork();
	if (!pid) {
		close(0);
		close(1);
		close(2);
		/* 0 */open("/dev/null", O_RDONLY);
		/* 1 */open(logfile_clr, O_WRONLY | O_CREAT | O_APPEND, 0666);
		/* 2 */open(logfile_clr, O_WRONLY | O_CREAT | O_APPEND, 0666);

		execl("/bin/sh", "sh", "-c", real_command, NULL);
		_exit(127);
	}

	if (waitpid(pid, 0, 0) < 0)
		csync_fatal("ERROR: Waitpid returned error {}.", strerror(errno));

	for (t = tl; t != 0; t = t->next)
		db->remove_action_entry(t->value, command, logfile);
	textlist_free(tl);
}

void csync_run_commands(db_conn_p db) {
	textlist_p tl = 0, t;

	tl = db->get_commands();
	for (t = tl; t != 0; t = t->next)
		csync_run_single_command(db, t->value, t->value2);
	textlist_free(tl);
}
