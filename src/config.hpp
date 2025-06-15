/*  -*- c++-file-style: "k&r"; c-basic-offset: 4; tab-width: 4; indent-tabs-mode: t -*-
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

#ifndef CSYNC2_CONFIG_HPP
#define CSYNC2_CONFIG_HPP 1

#include <string>
#include <vector>
#include <memory>

namespace csync2 {

// Forward declarations
class Group;
class HostInfo;
class Prefix;
class NoSSL;

// Configuration structures converted to C++ classes
class HostInfo {
public:
    std::string name;  // Alias
    std::string host; 
    std::string port;  // service or port number
    std::shared_ptr<HostInfo> next;
    
    HostInfo(const std::string& name, const std::string& host, const std::string& port)
        : name(name), host(host), port(port), next(nullptr) {}
};

class GroupHost {
public:
    std::shared_ptr<GroupHost> next;
    std::string hostname;
    std::string port;  // service or port number
    int on_left_side;
    int slave;
    
    GroupHost(const std::string& hostname, const std::string& port = "")
        : next(nullptr), hostname(hostname), port(port), on_left_side(0), slave(0) {}
};

class GroupPattern {
public:
    std::shared_ptr<GroupPattern> next;
    int isinclude, iscompare, star_matches_slashes;
    std::string pattern;
    
    GroupPattern(const std::string& pattern, int isinclude = 1)
        : next(nullptr), isinclude(isinclude), iscompare(0), 
          star_matches_slashes(0), pattern(pattern) {}
};

class GroupActionPattern {
public:
    std::shared_ptr<GroupActionPattern> next;
    int star_matches_slashes;
    std::string pattern;
    
    GroupActionPattern(const std::string& pattern)
        : next(nullptr), star_matches_slashes(0), pattern(pattern) {}
};

class GroupActionCommand {
public:
    std::shared_ptr<GroupActionCommand> next;
    std::string command;
    
    GroupActionCommand(const std::string& command)
        : next(nullptr), command(command) {}
};

class GroupAction {
public:
    std::shared_ptr<GroupAction> next;
    std::shared_ptr<GroupActionPattern> pattern;
    std::shared_ptr<GroupActionCommand> command;
    std::string logfile;
    int do_local;
    int do_local_only;
    
    GroupAction() : next(nullptr), pattern(nullptr), command(nullptr),
                   do_local(0), do_local_only(0) {}
};

class Group {
public:
    std::shared_ptr<Group> next;
    std::shared_ptr<GroupHost> host;
    std::shared_ptr<GroupPattern> pattern;
    std::shared_ptr<GroupAction> action;
    std::string key, myname, gname;
    int auto_method, local_slave;
    std::string backup_directory;
    int backup_generations;
    int hasactivepeers;
    int flags;
    
    Group(const std::string& gname) : next(nullptr), host(nullptr), pattern(nullptr),
                                     action(nullptr), gname(gname), auto_method(0),
                                     local_slave(0), backup_generations(0),
                                     hasactivepeers(0), flags(0) {}
};

class Prefix {
public:
    std::string name, path;
    std::shared_ptr<Prefix> next;
    
    Prefix(const std::string& name, const std::string& path)
        : name(name), path(path), next(nullptr) {}
};

class NoSSL {
public:
    std::shared_ptr<NoSSL> next;
    std::string pattern_from;
    std::string pattern_to;
    
    NoSSL(const std::string& from, const std::string& to)
        : next(nullptr), pattern_from(from), pattern_to(to) {}
};

enum class AutoMethod {
    NONE,
    FIRST,
    YOUNGER,
    OLDER,
    BIGGER,
    SMALLER,
    LEFT,
    RIGHT,
    LEFT_RIGHT_LOST
};

} // namespace csync2

// Legacy C structures for compatibility during transition
struct csync_nossl;
struct csync_group;
struct csync_group_host;
struct csync_group_pattern;
struct csync_hostinfo; 

struct csync_hostinfo {
    char *name; // Alias
    char *host; 
    char *port; // service or port number
    struct csync_hostinfo *next;
};

struct csync_group_host {
	struct csync_group_host *next;
        char *hostname;
        char *port; // service or port number
	int on_left_side;
	int slave;
};

struct csync_group_pattern {
	struct csync_group_pattern *next;
	int isinclude, iscompare, star_matches_slashes;
	char *pattern;
};

struct csync_group_action_pattern {
	struct csync_group_action_pattern *next;
	int star_matches_slashes;
	char *pattern;
};

struct csync_group_action_command {
	struct csync_group_action_command *next;
	char *command;
};

struct csync_group_action {
	struct csync_group_action *next;
	struct csync_group_action_pattern *pattern;
	struct csync_group_action_command *command;
	char *logfile;
	int do_local;
	int do_local_only;
};

struct csync_group {
    struct csync_group *next;
    struct csync_group_host *host;
    struct csync_group_pattern *pattern;
    struct csync_group_action *action;
    char *key, *myname, *gname;
    int auto_method, local_slave;
    char *backup_directory;
    int backup_generations;
    int hasactivepeers;
    int flags;
};

struct csync_prefix {
	char *name, *path;
	struct csync_prefix *next;
};

struct csync_nossl {
	struct csync_nossl *next;
	char *pattern_from;
	char *pattern_to;
};

enum CSYNC_AUTO_METHOD {
	CSYNC_AUTO_METHOD_NONE,
	CSYNC_AUTO_METHOD_FIRST,

	CSYNC_AUTO_METHOD_YOUNGER,
	CSYNC_AUTO_METHOD_OLDER,

	CSYNC_AUTO_METHOD_BIGGER,
	CSYNC_AUTO_METHOD_SMALLER,

	CSYNC_AUTO_METHOD_LEFT,
	CSYNC_AUTO_METHOD_RIGHT,

	CSYNC_AUTO_METHOD_LEFT_RIGHT_LOST
};

// Global variables (to be encapsulated later)
extern struct csync_group  *csync_group;
extern struct csync_prefix *csync_prefix;
extern struct csync_nossl  *csync_nossl;
extern struct csync_hostinfo  *csync_hostinfo;

extern unsigned csync_lock_timeout;
extern unsigned csync_lock_time;
extern char *csync_tempdir;

extern char *csync_database;
extern char *csync_redis;

extern int csync_error_count;
extern int csync_level_debug;
extern int csync_syslog;
extern int csync_facility;
extern FILE *csync_out_debug;

extern long csync_last_printtime;
extern FILE *csync_timestamp_out;

extern int csync_quiet;
extern int csync_messages_printed;
extern int csync_server_child_pid;
extern int csync_timestamps;
extern int csync_new_force;

//extern char g_myhostname[];
extern const char *csync_port;
extern const char *csync_confdir;
extern char *g_active_grouplist;
extern char *g_active_peerlist;
    
extern const char *g_cfgname;

extern int csync_ignore_uid;
extern int csync_ignore_gid;
extern int csync_ignore_mod;
extern int csync_dump_dir_fd;

extern char *csync_use_ip;
extern int csync_compare_mode;
extern char **g_active_peers;

#ifdef HAVE_LIBGNUTLS
extern int csync_conn_usessl;
#endif

#ifdef __CYGWIN__
extern int csync_lowercyg_disable;
extern int csync_lowercyg_used;
extern int csync_cygwin_case_check(const char *filename);
#endif

#endif /* CSYNC2_CONFIG_HPP */
