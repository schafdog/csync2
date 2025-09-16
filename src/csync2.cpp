/* -*- c-file-style: "k&r"; c-basic-offset: 4; tab-width: 4; indent-tabs-mode: t -*-
 *
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
#include "modern_logging.hpp"
#include <algorithm>
#include <arpa/inet.h>
#include <netinet/in.h>
#include <netinet/tcp.h>
#include <sys/socket.h>

#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <unistd.h>
#include <cassert>
#include <cerrno>
#include <signal.h>
#include <cctype>
#include <syslog.h>
#include <netdb.h>
#include <ctime>
#ifdef HAVE_LIBSYSTEMD
#include <systemd/sd-daemon.h>
#endif
#include "redis.hpp"
#include <memory>
#include <string>
#include <algorithm>
#include "db_api.hpp"
#include "db.hpp"
#include "conn.hpp"
#include "check.hpp"
#include "update.hpp"
#include "utils.hpp"
#include "urlencode.hpp"
#include "daemon.hpp"
#include "action.hpp"
#include "checktxt.hpp"
#include "main.h"

#ifdef REAL_DBDIR
#undef DBDIR
#define DBDIR REAL_DBDIR
#endif

extern char *csync_database;

extern int db_type;

static char *file_config = 0;
static char *cfgfile = 0;
static const char *dbdir = DBDIR;
extern const char *g_cfgname;
extern char *g_active_grouplist;
extern char *g_active_peerlist;
extern std::set<std::string> g_active_peers;
extern char *g_allow_peer;
extern int g_db_version;
extern int g_ip_version;
extern int cfg_db_version;
extern int cfg_protocol_version;
extern FILE *yyin;
extern int cfg_ip_version;
extern int csync_zero_mtime_debug;
int protocol_version;



char *log_file = 0;


static void help(const char *cmd)
{
	csync2_version();
	printf("\n"
		   "This program is free software under the terms of the GNU GPL.\n"
		   "\n"
		   "Usage: %s [-v..] [-C config-name|-K config-file] \\\n"
		   "		[-D database-dir] [-N hostname] [-p port] ..\n"
		   "\n"
		   "With file parameters:\n"
		   "	-h [-r] file..		Add (recursive) hints for check to db\n"
		   "	-c [-r] file..		Check files and maybe add to dirty db\n"
		   "	-u [-d] [-r] file..	Updates files if listed in dirty db\n"
		   "	-o [-r] file..		Create list of files in compare-mode\n"
		   "	-f [-r] file..		Force files to win next conflict resolution\n"
		   "	-m file..		Mark files in database as dirty\n"
		   "\n"
		   "Simple mode:\n"
		   "	-x [-d] [[-r] file..]	Run checks for all given files and update\n"
		   "				remote hosts.\n"
		   "\n"
		   "Without file parameters:\n"
		   "	-c	Check all hints in db and eventually mark files as dirty\n"
		   "	-u [-d]	Update (transfer dirty files to peers and mark as clear)\n"
		   "\n"
		   "	-H	List all pending hints from status db\n"
		   "	-L	List all file-entries from status db\n"
		   "	-M	List all dirty files from status db\n"
		   "\n"
		   "	-S myname peername	List file-entries from status db for this\n"
		   "				synchronization pair.\n"
		   "\n"
		   "	-T  			Test if everything is in sync with all peers.\n"
		   "\n"
		   "	-T filename 		Test if this file is in sync with all peers.\n"
		   "\n"
		   "	-T myname peername	Test if this synchronization pair is in sync.\n"
		   "\n"
		   "	-T myname peer file	Test only this file in this sync pair.\n"
		   "\n"
		   "	-TT	As -T, but print the unified diffs.\n"
		   "\n"
		   "	The modes -H, -L, -M and -S return 2 if the requested db is empty.\n"
		   "	The mode -T returns 2 if both hosts are in sync.\n"
		   "\n"
		   "	-i	Run in inetd server mode.\n"
		   "	-ii	Run in stand-alone server mode.\n"
		   "	-iii	Run in stand-alone server mode (one connect only, no forking).\n"
		   "	-iiii	Run in stand-alone server mode (multi connects, no forking).\n"
		   "\n"
		   "	-R	Remove files from database which do not match config entries.\n"
		   "\n"
		   "Modifiers:\n"
		   "	-r	Recursive operation over subdirectories\n"
		   "	-d	Dry-run on all remote update operations\n"
		   "\n"
		   "	-B	Do not block everything into big SQL transactions. This\n"
		   "		slows down csync2 but allows multiple csync2 processes to\n"
		   "		access the database at the same time. Use e.g. when slow\n"
		   "		lines are used or huge files are transferred.\n"
		   "\n"
		   "	-A	Open database in asynchronous mode. This will cause data\n"
		   "		corruption if the operating system crashes or the computer\n"
		   "		loses power.\n"
		   "\n"
		   "	-I	Init-run. Use with care and read the documentation first!\n"
		   "		You usually do not need this option unless you are\n"
		   "		initializing groups with really large file lists.\n"
		   "\n"
		   "	-X	Also add removals to dirty db when doing a -TI run.\n"
		   "	-U	Don't mark all other peers as dirty when doing a -TI run.\n"
		   "\n"
		   "	-G Group1,Group2,Group3,...\n"
		   "		Only use these groups from config-file.\n"
		   "\n"
		   "	-P peer1,peer1,...\n"
		   "		Only update these peers (still mark all as dirty).\n"
		   "		Only show files for these peers in -o (compare) mode.\n"
		   "\n"
		   "	-F	Add new entries to dirty database with force flag set.\n"
		   "\n"
		   "	-t	Print timestamps to debug output (e.g. for profiling).\n"
		   "\n"
		   "	-s filename\n"
		   "		Print timestamps also to this file.\n"
		   "\n"
		   "	-W fd	Write a list of directories in which relevant files can be\n"
		   "		found to the specified file descriptor (when doing a -c run).\n"
		   "		The directory names in this output are zero-terminated.\n"
		   "\n"
		   "       -z peer Force the daemon to accept this peer without verifying.\n"
		   "\n"
		   "Database switches:\n"
		   "\n"
		   "	-D database-dir\n"
		   "		Use sqlite database in database dir (default: /var/lib/csync2)\n"
		   "\n"
		   "	-a mysql-url\n"
		   "		Use mysql database in URL:\n"
		   "		mysql://[<user>:<password>@]<hostname>/<database>\n"
		   "\n"
		   "Options:"
		   "       -l \n"
		   "              Use syslog local5 facility. -9 for other facility\n"
		   "       -O logfile\n"
		   "              Use logfile for logging\n"
		   "       -K configfile\n"
		   "              Use this config file\n"
		   "\n"
		   "Test Options: NEVER use in production \n"
		   "       -N myname \n"
		   "              Override hostname \n"
		   "       -z peername\n"
		   "              Allow connections from peername without checking \n"

		   "\n"
		   "Creating key file:\n"
		   "	%s -k filename\n"
		   "\n"
		   "Csync2 will refuse to do anything when a " ETCDIR "/csync2.lock file is found.\n"
		   "\n",
		   cmd, cmd);
	exit(1);
}

static int create_keyfile(filename_p filename)
{
	int fd = open(filename.c_str(), O_WRONLY | O_CREAT | O_EXCL, 0600);
	int rand = open("/dev/urandom", O_RDONLY);
	char matrix[] = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789._";
	unsigned char n;
	int i;
	assert(sizeof(matrix) == 65);
	if (fd == -1)
	{
		fprintf(stderr, "Can't create key file: %s\n", strerror(errno));
		return 1;
	}
	if (rand == -1)
	{
		fprintf(stderr, "Can't open /dev/urandom: %s\n", strerror(errno));
		return 1;
	}
	for (i = 0; i < 64; i++)
	{
		read(rand, &n, 1);
		write(fd, matrix + (n & 63), 1);
	}
	write(fd, "\n", 1);
	close(rand);
	close(fd);
	return 0;
}

#define ERROR -1

static int csync_scan(char *buffer)
{
	int i = 0;
	while (buffer[i] != '\n' && buffer[i] != 0 && buffer[i] != ' ')
	{
		i++;
	}
	return i;
}

static int csync_read_buffer(char *buffer, char *value)
{

	int match = csync_scan(buffer);
	if (match > 0)
	{
		strncpy(value, buffer, match);
		value[match] = 0;
		if (buffer[match] == 0)
		{
			csync_error(0, "Line too short {}", buffer);
			return ERROR;
		}
	}
	return match;
}

// Monitor file system: Using inotifywait by tailing a file of events
// TODO: implement inotify natively. Rename to monitor
static int csync_tail(db_conn_p db, int fileno, int flags)
{
	char readbuffer[1000];
	char time_str[100];
	char operation[100];
	char file[500];
	char *oldbuffer = NULL;
	int duplicated = 0;
	time_t last_sql = time(NULL);
	while (1)
	{
		char *buffer = readbuffer;
		// Rewrite to use some non-blocking
		int rc = gets_newline(fileno, buffer, 1000, 1);
		if (rc == 0)
		{
			sleep(1);
			// if count of updates
			time_t now = time(NULL);
			if (now - last_sql > 300)
			{
				db->conn_->execute_update("ping_db_server",
					"UPDATE dirty set myname = NULL where myname IS NULL and peername is NULL;");
				last_sql = now;
				csync_debug(2, "monitor: Pinged DB sever");
			}
			continue;
		}
		if (rc < 0)
		{
			csync_error(0, "Got error from read %d\n", rc);
			return ERROR;
		}
		if (oldbuffer && strcmp(readbuffer, oldbuffer) == 0)
		{
			duplicated++;
			continue;
		}
		if (duplicated)
		{
			csync_debug(1, "monitor: Last operation was repeated {} times", duplicated);
			duplicated = 0;
		}
		int match = csync_read_buffer(buffer, time_str);
		if (match < 0)
			return ERROR;
		struct tm tm;
		time_t log_time = -1;
		const char *rest = strptime(time_str, "%F_%T", &tm);
		if (rest)
		{
			log_time = timelocal(&tm);
			csync_debug(2, "monitor: Parsed {} to {}. {}", time_str, log_time, rest);
		}
		else
		{
			csync_debug(0, "monitor: Failed to parse {} as %F_%T", time_str);
		}
		buffer += match + 1;
		match = csync_read_buffer(buffer, operation);
		if (match <= 0)
			return ERROR;
		buffer += match + 1;
		int len = strlen(buffer);
		if (buffer[len] == '\n')
			buffer[len] = 0;
		strcpy(file, buffer);
		if (csync_check_usefullness(file, flags))
		{
			csync_debug(1, "monitor: Skip {} not matched at {}", file, log_time);
			continue;
		}
		// Check if file is "just" made by daemon
		time_t lock_time = csync_redis_get_custom(file, operation);
		if (lock_time != -1)
		{
			csync_redis_del_custom(file, operation);
			csync_info(1, "monitor: remove daemon lock {}:{} at {} {} {}",
					   operation, file, lock_time, log_time, log_time - lock_time);
		}

		if (lock_time != -1)
		{ //  && log_time <= lock_time) Perhaps made sense if lock_time = time when locked + expire
			// Now if the monitor is behind it will make more files unmatched
			csync_debug(1, "monitor: Skip daemon {} {} at {} {}", operation, file, lock_time, log_time);
		}
		else
		{
			struct stat st;
			std::string checktxt = "";
			int is_delete = strcmp(operation, "DELETE") == 0;
			if (lstat_strict(file, &st) == 0)
			{
				checktxt = csync_genchecktxt_version( &st, file, SET_USER | SET_GROUP, db->version);
			}
			else if (!is_delete)
			{
				csync_error(1, "monitor: failed stat '{}' '{}' at '{}'. Skipping.\n", operation, file, time_str);
				continue;
			}
			csync_info(1, "monitor: unmatched '{}' '{}' {} at '{}'", operation, file, checktxt, time_str);
			if (!is_delete && faccessat(0, file, R_OK,AT_SYMLINK_NOFOLLOW) != 0) {
				csync_error(0, "monitor: ERROR: Cant read {} {}.\n", file, checktxt != "" ? checktxt : "<No checktxt>");
				continue;
			}
			if (strcmp(operation, "CREATE") == 0)
			{
				if (st.st_nlink > 1 && S_ISREG(st.st_mode))
				{
					csync_info(2, "monitor: hardlink '{}' '{}' at '{}'", operation, file, time_str);
					const struct csync_group *g = NULL;
					int count_dirty;
					csync_check_mod(db, file, flags, &count_dirty, &g);
				}
				else
				{
					csync_info(2, "monitor: skipping '{}' '{}' at '{}'", operation, file, time_str);
				}
			}
			else if (strcmp(operation, "DELETE") == 0)
			{
				csync_check_del(db, file, flags);
			}
			else if (strstr(operation, "CLOSE_WRITE") != NULL)
			{
				const struct csync_group *g = NULL;
				int count_dirty;
				csync_check_mod(db, file, flags, &count_dirty, &g);
			}
			else
			{
				csync_check(db, file, flags);
			}
			std::set<std::string> patlist = {file};
			csync_update(db, g_myhostname, g_active_peers, patlist, g_ip_version, csync_update_host, flags);
			last_sql = time(NULL);
		}
		if (oldbuffer)
			free(oldbuffer);
		oldbuffer = strdup(readbuffer);
	}
}

static int csync_bind(const char *service_port, int ip_version)
{
	struct linger sl = {1, 5};
	struct addrinfo hints;
	struct addrinfo *result, *rp;
	int save_errno;
	int sfd, s, on = 1;
	memset(&hints, 0, sizeof(struct addrinfo));
	hints.ai_family = ip_version; /* Allow IPv4 or IPv6 */
	hints.ai_socktype = SOCK_STREAM;
	hints.ai_flags = AI_PASSIVE;

	s = getaddrinfo(NULL, service_port, &hints, &result);
	if (s != 0)
	{
		csync_error(0, "Cannot prepare local socket, getaddrinfo: {}\n", gai_strerror(s));
		return ERROR;
	}

	/* getaddrinfo() returns a list of address structures.
	 Try each address until we successfully bind(2).
	 If socket(2) (or bind(2)) fails, we (close the socket
	 and) try the next address. */

	for (rp = result; rp != NULL; rp = rp->ai_next)
	{
		sfd = socket(rp->ai_family, rp->ai_socktype, rp->ai_protocol);
		if (sfd == -1)
			continue;

		if (setsockopt(sfd, SOL_SOCKET, SO_REUSEADDR, &on, static_cast<socklen_t>(sizeof(on))) < 0)
			goto error;
		if (setsockopt(sfd, SOL_SOCKET, SO_LINGER, &sl, static_cast<socklen_t>(sizeof(sl))) < 0)
			goto error;
		if (setsockopt(sfd, IPPROTO_TCP, TCP_NODELAY, &on, static_cast<socklen_t>(sizeof(on))) < 0)
			goto error;

		if (bind(sfd, rp->ai_addr, rp->ai_addrlen) == 0)
			break; /* Success */

		close(sfd);
	}

	freeaddrinfo(result); /* No longer needed */

	if (rp == NULL) /* No address succeeded */
		return -1;

	return sfd;

