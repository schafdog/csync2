/* -*- c-file-style: "k&r"; c-basic-offset: 4; tab-width: 4; indent-tabs-mode: t -*-
 *
 */

#include "csync2.h"

int csync_error_count = 0;
int csync_level_debug = 0;
FILE *csync_out_debug = 0;
int csync_syslog = 0;
int csync_facility = LOG_LOCAL5;

int csync_server_child_pid = 0;
int csync_timestamps = 0;
int csync_new_force = 0;
int csync_quiet = 0;

int csync_dump_dir_fd = -1;
char *csync_confdir = NULL;

char *csync_port = "30865";
char myhostname[256] = "";
