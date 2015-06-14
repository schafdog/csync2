
#include "csync2.h"

int csync_error_count = 0;
int csync_debug_level = 0;
FILE *csync_debug_out = 0;
int csync_syslog = 0;

int csync_server_child_pid = 0;
int csync_timestamps = 0;
int csync_new_force = 0;
int csync_quiet = 0;

int csync_dump_dir_fd = -1;

char *csync_port = "30865";
char myhostname[256] = "";