error:
	save_errno = errno;
	close(sfd);
	errno = save_errno;
	return ERROR;
}

static char program_pid[256];

static void csync_openlog(int facility)
{
	sprintf(program_pid, "csync2(%d)", getpid());
	openlog(program_pid, LOG_ODELAY, facility);
}

static int csync_server_bind(const char *service_port, int ip_version)
{
	csync_debug(2, "Binding to {} IPv{}", service_port, ip_version);
	int listenfd = csync_bind(service_port, ip_version);
	if (listenfd >= 0) {
		if (listen(listenfd, 5) >= 0) {
		    /* we want to "cleanly" shutdown if the connection is lost unexpectedly */
			signal(SIGPIPE, SIG_IGN);
			/* server is not interested in its childs, prevent zombies */
			signal(SIGCHLD, SIG_IGN);
			return listenfd;
		}
	}
	fprintf(stderr, "Server error: %s\n", strerror(errno));
	csync_fatal("Server error: %s", strerror(errno));
	return -1;
}
/* On fork the child process will return but the parent will continue
 accepting. On non-forking, the loop has to be done outside.
 */
static int csync_server_accept_loop(int nonfork, int listenfd, int *conn)
{
	union
	{
		struct sockaddr sa;
		struct sockaddr_in sa_in;
		struct sockaddr_in6 sa_in6;
		struct sockaddr_storage ss;
	} addr;
	printf("Csync2 daemon running. Waiting for connections.\n");
	csync2::g_logger.configure(csync2::LogLevel::Debug, csync_level_debug, csync2::Logger::Output::Console);
	csync2::g_logger.set_timestamps(false);
	while (1)
	{
		unsigned addrlen = sizeof(addr);
		*conn = accept(listenfd, &addr.sa, &addrlen);
		if (*conn > 0)
		{
			struct timeval tv;

			tv.tv_sec = 60;
			tv.tv_usec = 0;
			/* Not working for inet, but conn now uses select to detect data */
			if (setsockopt(*conn, SOL_SOCKET, SO_RCVTIMEO, reinterpret_cast<char *>(&tv), sizeof tv))
				csync_error(0, "Failed to set socket rcv timeout");

			fflush(stdout);
			fflush(stderr);

			if (nonfork || !fork())
			{
				char hbuf[NI_MAXHOST], sbuf[NI_MAXSERV];
				/* need to restore default SIGCHLD handler in the session,
				 * as we may need to wait on them in action.c */
				signal(SIGCHLD, SIG_DFL);
				csync_server_child_pid = getpid();
				if (getnameinfo(&addr.sa, addrlen, hbuf, sizeof(hbuf), sbuf, sizeof(sbuf),
							NI_NUMERICHOST | NI_NUMERICSERV) != 0) {
							csync_error(0, "Failed to get name info");
							close(*conn);
							fprintf(stderr, "Server error: %s\n", strerror(errno));
							return 1;
				}
    			if (csync_syslog)
    			{
    				csync2::g_logger.configure(csync2::LogLevel::Debug, csync_level_debug, csync2::Logger::Output::Syslog);
    				csync2::g_logger.set_timestamps(false);
    				csync_openlog(csync_facility);
    				csync_info(1, "New connection from {}:{}.\n", hbuf, sbuf);
    			}
    			else
    			{
    				csync_info(1, "<{}> New connection from {}:{}.\n", csync_server_child_pid, hbuf, sbuf);
    			}
    			// dup2(conn, 0);
    			// dup2(conn, 1);
    			// close(conn);
    			return 0;
    		}
    		close(*conn);
		}
	}
}

