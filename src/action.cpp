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

using namespace csync2;
using namespace std;

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

/**
   Run a command and log to logfile. Replace %% with filenames that has this combination
 **/
static void csync_run_single_command(db_conn_p db,  const std::string& command, const std::string& logfile) {
	std::string real_command;
	pid_t pid;

	std::vector<Command> result = db->get_command_filename(command, logfile);
	if (!strstr(command.c_str(), "%%")) {
		real_command = command;
	} else {
		std::string files = "";
		for (csync2::Command file : result) {
			files += ' ' + file.command;
		}
		//real_command.replace(std::string("%%"), files);
	}

	csync_info(1, "Running '{}' ...", real_command);

	pid = fork();
	if (!pid) {
		close(0);
		close(1);
		close(2);
		/* 0 */open("/dev/null", O_RDONLY);
		/* 1 */open(logfile.c_str(), O_WRONLY | O_CREAT | O_APPEND, 0666);
		/* 2 */open(logfile.c_str(), O_WRONLY | O_CREAT | O_APPEND, 0666);

		execl("/bin/sh", "sh", "-c", real_command.c_str(), NULL);
		_exit(127);
	}
	if (waitpid(pid, 0, 0) < 0)
		csync_fatal("ERROR: Waitpid returned error {}.", strerror(errno));

	for (csync2::Command cmd : result)
		db->remove_action_entry(cmd.command, command, logfile);
}

void csync_run_commands(db_conn_p db) {
	std::vector<csync2::Command> result = db->get_commands();
	for (csync2::Command cmd: result) {
		csync_run_single_command(db, cmd.command, cmd.logfile);
	}
}
