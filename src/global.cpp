/* -*- c-file-style: "k&r"; c-basic-offset: 4; tab-width: 4; indent-tabs-mode: t -*-
 *
 */

#include "csync2.hpp"
#include <netdb.h>

int csync_zero_mtime_debug = 0;
int csync_error_count = 0;
int csync_level_debug = 0;
//int csync_compare_mode = 0;
FILE *csync_out_debug = 0;
int csync_syslog = 0;
int csync_facility = LOG_LOCAL5;
unsigned csync_lock_timeout = 12;
unsigned csync_lock_time = 60;
//struct csync_group *csync_group;

int csync_server_child_pid = 0;
int csync_timestamps = 0;
int csync_new_force = 0;
int csync_quiet = 0;

int csync_dump_dir_fd = -1;
const char *csync_confdir = NULL;
char *csync_database = 0;
const char *csync_port = "30865";
char g_myhostname[256] = "";

const char *g_cfgname = "";
char *g_active_grouplist = 0;
char *g_active_peerlist = NULL;
std::set<std::string> g_active_peers;

const char *g_update_format = 0;
char *g_allow_peer = 0;
int g_db_version = 1;
int g_ip_version = AF_INET;

struct csync_prefix   *csync_prefix = 0;
struct csync_nossl    *csync_nossl  = 0;
struct csync_hostinfo *csync_hostinfo = 0;

int csync_ignore_uid = 0;
int csync_ignore_gid = 0;
int csync_ignore_mod = 0;