static const char *csync_nop(const char *value)
{
	return value;
}

static const char *csync_decode_v2(const char *value)
{
	return value;
}

void parse_peerlist(const char *peerlist)
{
	g_active_peers.clear();

	if (peerlist == NULL && !strcmp(peerlist, ""))
	{
		return;
	}
	csync_debug(1, "parse_peerlist {}", peerlist);
	char *saveptr = NULL;
	char *token;
	char *peerlist_copy = strdup(peerlist);
	while ((token = strtok_r(peerlist_copy, ",", &saveptr)))
	{
		csync_debug(1, "New peer: {}", token);
		g_active_peers.insert(token);
		free(peerlist_copy);
		peerlist_copy = NULL;
	}
	if (peerlist_copy)
		free(peerlist_copy);
}

// Legacy C-style interface for backward compatibility
int match_peer(char **active_peers, const char *peer)
{
	if (!active_peers)
	{
		return 1; // If no peers specified, match all
	}

	int i = 0;
	while (active_peers[i])
	{
		if (!strcmp(active_peers[i], peer))
			return 1;
		i++;
	}
	return 0;
}

/**
 void csync_config_destroy()

 Valgrind should run clean after this. Every thing allocacted cfg_parser should be destroy
 Otherwise a long-running daemon running would be leaking
 **/

static void free_realname(char *real_name)
{
	if (real_name == NULL)
	{
		return;
	}
	if (!strcmp("", real_name))
	{
		return;
	}
	free(real_name);
}

static std::set<std::string> check_file_args(db_conn_p db, char *files[], int file_count, int flags)
{
	std::set<std::string> realnames;

	for (int i = 0; i < file_count; i++)
	{
		//char *real_name = realpath(files[i], NULL);
		char *real_name = getrealfn(files[i]);
		if (real_name == NULL)
		{
			csync_warn(0, "{} did not match a real path. Skipping.\n", files[i]);
		}
		else
		{
			if (!csync_check_usefullness(real_name, flags))
			{
				realnames.insert(real_name);
				if (flags & FLAG_DO_CHECK)
				{
					csync_debug(2, "csync_file_args: '{}' flags {} \n", real_name, flags);
					csync_check(db, real_name, flags);
				}
			}
			free(real_name); // Always free since we copied to string
		}
	}
	return realnames;
}

static int csync_read_config(const char *cfgname, int conn, int mode)
{
	if (cfgfile)
	{
		ASPRINTF(&file_config, "%s", cfgfile);
	}
	else if (!*cfgname)
	{
		ASPRINTF(&file_config, ETCDIR "/csync2.cfg");
	}
	else
	{
		int i;

		for (i = 0; cfgname[i]; i++)
			if (!(cfgname[i] >= '0' && cfgname[i] <= '9') && !(cfgname[i] >= 'a' && cfgname[i] <= 'z') && !(cfgname[i] == '_'))
			{
				const char *error = "Config names are limited to [a-z0-9_]+.\n";
				if (mode & MODE_INETD)
					conn_printf(conn, error);
				else
					csync_fatal("{}", error);
				return -1;
			}

		ASPRINTF(&file_config, ETCDIR "/csync2_%s.cfg", cfgname);
	}

	csync_info(2, "Config-File:   {}", file_config);
	yyin = fopen(file_config, "r");
	if (!yyin)
		csync_fatal("Can not open config file `{}': {}", file_config, strerror(errno));
	free(file_config);
	yyparse();
	fclose(yyin);
	yylex_destroy();
	return 0;
}

static int facility_from_string(const char *facility)
{
	if (strcmp(facility, "kern") == 0)
		return LOG_KERN;
	if (strcmp(facility, "user") == 0)
		return LOG_USER;
	if (strcmp(facility, "mail") == 0)
		return LOG_MAIL;
	if (strcmp(facility, "daemon") == 0)
		return LOG_DAEMON;
	if (strcmp(facility, "auth") == 0)
		return LOG_AUTH;
	if (strcmp(facility, "syslog") == 0)
		return LOG_SYSLOG;
	if (strcmp(facility, "lpr") == 0)
		return LOG_LPR;
	if (strcmp(facility, "news") == 0)
		return LOG_NEWS;
	if (strcmp(facility, "uucp") == 0)
		return LOG_UUCP;
	if (strcmp(facility, "cron") == 0)
		return LOG_CRON;
	if (strcmp(facility, "authpriv") == 0)
		return LOG_AUTHPRIV;
	if (strcmp(facility, "ftp") == 0)
		return LOG_FTP;
	if (strcmp(facility, "local0") == 0)
		return LOG_LOCAL0;
	if (strcmp(facility, "local1") == 0)
		return LOG_LOCAL1;
	if (strcmp(facility, "local2") == 0)
		return LOG_LOCAL2;
	if (strcmp(facility, "local3") == 0)
		return LOG_LOCAL3;
	if (strcmp(facility, "local4") == 0)
		return LOG_LOCAL4;
	if (strcmp(facility, "local5") == 0)
		return LOG_LOCAL5;
	if (strcmp(facility, "local6") == 0)
		return LOG_LOCAL6;
	if (strcmp(facility, "local7") == 0)
		return LOG_LOCAL7;
	return LOG_LOCAL5; // unknown
}

int csync2_main(int argc, char **argv)
{
	long mode = MODE_NONE;
	int flags = 0;
	int opt;

	// Configure modern logger to match old behavior
	csync2::g_logger.configure(csync2::LogLevel::Debug, csync_level_debug, csync2::Logger::Output::Console);
	csync2::g_logger.set_timestamps(false);

	csync_out_debug = stderr;

	if (argc == 3 && !strcmp(argv[1], "-k"))
	{
		return create_keyfile(argv[2]);
	}

	if (!access(ETCDIR "/csync2.lock", F_OK))
	{
		printf("Found " ETCDIR "/csync2.lock.\n");
		return 1;
	}

	csync_confdir = ETCDIR;
	int cmd_db_version = 0;
	int cmd_ip_version = 0;
	update_func update_function = NULL;
	int csync_port_cmdline = 0;
	while ((opt = getopt(argc, argv, "01246a:W:s:Ftp:G:P:C:K:D:N:HBAIXULlSTMRvhcuoimfxrdZz:VQqeEYy9:")) != -1)
	{

		switch (opt)
		{
		case 'V':
			csync2_version();
			exit(0);
			break;
		case '1':
			g_db_version = 1;
			cmd_db_version = 1;
			break;
		case '2':
			g_db_version = 2;
			break;
		case '4':
			cmd_ip_version = 1;
			g_ip_version = AF_INET;
			break;
		case '6':
			cmd_ip_version = 1;
			g_ip_version = AF_INET6;
			break;
		case '9':
			csync_facility = facility_from_string(optarg);
			break;
		case 'a':
			csync_database = optarg;
			db_type = DB_MYSQL;
			break;
		case 'W':
			csync_dump_dir_fd = atoi(optarg);
			if (write(csync_dump_dir_fd, 0, 0) < 0)
			{
				csync_fatal("Invalid dump_dir_fd {}: {}", csync_dump_dir_fd, strerror(errno));
			}
			break;
		case 's':
			csync_timestamp_out = fopen(optarg, "a");
			if (!csync_timestamp_out)
			{
				csync_fatal("Can't open timestanp file `{}': {}", optarg, strerror(errno));
			}
			break;
		case 'F':
			csync_new_force = 1;
			break;
		case 't':
			csync_timestamps = 1;
			break;
		case 'p':
			csync_port = strdup(optarg);
			csync_port_cmdline = 1;
			break;
		case 'G':
			g_active_grouplist = optarg;
			break;
		case 'P':
			g_active_peerlist = optarg;
			parse_peerlist(optarg);
			break;
		case 'B':
			db_blocking_mode = 0;
			break;
		case 'A':
			db_sync_mode = 0;
			break;
		case 'I':
			flags |= FLAG_INIT_RUN;
			break;
		case 'X':
			flags |= FLAG_INIT_RUN_REMOVAL;
			break;
		case 'U':
			flags |= FLAG_INIT_RUN_STRAIGHT;
			break;
		case 'C':
			g_cfgname = optarg;
			break;
		case 'K':
			cfgfile = optarg;
			csync_confdir = strdup(".");
			break;
		case 'D':
			dbdir = optarg;
			break;
		case 'N':
			g_myhostname = optarg;
			break;
		case 'v':
			csync_level_debug++;
			csync2::g_logger.setDebugLevel(csync_level_debug);
			break;
		case 'l':
			csync_syslog = 1;
			break;
		case 'O':
			log_file = strdup(optarg);
			break;
		case 'h':
			if (mode != MODE_NONE)
				help(argv[0]);
			mode = MODE_HINT;
			break;
		case 'x':
			if (mode != MODE_NONE)
				help(argv[0]);
			mode = MODE_SIMPLE;
			break;
		case 'c':
			if (mode != MODE_NONE)
				help(argv[0]);
			mode = MODE_CHECK;
			break;
		case 'f':
			mode |= MODE_FORCE;
			break;
		case 'u':
			update_function = csync_update_host;
			if (mode == MODE_CHECK || mode == MODE_FORCE)
				mode |= MODE_UPDATE;
			else
			{
				if (mode != MODE_NONE)
					help(argv[0]);
				mode = MODE_UPDATE;
			}
			break;
		case 'o':
			if (mode != MODE_NONE)
				help(argv[0]);
			mode = MODE_COMPARE;
			break;
		case 'i':
			if (mode == MODE_NONE)
			{
				mode = MODE_INETD;
			}
			else
			{
				mode *= 2;
				if (mode > MODE_NOFORK)
				{
					help(argv[0]);
				};
			};
			break;
		case 'm':
			if (mode != MODE_NONE)
				help(argv[0]);
			mode = MODE_MARK;
			break;
		case 'H':
			if (mode != MODE_NONE)
				help(argv[0]);
			mode = MODE_LIST_HINT;
			break;
		case 'L':
			if (mode != MODE_NONE)
				help(argv[0]);
			mode = MODE_LIST_FILE;
			break;
		case 'S':
			if (mode != MODE_NONE)
				help(argv[0]);
			mode = MODE_LIST_SYNC;
			break;
		case 'T':
			if (mode == MODE_TEST_SYNC)
			{
				flags |= FLAG_TEST_AUTO_DIFF;
			}
			else
			{
				if (mode != MODE_NONE)
					help(argv[0]);
				mode = MODE_TEST_SYNC;
			}
			break;
		case 'M':
			if (mode != MODE_NONE)
				help(argv[0]);
			mode = MODE_LIST_DIRTY;
			break;
		case 'R':
			if (mode != MODE_NONE)
				help(argv[0]);
			mode = MODE_REMOVE_OLD;
			break;
		case 'r':
			flags |= FLAG_RECURSIVE;
			break;
		case 'd':
			flags |= FLAG_DRY_RUN;
			break;
		case 'Z':
			mode = MODE_UPGRADE_DB;
			break;
		case 'z':
			g_allow_peer = optarg;
			break;
		case 'q':
			csync_quiet = 1;
			break;
		case 'Q':
			flags |= FLAG_DO_ALL;
			update_function = csync_ping_host;
			mode = MODE_UPDATE;
			break;
		case 'e':
			flags |= FLAG_DO_ALL;
			update_function = csync_sync_host;
			mode = MODE_EQUAL;
			break;
		case 'Y':
			flags |= FLAG_IGN_MTIME;
			csync_debug(1, "Ignoring MTIME: {}", flags);
			break;
		case 'y':
			csync_debug(1, "Zero MTIME for tests.");
			csync_zero_mtime_debug = 1;
			break;
		case 'E':
		{
			mode = MODE_TAIL;
			break;
		}
		default:
			help(argv[0]);
		}
	}

	if (mode == MODE_NONE || (optind < argc && mode != MODE_HINT && mode != MODE_MARK && !(mode & MODE_FORCE) && mode != MODE_SIMPLE && !(mode & MODE_UPDATE) && mode != MODE_CHECK && mode != MODE_COMPARE && mode != MODE_CHECK_AND_UPDATE && mode != MODE_LIST_SYNC && mode != MODE_TEST_SYNC && mode != MODE_UPGRADE_DB && mode != MODE_LIST_FILE && mode != MODE_LIST_DIRTY && mode != MODE_EQUAL && mode != MODE_REMOVE_OLD && mode != MODE_TAIL))
		help(argv[0]);

	if (mode == MODE_TEST_SYNC && optind != argc && optind + 1 != argc && optind + 2 != argc && optind + 3 != argc)
		help(argv[0]);

	if (mode == MODE_LIST_SYNC && optind + 2 != argc)
		help(argv[0]);

	/* Some inetd connect stderr to stdout.  The debug level messages on
	 * stderr would confuse the csync2 protocol. Log to syslog instead. */
	if (mode == MODE_INETD && csync_level_debug && !csync_syslog)
	{
		csync_syslog = 1;
	}

	if (g_myhostname.empty())
	{
		char hostname_buf[256];
		gethostname(hostname_buf, 256);
		hostname_buf[255] = 0;
		g_myhostname = hostname_buf;
	}

	std::transform(g_myhostname.begin(), g_myhostname.end(), g_myhostname.begin(), ::tolower);

	int listenfd = 0;
	long server_standalone = mode & MODE_STANDALONE;
	std::string myport(csync_port);
	csync_debug(3, "csync_hostinfo {}", static_cast<void*>(csync_hostinfo));
	csync_debug(3, "standalone: {} server_standalone > 0: {}", server_standalone, server_standalone > 0);
	if (server_standalone > 0)
	{
		if (!csync_port_cmdline)
		{
			// We need to read the config file to determine a eventual port override
			// port override needs to be consistent over all configurations
			csync_debug(3, "No command line port. Reading config");
			csync_read_config(g_cfgname, 0, MODE_NONE);
			csync_debug(3, "After config read, csync_hostinfo = {}", static_cast<void*>(csync_hostinfo));
			struct csync_hostinfo *myhostinfo = csync_hostinfo;
			while (myhostinfo != NULL)
			{
			    if (myhostinfo->name && g_myhostname == myhostinfo->name)
				{
					csync_debug(1, "Found my alias {} {} {}", myhostinfo->name, myhostinfo->host,
								myhostinfo->port);
					myport = myhostinfo->port;
					break;
				}
				myhostinfo = myhostinfo->next;
			}
			// clear the config since it is read on config command
			csync_config_destroy();
		}

		listenfd = csync_server_bind(myport.c_str(), g_ip_version);
		if (listenfd == -1)
		{
			exit(1);
		};
	};
	return csync_start(mode, flags, argc, argv, update_function, listenfd, cmd_db_version, cmd_ip_version);
};

// Forward declarations
static int csync_start_server(int mode, int flags, int argc, char *argv[], int listenfd, db_conn_p *db_ptr, int cmd_db_version, int cmd_ip_version);
static int csync_start_client(int mode, int flags, int argc, char *argv[], update_func updater, int cmd_db_version, int cmd_ip_version);
static int handle_server_error(int mode, int conn);

/* Entry point for command line and daemon callback on PING
 Responsible for looping in server mode. Need rewrite
 */

int csync_start(int mode, int flags, int argc, char *argv[], update_func updater, int listenfd, int cmd_db_version,
				int cmd_ip_version)
{
	int start_time = time(NULL);
	int server = mode & MODE_DAEMON;
	int retval = -1;
	db_conn_p db = NULL;

	// Loop to handle non-forking mode without recursion
	while (true)
	{
		csync_debug(4, "Mode: {} Flags: {} PID: {}", mode, flags, getpid());

		// print time (if -t is set)
		csync_printtime();

		// Handle server mode
		if (server)
		{
			int server_result = csync_start_server(mode, flags, argc, argv, listenfd, &db, cmd_db_version, cmd_ip_version);

			if (server_result == 1)
				return 1; // Server failure

			if (server_result == 2)
			{
				// Continue in non-forking mode - restart loop
				continue;
			}

			// Normal server completion - cleanup
			csync_redis_close();
			csync_run_commands(db);
			csync_db_close(db);
			csync_config_destroy();
			// Common cleanup and timing for both modes
			if (mode & MODE_DAEMON)
			{
				csync_info(2, "Connection closed. Pid {} mode {}", csync_server_child_pid, mode);

				if (mode & MODE_NOFORK)
				{
					csync_debug(1, "goto nofork." /*"Continuing in non-forking mode." */);
					continue; // Loop back instead of recursive call
				}
			}
		}
		else
		{
			// Handle client mode
			retval = csync_start_client(mode, flags, argc, argv, updater, cmd_db_version, cmd_ip_version);
		}
		// Exit the loop for non-daemon modes or when daemon is done
		break;
	}

	int run_time = time(NULL) - start_time;
	if (csync_error_count > 0)
		csync_warn(1, "Finished with {} errors in {} seconds.\n", csync_error_count, run_time);
	else
		csync_info(1, "Finished succesfully in {} seconds.", run_time);
	//csync_printtotaltime();

	if (retval >= 0 && csync_error_count == 0)
		return retval;
	return csync_error_count != 0;
}

int check_ip_version(int ip_version, int cmd_ip_version) {
    if (ip_version != -1)
	{
		if (cmd_ip_version) {
			csync_info(0, "Command line overrides configuration ip protocol version: {} -> {}", ip_version, cmd_ip_version);
			ip_version = cmd_ip_version;
		}
		if (ip_version == 4)
			return AF_INET;
		else if (ip_version == 6)
			return AF_INET6;
		else
		{
			csync_error(0, "Unknown IP version: %d\n", ip_version);
			exit(1);
		}
	}
	return AF_INET;
}

// Server startup function - handles daemon mode connection setup
static int csync_start_server(int mode, int flags, int argc, char *argv[], int listenfd, db_conn_p *db_ptr, int cmd_db_version, int cmd_ip_version)
{
	int conn = -1;
	int conn_out = 1;
	int server_standalone = mode & MODE_STANDALONE;
	char line[4096], *cmd, *para;

	// init syslog if needed
	if (csync_syslog && csync_server_child_pid == 0)
	{
		csync_openlog(csync_facility);
	}
	while (true) {
		if (server_standalone)
		{
#ifdef HAVE_LIBSYSTEMD
			sd_pid_notify(getpid(), 0, "READY=1");
#endif
			if (csync_server_accept_loop(mode & (MODE_SINGLE | MODE_NOFORK), listenfd, &conn))
				return 1;
		}

		// configure conn.c for MODE_INETD or STANDALONE
		if (MODE_INETD & mode)
		{
			conn = 0;
			conn_out = 1;
			conn_set(conn, conn_out);
		}
		else
		{
			conn_out = dup(conn);
			conn_set(conn, conn_out);
		}

		if (!conn_gets(conn, line, 4096))
		{
			return handle_server_error(mode, conn);
		}

		cmd = strtok(line, "\t \r\n");
		para = cmd ? strtok(0, "\t \r\n") : 0;

		if (cmd && !strcasecmp(cmd, "ssl"))
		{
#ifdef HAVE_LIBGNUTLS
			conn_printf(conn, "OK (activating_ssl).\n");
			conn_activate_ssl(1, conn, conn_out);

			if (!conn_gets(conn, line, 4096))
			{
				return handle_server_error(mode, conn);
			}
			cmd = strtok(line, "\t \r\n");
			para = cmd ? strtok(0, "\t \r\n") : 0;
#else
			conn_printf(conn_out, "This csync2 server is built without SSL support.\n");
			return handle_server_error(mode, conn);
#endif
		}

		if (!cmd || strcasecmp(cmd, "config"))
		{
			conn_printf(conn, "Expecting SSL (optional) and CONFIG as first commands.\n");
			return handle_server_error(mode, conn);
		}

		if (para) {
			std::string decoded = url_codec.decode(para);
			g_cfgname = strdup(decoded.c_str());
		}

		if (csync_read_config(g_cfgname, conn, mode) == -1)
			return handle_server_error(mode, conn);

		// Move configuration versions into place, if configured
		if (cfg_db_version != -1)
		{
			if (cmd_db_version)
				csync_info(0, "Command line overrides configuration DB protocol version: {} -> {}", cfg_db_version, cmd_db_version);
			else
				g_db_version = cfg_db_version;
		}

		if (cfg_protocol_version != -1)
			protocol_version = cfg_protocol_version;

		g_ip_version = check_ip_version(cfg_ip_version, cmd_ip_version);
		// Read database name from config unless it's overridden from command line
		if (!csync_database)
			csync_database = db_default_database(dbdir, g_myhostname.c_str(), g_cfgname);

		csync_info(2, "My hostname is {}.", g_myhostname.c_str());
		csync_info(2, "Database File: {}", csync_database);
		csync_info(2, "DB Version:    {}", g_db_version);
		csync_info(2, "IP Version:    {}", (g_ip_version == AF_INET6 ? "IPv6" : "IPv4"));
		csync_info(3, "GIT:           {}", csync2_git_version());

		int found = 0;
		const struct csync_group *g;
		for (g = csync_group; g; g = g->next) {
			if (g->myname)
			{
				found = 1;
				break;
			}
		}
		if (!found)
			csync_fatal("This host ({}) is not a member of any configured group.", g_myhostname.c_str());

		*db_ptr = csync_db_open(csync_database);
		(*db_ptr)->version = g_db_version;
		// Handles NULL
		csync_redis_connect(csync_redis);

		for (int i = optind; i < argc; i++)
			on_cygwin_lowercase(argv[i]);

		// Server initialization successful, now handle the session
		conn_printf(conn, "OK (cmd_finished).\n");
		csync_daemon_session(conn, conn_out, *db_ptr, protocol_version, mode);

		// Check if we should continue in non-forking mode
		if (mode & MODE_NOFORK)
		{
			csync_debug(1, "goto nofork."
						/*"Continuing in non-forking mode." "Continuing server loop in non-forking mode." */);
			// Clean up before continuing
			csync_redis_close();
			csync_run_commands(*db_ptr);
			csync_db_close(*db_ptr);
			csync_config_destroy();
			continue;
		}
		// We are done
		break;
	}

	return 0;
}

// Helper function for server error handling
static int handle_server_error(int mode, int conn)
{
	if (mode & MODE_NOFORK)
		return 2; // Signal to continue loop
	return 0;
}

// Client startup function - handles all non-daemon operations
static int csync_start_client(int mode, int flags, int argc, char *argv[], update_func updater, int cmd_db_version, int cmd_ip_version)
{
	int retval = -1;
	db_conn_p db = NULL;

	if (csync_read_config(g_cfgname, 0, mode) == -1)
		return -1;

	if (csync_syslog)
	{
		csync2::g_logger.configure(csync2::LogLevel::Debug, csync_level_debug, csync2::Logger::Output::Syslog);
		csync2::g_logger.set_timestamps(false);
		csync_openlog(csync_facility);
	}

	// Move configuration versions into place, if configured
	if (cfg_db_version != -1)
	{
		if (cmd_db_version)
			csync_info(0, "Command line overrides configuration DB protocol version: {} -> {}",
					   cfg_db_version, cmd_db_version);
		else
			g_db_version = cfg_db_version;
	}

	if (cfg_protocol_version != -1)
		protocol_version = cfg_protocol_version;

	g_ip_version = check_ip_version(cfg_ip_version, cmd_ip_version);

	// Read database name from config unless it's overridden from command line
	if (!csync_database)
		csync_database = db_default_database(dbdir, g_myhostname.c_str(), g_cfgname);

	csync_info(2, "My hostname is {}.", g_myhostname);
	csync_info(2, "Database File: {}", csync_database);
	csync_info(2, "DB Version:    {}", g_db_version);
	csync_info(2, "IP Version:    {}", (g_ip_version == AF_INET6 ? "IPv6" : "IPv4"));
	csync_info(3, "GIT:           {}", csync2_git_version());

	{
		int found = 0;
		const struct csync_group *g;
		for (g = csync_group; g; g = g->next) {
			if (g->myname)
			{
				found = 1;
				break;
			}
		}
		if (!found)
			csync_fatal("This host ({}) is not a member of any configured group.", g_myhostname.c_str());
	}

	db = csync_db_open(csync_database);
	db->version = g_db_version;
	// Handles NULL
	csync_redis_connect(csync_redis);

	for (int i = optind; i < argc; i++)
		on_cygwin_lowercase(argv[i]);

	std::string hostname = check_string(g_myhostname.c_str());

	if (mode == MODE_UPGRADE_DB)
	{
		int rc = db->upgrade_db();
		csync_db_close(db);
		exit(rc);
	}

	if (mode == MODE_SIMPLE)
	{
		if (argc == optind)
		{
			csync_check(db, "/", flags);
			std::set<std::string> patlist = {"/"};
			csync_update(db, hostname, g_active_peers, patlist, g_ip_version, csync_update_host, flags);
		}
		else
		{
			std::set<std::string> realnames = check_file_args(db, argv + optind, argc - optind, flags | FLAG_DO_CHECK);
			csync_update(db, hostname, g_active_peers, realnames, g_ip_version, csync_update_host, flags);
		}
	}

	if (mode == MODE_HINT)
	{
		for (int i = optind; i < argc; i++)
		{
			char *realname = getrealfn(argv[i]);
			if (realname != NULL)
			{
				if (!csync_check_usefullness(realname, flags & FLAG_RECURSIVE))
					db->add_hint(realname, flags & FLAG_RECURSIVE);
			}
			else
			{
				csync_warn(0, "{} did not match a real path. Skipping.\n", argv[i]);
			}
			free_realname(realname);
		}
	}

	if (mode & MODE_CHECK)
	{
		if (argc == optind)
		{
			std::vector<csync2::Hint> result = db->get_hints();
			for (csync2::Hint hint : result)
			{
				csync_check(db, hint.filename, (hint.is_recursive ? flags | FLAG_RECURSIVE : flags));
				db->remove_hint(hint.filename, hint.is_recursive);
			}
		}
		else
		{
			std::set<std::string> realnames = check_file_args(db, argv + optind, argc - optind, flags | FLAG_DO_CHECK);
			if (realnames.empty())
			{
				csync_debug(0, "No argument was matched in configuration");
				exit(2);
			}
		}
	}

	if (mode & MODE_FORCE)
	{
		for (int i = optind; i < argc; i++)
		{
			char *realname = getrealfn(argv[i]);
			db->force(realname, flags & FLAG_RECURSIVE);
			free_realname(realname);
		}
	}

	if (mode & MODE_UPDATE || mode & MODE_EQUAL)
	{
		if (argc <= optind)
		{
			csync_update(db, hostname, g_active_peers, std::set<std::string>(), g_ip_version, updater, flags);
		}
		else
		{
			std::set<std::string> realnames = check_file_args(db, argv + optind, argc - optind, flags);
			if (!realnames.empty())
			{
				csync_update(db, hostname, g_active_peers, realnames, g_ip_version, updater, flags);
			}
			else
			{
				csync_debug(0, "No argument was matched in configuration");
			}
		}
	}

	if (mode == MODE_COMPARE)
	{
		for (int i = optind; i < argc; i++)
		{
			char *realname = getrealfn(argv[i]);
			if (realname != NULL)
			{
				if (!csync_check_usefullness(realname, flags & FLAG_RECURSIVE))
				{
					csync_compare_mode = 1;
					csync_check(db, realname, flags);
				}
				free_realname(realname);
			}
			else
			{
				csync_warn(0, "{} is not a real path\n", argv[i]);
			}
		}
	}

	if (mode == MODE_MARK)
	{
		for (int i = optind; i < argc; i++)
		{
			char *realname = getrealfn(argv[i]);
			db->mark(g_active_peers, realname, flags & FLAG_RECURSIVE);
			free_realname(realname);
		}
	}

	if (mode == MODE_LIST_HINT)
	{
		retval = 2;
		db->list_hint();
	}

	if (mode == MODE_LIST_FILE)
	{
		retval = 2;
		const char *realname = "";
		if (optind < argc)
		{
			realname = getrealfn(argv[optind]);
		}
		db->list_files(realname);
		if (optind < argc) {
			free(const_cast<char*>(realname));
		}
	}

	if (mode == MODE_TAIL)
	{
		retval = 2;
		int fileno = 0;
		if (optind < argc)
		{
			fileno = open(argv[optind], O_RDONLY);
			csync_debug(1, "monitor: Opening {} {}", argv[optind], fileno);
			lseek(fileno, 0, SEEK_END);
		}
		else
		{
			csync_debug(1, "tailing stdin");
		}
		csync_tail(db, fileno, flags);
	}

	if (mode == MODE_LIST_SYNC)
	{
		db->list_sync(argv[optind], argv[optind + 1]);
		retval = 2;
	}

	if (mode == MODE_TEST_SYNC)
	{
		char *realname;
		switch (argc - optind)
		{
		case 3:
			realname = getrealfn(argv[optind + 2]);
			if (!csync_check_usefullness(realname, flags & FLAG_RECURSIVE))
			{
				if (flags & FLAG_TEST_AUTO_DIFF)
				{
					retval = csync_diff(db, argv[optind], argv[optind + 1], realname, g_ip_version);
				}
				else if (csync_insynctest(db, argv[optind], argv[optind + 1], realname, g_ip_version, flags))
					retval = 2;
			}
			break;
		case 2:
			if (csync_insynctest(db, argv[optind], argv[optind + 1], 0, g_ip_version, flags))
				retval = 2;
			break;
		case 1:
			realname = getrealfn(argv[optind]);
			if (!csync_check_usefullness(realname, 0))
			{
				if (csync_insynctest_all(db, realname, g_ip_version, g_active_peers, flags))
					retval = 2;
			}
			free(realname);
			break;
		case 0:
			if (csync_insynctest_all(db, 0, g_ip_version, g_active_peers, flags))
				retval = 2;
			break;
		}
	}

	csync_debug(3, "MODE {}", mode);
	if (mode == MODE_LIST_DIRTY)
	{
		retval = 0;
		char *realname = NULL;
		if (optind < argc)
		{
			realname = getrealfn(argv[optind]);
		}
		db->list_dirty(g_active_peers, realname != NULL ? realname : "", flags & FLAG_RECURSIVE);
		free_realname(realname);
	}

	if (mode == MODE_REMOVE_OLD)
	{
		char *realname = NULL;
		if (optind < argc)
		{
			realname = getrealfn(argv[optind]);
		}
		if (g_active_grouplist)
			csync_fatal("Never run -R with -G!");
		csync_remove_old(db, realname != NULL ? realname : "");
		free_realname(realname);
	}

	csync_redis_close();
	csync_run_commands(db);
	csync_db_close(db);
	csync_config_destroy();

	return retval;
}

// Add this function before csync_start
std::string check_string(const char *str)
{
	if (!str)
	{
		csync_fatal("String is NULL");
	}
	if (str[0] == '\0')
	{
		csync_warn(1, "String is empty\n");
	}
	return std::string(str);
}
