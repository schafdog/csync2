/*
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

#include "csync2.h"
#include "version.h"
#include "redis.h"

#include <arpa/inet.h>
#include <netinet/in.h>
#include <netinet/tcp.h>
#include <sys/socket.h>

#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <assert.h>
#include <errno.h>
#include <signal.h>
#include <ctype.h>
#include <syslog.h>
#include "db_api.h"

#include <netdb.h>
#include <db_api.h>
#include <time.h>
#ifdef HAVE_LIBSYSTEMD
#include <systemd/sd-daemon.h>
#endif

#ifdef REAL_DBDIR
#  undef DBDIR
#  define DBDIR REAL_DBDIR
#endif

int yylex_destroy(void);

char *csync_database = 0;
char *csync_redis = 0;

int db_type = DB_SQLITE3;

static char *file_config = 0;
static char *cfgfile = 0;
static char *dbdir = DBDIR;
char *cfgname = "";

char *active_grouplist = 0;
char *active_peerlist = 0;
char **active_peers = 0;
char *update_format= 0;
char *allow_peer = 0;
int  db_version = 1; 
int  ip_version = AF_UNSPEC;

extern int yyparse();
extern FILE *yyin;

char *log_file = 0;

void csync_version() {
    printf(
	"\n"
	PACKAGE_STRING " - cluster synchronization tool, 2nd generation\n"
	"LINBIT Information Technologies GmbH <http://www.linbit.com>\n"
	"Copyright (C) 2004, 2005  Clifford Wolf <clifford@clifford.at>\n"
	"Copyright (C) 2010  Dennis Schafroth <dennis@schafroth.com>\n"
	"Copyright (C) 2010  Johannes Thoma <johannes.thoma@gmx.at>\n"
	"\n"
#ifdef CSYNC_GIT_VERSION
	" " CSYNC_GIT_VERSION "\n"
#endif
	);
}
void help(char *cmd)
{
    csync_version();
    printf(
	"\n"
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
	"              Use syslog local0 facility\n"
	"       -O logfile\n" 
	"              Use logfile for logging\n"
	"       -K configfile\n" 
	"              Use this config file\n"
	"\n"
	"Test Options: NEVER use in production \n"
	"       -N myname \n"
	"              Override hostname \n"
	"       -Z peername\n"
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

int create_keyfile(filename_p filename)
{
    int fd = open(filename, O_WRONLY|O_CREAT|O_EXCL, 0600);
    int rand = open("/dev/urandom", O_RDONLY);
    char matrix[] = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789._";
    unsigned char n;
    int i;
    int rc;
    assert(sizeof(matrix) == 65);
    if ( fd == -1 ) {
	fprintf(stderr, "Can't create key file: %s\n", strerror(errno));
	return 1;
    }
    if ( rand == -1 ) {
	fprintf(stderr, "Can't open /dev/urandom: %s\n", strerror(errno));
	return 1;
    }
    for (i=0; i<64; i++) {
	rc = read(rand, &n, 1);
	rc = write(fd, matrix+(n&63), 1);
    }
    rc = write(fd, "\n", 1);
    close(rand);
    close(fd);
    return 0;
}

#define ERROR -1

int csync_scan(char *buffer) {
    int i = 0;
    while (buffer[i] != '\n' && buffer[i] != 0 && buffer[i] != ' ') {
	i++;
    }
    return i;
}

int csync_read_buffer(char *buffer, char *value) {
    
    int match = csync_scan(buffer);
    if (match > 0) {
	strncpy(value, buffer, match);
	value[match] = 0;
	if (buffer[match] == 0) {
	    csync_error(0, "Line too short %s", buffer);
	    return ERROR;
	}
    }
    return match;
}

// Monitor file system: Using inotifywait by tailing a file of events
// TODO: implement inotify natively. Rename to monitor
static int csync_tail(db_conn_p db, int fileno, int flags) {
    char readbuffer[1000];
    char time_str[100];
    char operation[100];
    char file[500];
    char *oldbuffer = NULL;
    int duplicated = 0;
    time_t last_sql = time(NULL);
    while (1) {
	char *buffer = readbuffer;
	// Rewrite to use some non-blocking
	int rc = gets_newline(fileno, buffer, 1000, 1);
	if (rc == 0) {
	    sleep(1);
	    // if count of updates 
	    time_t now = time(NULL);
	    if (now - last_sql > 300) {
		SQL(db, "monitor: ping server", "UPDATE dirty set myname = NULL where myname IS NULL and peername is NULL;");
		last_sql = now;
		csync_debug(2, "monitor: Pinged DB sever\n");
	    }
	    continue;
	}
	if (rc < 0) {
	    csync_error(0, "Got error from read %d\n", rc);
	    return ERROR;
	}
	if (oldbuffer && strcmp(readbuffer,oldbuffer) == 0) {
	    duplicated++;
	    continue;
	}
	if (duplicated) {
	    csync_debug(1, "monitor: Last operation was repeated %d times", duplicated);
	    duplicated = 0;
	}	
	int match = csync_read_buffer(buffer, time_str);
	if (match < 0)
	    return ERROR;
	struct tm tm;
	time_t log_time = -1;
	const char *rest = strptime(time_str, "%F_%T", &tm);
	if (rest) {
	    log_time = timelocal(&tm);
	    csync_debug(2, "monitor: Parsed %s to %d. %s", time_str, log_time, rest);
	} else {
	    csync_debug(0, "monitor: failed to parse %s as %F_%T", time_str);
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
	if (csync_check_usefullness(file, flags)) {
	    csync_debug(1, "monitor: Skip %s not matched at %d\n", file, log_time);
	    continue;
	}
	// Check if file is "just" made by daemon
	time_t lock_time = csync_redis_get_custom(file, operation);
	if (lock_time != -1)
	    csync_redis_del_custom(file, operation);

	if (lock_time != -1 && log_time <= lock_time) {
	    csync_debug(1, "monitor: Skip daemon %s %s at %d %d\n", operation, file, lock_time, log_time);
	} else {
	    csync_info(1, "monitor: unmatched '%s' '%s' at '%s' \n", operation, file, time_str);
	    if (strcmp(operation, "CREATE") == 0) {
		csync_info(2, "monitor: skipping '%s' '%s' at '%s' \n", operation, file, time_str);
	    } else if (strcmp(operation, "DELETE") == 0) {
		csync_check_del(db, file, flags);
	    } else if (strcmp(operation, "CREATE") == 0 || strstr(operation, "CLOSE_WRITE") != NULL) {
		const struct csync_group *g = NULL;
		int count_dirty;
		csync_check_mod(db, file, flags, &count_dirty, &g);
	    } else {
		csync_check(db, file, flags);
	    }
	    const char *patlist[1];
	    patlist[0] = file;
	    // Delay until we dont get more files or have enough and do it on common path
	    csync_update(db, myhostname, active_peers, (const char **) patlist, 1,
			 ip_version, csync_update_host, flags);
	    last_sql = time(NULL);
	}
	if (oldbuffer)
	    free(oldbuffer);
	oldbuffer = strdup(readbuffer);
    }
}

static int csync_bind(char *service_port, int ip_version)
{
    struct linger sl = { 1, 5 };
    struct addrinfo hints;
    struct addrinfo *result, *rp;
    int save_errno;
    int sfd, s, on = 1;
    memset(&hints, 0, sizeof(struct addrinfo));
    hints.ai_family = ip_version;	/* Allow IPv4 or IPv6 */
    hints.ai_socktype = SOCK_STREAM;
    hints.ai_flags = AI_PASSIVE;

    s = getaddrinfo(NULL, service_port, &hints, &result);
    if (s != 0) {
	csync_error(0, "Cannot prepare local socket, getaddrinfo: %s\n", gai_strerror(s));
	return ERROR;
    }

    /* getaddrinfo() returns a list of address structures.
       Try each address until we successfully bind(2).
       If socket(2) (or bind(2)) fails, we (close the socket
       and) try the next address. */

    for (rp = result; rp != NULL; rp = rp->ai_next) {
	sfd = socket(rp->ai_family, rp->ai_socktype, rp->ai_protocol);
	if (sfd == -1)
	    continue;

	if (setsockopt(sfd, SOL_SOCKET, SO_REUSEADDR, &on, (socklen_t) sizeof(on)) < 0)
	    goto error;
	if (setsockopt(sfd, SOL_SOCKET, SO_LINGER, &sl, (socklen_t) sizeof(sl)) < 0)
	    goto error;
	if (setsockopt(sfd, IPPROTO_TCP, TCP_NODELAY, &on, (socklen_t) sizeof(on)) < 0)
	    goto error;

	if (bind(sfd, rp->ai_addr, rp->ai_addrlen) == 0)
	    break;	/* Success */

	close(sfd);
    }

    freeaddrinfo(result);	/* No longer needed */

    if (rp == NULL)	/* No address succeeded */
	return -1;

    return sfd;

error:
    save_errno = errno;
    close(sfd);
    errno = save_errno;
    return ERROR;
}

static char program_pid[256];

void csync_openlog() {
    sprintf(program_pid, "csync2(%d)", getpid());
    openlog(program_pid, LOG_ODELAY, LOG_LOCAL0);
}

static int csync_server_bind(char *service_port, int ip_version) 
{
    csync_log(LOG_DEBUG, 1, "Binding to %s IPv%d \n", service_port, ip_version);
    int listenfd = csync_bind(service_port, ip_version);
    if (listenfd < 0) 
	goto error;
    if (listen(listenfd, 5) < 0) 
	goto error;
    /* we want to "cleanly" shutdown if the connection is lost unexpectedly */
    signal(SIGPIPE, SIG_IGN);
    /* server is not interested in its childs, prevent zombies */
    signal(SIGCHLD, SIG_IGN);
    return listenfd;
error:
    fprintf(stderr, "Server error: %s\n", strerror(errno));
    csync_fatal("Server error: %s\n", strerror(errno)); 
    return -1;

}
/* On fork the child process will return but the parent will continue 
   accepting. On non-forking, the loop has to be done outside.
*/
static int csync_server_accept_loop(int nonfork, int listenfd, int *conn)
{
    union {
	struct sockaddr sa;
	struct sockaddr_in sa_in;
	struct sockaddr_in6 sa_in6;
	struct sockaddr_storage ss;
    } addr;
    printf("Csync2 daemon running. Waiting for connections.\n");
  
    while (1) {
	unsigned addrlen = sizeof(addr);
	*conn = accept(listenfd, &addr.sa, &addrlen);
	if (conn < 0) 
	    goto error;

	struct timeval tv;

	tv.tv_sec = 60;
	tv.tv_usec = 0 ;
	/* Not working for inet, but conn now uses select to detect data */
	if (setsockopt(*conn, SOL_SOCKET, SO_RCVTIMEO, (char *)&tv, sizeof tv))
	    csync_error(0, "Failed to set socket rcv timeout");

	fflush(stdout); fflush(stderr);

	if (nonfork || !fork()) {
	    char hbuf[NI_MAXHOST], sbuf[NI_MAXSERV];
	    /* need to restore default SIGCHLD handler in the session,
	     * as we may need to wait on them in action.c */
	    signal(SIGCHLD, SIG_DFL);
	    csync_server_child_pid = getpid();
	    if (getnameinfo(&addr.sa, addrlen,
			    hbuf, sizeof(hbuf), sbuf, sizeof(sbuf),
			    NI_NUMERICHOST | NI_NUMERICSERV) != 0)
		goto error;
      
	    if (csync_syslog) {
		csync_openlog();
		csync_info(1, "New connection from %s:%s.\n", hbuf, sbuf);
	    }
	    else {
		//Stupid this is not using csync_log(..)
		fprintf(stdout, "<%d> New connection from %s:%s.\n",
			csync_server_child_pid, hbuf, sbuf);
		fflush(stdout);
	    }
	    //dup2(conn, 0);
	    //dup2(conn, 1);
	    //close(conn);
	    return 0;
	}
	close(*conn);
    }

error:
    fprintf(stderr, "Server error: %s\n", strerror(errno));
    return 1;
}

int csync_get_checktxt_version(const char *value) {
    if (value && strlen(value) > 2) {
	if (value[1] == '1')
	    return 1;
	if (value[1] == '2')
	    return 2;
    }
    return db_version;
}
const char* csync_nop(const char *value) {
    return value;
}

const char* csync_decode_v2(const char *value) {
/* 
    int version = csync_get_checktxt_version(value);
    if (version == 1)
	return url_decode(value);
    else
*/
    return value;
}

extern int cfg_ip_version; 
extern int cfg_db_version; 
extern int cfg_protocol_version; 
int protocol_version;

const char* (*db_decode) (const char *value); 
const char* (*db_encode) (const char *value); 

char **peers = NULL;
char ** parse_peerlist(char *peerlist)
{
    if (peerlist == NULL)
	return peers;
    peers = calloc(sizeof(peers), 100);
    int i = 0;
    char *saveptr = NULL;
    csync_log(LOG_DEBUG, 2, "parse_peerlist %s\n", peerlist);
    while ((peers[i] = strtok_r(peerlist, ",", &saveptr))) {
	csync_log(LOG_DEBUG, 2, "New peer: %s\n", peers[i]);
	peerlist = NULL;
	++i;
    };
    peers[i] = NULL;
    return peers;
}

int match_peer(char **active_peers, const char *peer) {
    int i = 0;
    int match = 1;
    if (active_peers) {
	match = 0;
	while (active_peers[i]) {
	    if (!strcmp(active_peers[i], peer))
		return 1;
	    i++;
	}
    }
    return match;
}

/**
   void csync_config_destroy()

   Valgrind should run clean after this. Every thing allocacted cfg_parser should be destroy 
   Otherwise a long-running daemon running would be leaking
**/

void csync_config_destroy();

void free_realname(char *real_name) {
    if (real_name == NULL) {
	return ;
    }
    if (!strcmp("", real_name)) {
	return ;
    }
    free(real_name);
}

int check_file_args(db_conn_p db, char *files[], int file_count, char *realnames[], int flags) {
    int count = 0;
    for (int i = 0; i < file_count; i++) {
	char *real_name =  getrealfn(files[i]);
	if (real_name == NULL) {
	    csync_warn(0, "%s did not match a real path. Skipping.\n", files[i]);
	}
	else {
	    if (!csync_check_usefullness(real_name, flags)) {
		realnames[count] = real_name;
		if (flags & FLAG_DO_CHECK) {
		    csync_check(db, realnames[count], flags);
		    csync_log(LOG_DEBUG, 2, "csync_file_args: '%s' flags %d \n", realnames[count], flags);
		}
		count++;
	    } else {
		free(real_name);
	    }
	}
    }
    return count; 
}

void csync_realnames_free(char *files[], int count) {
    for (int i=0; i < count; i++) {
	free(files[i]);
    }
}

void select_recursive(char *db_encoded, char **where_rec) {
    ASPRINTF(where_rec,
	     " filename > '%s/' "
	     " and filename < '%s0'",
	     db_encoded, db_encoded);
}

int csync_read_config(char *cfgname, int conn, int mode)
{
    if (cfgfile) {
	ASPRINTF(&file_config, "%s", cfgfile);
    }
    else if ( !*cfgname) {
	ASPRINTF(&file_config, ETCDIR "/csync2.cfg");
    } else {
	int i;

	for (i=0; cfgname[i]; i++)
	    if ( !(cfgname[i] >= '0' && cfgname[i] <= '9') &&
		 !(cfgname[i] >= 'a' && cfgname[i] <= 'z') ) {
		char *error  = "Config names are limited to [a-z0-9]+.\n";
		if (mode & MODE_INETD)
		    conn_printf(conn, error);
		else
		    csync_fatal(error);
		return -1;
	    }

	ASPRINTF(&file_config, ETCDIR "/csync2_%s.cfg", cfgname);
    }

    csync_info(2, "Config-File:   %s\n", file_config);
    yyin = fopen(file_config, "r");
    if ( !yyin )
	csync_fatal("Can not open config file `%s': %s\n",
		    file_config, strerror(errno));
    yyparse();
    fclose(yyin);
    yylex_destroy();
    return 0;
}

int main(int argc, char ** argv)
{
    int mode = MODE_NONE;
    int flags = 0;
    int opt, i;
    // Default db_decodes (version 1 scheme)
    db_decode = url_decode;

    ringbuffer_init();

    csync_out_debug = stderr;
	
    if ( argc==3 && !strcmp(argv[1], "-k") ) {
	return create_keyfile(argv[2]);
    }

    if (!access(ETCDIR "/csync2.lock", F_OK)) {
	printf("Found " ETCDIR "/csync2.lock.\n");
	return 1;
    }

    csync_confdir = ETCDIR;
    int cmd_db_version = 0;
    int cmd_ip_version = 0;
    update_func update_func;
    int csync_port_cmdline = 0;
    while ( (opt = getopt(argc, argv, "01246a:W:s:Ftp:G:P:C:K:D:N:HBAIXULlSTMRvhcuoimfxrdZz:VQqeEY")) != -1 ) {

	switch (opt) {
	case 'V':
	    csync_version();
	    exit(0);
	    break;
	case '1':
	    db_version = 1;
	    cmd_db_version = 1;
	    break;
	case '0':
	    update_format ="v1-v2";
	    cmd_db_version = 1;
	    break;
	case '2':
	    db_version = 2;
	    break;
	case '4':
	    cmd_ip_version = 1;
	    ip_version = AF_INET;
	    break;

	case '6':
	    cmd_ip_version = 1;
	    ip_version = AF_INET6;
	    break;
	case 'a':
	    csync_database = optarg;
	    db_type = DB_MYSQL;
	    break;
	case 'W':
	    csync_dump_dir_fd = atoi(optarg);
	    if (write(csync_dump_dir_fd, 0, 0) < 0)
		csync_fatal("Invalid dump_dir_fd %d: %s\n",
			    csync_dump_dir_fd, strerror(errno));
	    break;
	case 's':
	    csync_timestamp_out = fopen(optarg, "a");
	    if (!csync_timestamp_out)
		csync_fatal("Can't open timestanp file `%s': %s\n",
			    optarg, strerror(errno));
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
	    active_grouplist = optarg;
	    break;
	case 'P':
	    active_peerlist = optarg;
	    active_peers = parse_peerlist(active_peerlist);
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
	    cfgname = optarg;
	    break;
	case 'K':
	    cfgfile = optarg;
	    csync_confdir = strdup(".");
	    break;
	case 'D':
	    dbdir = optarg;
	    break;
	case 'N':
	    snprintf(myhostname, 256, "%s", optarg);
	    break;
	case 'v':
	    csync_level_debug++;
	    break;
	case 'l':
	    csync_syslog = 1;
	    break;
	case 'O':
	    log_file = strdup(optarg);
	    break;
	case 'h':
	    if ( mode != MODE_NONE ) help(argv[0]);
	    mode = MODE_HINT;
	    break;
	case 'x':
	    if ( mode != MODE_NONE ) help(argv[0]);
	    mode = MODE_SIMPLE;
	    break;
	case 'c':
	    if ( mode != MODE_NONE ) help(argv[0]);
	    mode = MODE_CHECK;
	    break;
	case 'f':
	    mode |= MODE_FORCE;
	    break;
	case 'u':
	    update_func = csync_update_host;
	    if ( mode == MODE_CHECK || mode == MODE_FORCE)
		mode |=  MODE_UPDATE;
	    else {
		if ( mode != MODE_NONE ) help(argv[0]);
		mode = MODE_UPDATE;
	    }
	    break;
	case 'o':
	    if ( mode != MODE_NONE ) help(argv[0]);
	    mode = MODE_COMPARE;
	    break;
	case 'i':
	   if (mode == MODE_NONE ) {
	      mode = MODE_INETD;	      
	   }
	   else {
	      mode *= 2;
	      if (mode > MODE_NOFORK) {
		    help(argv[0]);
	      };
	   };
	   break;
	case 'm':
	    if ( mode != MODE_NONE ) help(argv[0]);
	    mode = MODE_MARK;
	    break;
	case 'H':
	    if ( mode != MODE_NONE ) help(argv[0]);
	    mode = MODE_LIST_HINT;
	    break;
	case 'L':
	    if ( mode != MODE_NONE ) help(argv[0]);
	    mode = MODE_LIST_FILE;
	    break;
	case 'S':
	    if ( mode != MODE_NONE ) help(argv[0]);
	    mode = MODE_LIST_SYNC;
	    break;
	case 'T':
	    if ( mode == MODE_TEST_SYNC ) {
		flags |= FLAG_TEST_AUTO_DIFF;
	    } else {
		if ( mode != MODE_NONE ) help(argv[0]);
		mode = MODE_TEST_SYNC;
	    }
	    break;
	case 'M':
	    if ( mode != MODE_NONE ) help(argv[0]);
	    mode = MODE_LIST_DIRTY;
	    break;
	case 'R':
	    if ( mode != MODE_NONE ) help(argv[0]);
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
	    allow_peer = optarg;
	    break;
	case 'q':
	    csync_quiet = 1;
	    break;
	case 'Q':
	    flags |= FLAG_DO_ALL;
	    update_func = csync_ping_host;
	    mode = MODE_UPDATE;
	    break;
	case 'e':
	    flags |= FLAG_DO_ALL;
	    update_func = csync_sync_host;
	    mode = MODE_EQUAL;
	    break;
	case 'Y':
	    flags |= FLAG_IGN_MTIME;
	    csync_debug(1, "Ignoring MTIME: %d", flags);
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

    if ( optind < argc &&
	 mode != MODE_HINT && mode != MODE_MARK &&
	 !(mode & MODE_FORCE) &&
	 mode != MODE_SIMPLE &&
	 !(mode & MODE_UPDATE) &&
	 mode != MODE_CHECK &&
	 mode != MODE_COMPARE &&
	 mode != MODE_CHECK_AND_UPDATE &&
	 mode != MODE_LIST_SYNC && mode != MODE_TEST_SYNC &&
	 mode != MODE_UPGRADE_DB &&
	 mode != MODE_LIST_FILE &&
	 mode != MODE_LIST_DIRTY &&
	 mode != MODE_EQUAL &&
	 mode != MODE_REMOVE_OLD &&
	 mode != MODE_TAIL &&
	 update_format == 0)
	help(argv[0]);

    if ( mode == MODE_TEST_SYNC && optind != argc &&
	 optind+1 != argc && optind+2 != argc && optind+3 != argc)
	help(argv[0]);

    if ( mode == MODE_LIST_SYNC && optind+2 != argc )
	help(argv[0]);

    if ( mode == MODE_NONE && update_format == 0)
	help(argv[0]);

    /* Some inetd connect stderr to stdout.  The debug level messages on
     * stderr would confuse the csync2 protocol. Log to syslog instead. */
    if ( mode == MODE_INETD && csync_level_debug && !csync_syslog ) {
	csync_syslog = 1;
    }

    if ( *myhostname == 0 ) {
	gethostname(myhostname, 256);
	myhostname[255] = 0;
    }

    for (i=0; myhostname[i]; i++)
	myhostname[i] = tolower(myhostname[i]);

    int listenfd;
    int server = mode & MODE_DAEMON;
    int server_standalone =  mode & MODE_STANDALONE;
    char *myport = csync_port;
    csync_log(LOG_DEBUG, 3, "csync_hostinfo %p \n", csync_hostinfo);
    if (server_standalone) {
	if (!csync_port_cmdline) {
	    // We need to read the config file to determine a eventual port override
	    // port override needs to be consistent over all configurations
	    csync_read_config(cfgname, 0, MODE_NONE);
	    struct csync_hostinfo *myhostinfo = csync_hostinfo;
	    while (myhostinfo != NULL) {
		if (!strcmp(myhostinfo->name, myhostname))
		{
		    csync_log(LOG_DEBUG, 1, "Found my alias %s %s %s \n" ,myhostinfo->name, myhostinfo->host, myhostinfo->port);
		    myport = strdup(myhostinfo->port);
		    break;
		}
		myhostinfo = myhostinfo->next;
	    }
	    // clear the config since it is read on config command
	    csync_config_destroy();
	}
    
	listenfd = csync_server_bind(myport, ip_version);
	if (listenfd == -1) {
	    exit(1);
	};
    };

    return csync_start(mode, flags, argc, argv, update_func, listenfd, cmd_db_version, cmd_ip_version);
};

/* Entry point for command line and daemon callback on PING 
   Responsible for looping in server mode. Need rewrite
*/

int csync_start(int mode, int flags, int argc, char *argv[], update_func update_func, int listenfd, int cmd_db_version, int cmd_ip_version)
{
    int start_time = time(NULL);
    int server = mode & MODE_DAEMON;
    int server_standalone =  mode & MODE_STANDALONE;
    int retval = -1;
    textlist_p tl = 0, t;
    int first = 1;
    int i; 
nofork:
    csync_debug(3, "Mode: %d Flags: %d PID: %d\n", mode, flags, getpid());
    // init syslog if needed. 
    if (first && csync_syslog && csync_server_child_pid == 0 /* client or child ? */) {
	csync_openlog();
	first = 0;
    }
    // mode keeps its original value, but now checking on server
    int conn  = -1;
    if (server_standalone) {
#ifdef HAVE_LIBSYSTEMD
	sd_pid_notify(getpid(), 0, "READY=1");
#endif
       if (csync_server_accept_loop(mode & (MODE_SINGLE | MODE_NOFORK),
				    listenfd, &conn)) 
	  return 1; // Parent returns
    }

    // print time (if -t is set)
    csync_printtime();
    int conn_out = 1;

    /* In inetd (actually any server) mode we need to read the module name from the peer
     * before we open the config file and database
     */
    if (server) {
	// Connected with client (after accept)
	start_time = time(NULL);
	char line[4096], *cmd, *para;
	/* configure conn.c for inetd mode */
	if (MODE_INETD & mode) {
	    conn = 0;
	    conn_out = 1;
	    conn_set(conn, conn_out);
	}
	else {
	    conn_out = dup(conn);
	    conn_set(conn, conn_out);
	}
	if ( !conn_gets(conn, line, 4096) ) {
	    goto handle_error;
	}
	cmd = strtok(line, "\t \r\n");
	para = cmd ? strtok(0, "\t \r\n") : 0;
	  
	if (cmd && !strcasecmp(cmd, "ssl")) {
#ifdef HAVE_LIBGNUTLS
	    conn_printf(conn, "OK (activating_ssl).\n");
	    conn_activate_ssl(1, conn, conn_out);
	    
	    if ( !conn_gets(conn,line, 4096) ) {
		goto handle_error;
	    }
	    cmd = strtok(line, "\t \r\n");
	    para = cmd ? strtok(0, "\t \r\n") : 0;
#else
	    conn_printf(conn_out, "This csync2 server is built without SSL support.\n");
	    goto handle_error;
#endif
	}

	if (!cmd || strcasecmp(cmd, "config")) {
	    conn_printf(conn, "Expecting SSL (optional) and CONFIG as first commands.\n");
	    goto handle_error;
	}
	  
	if (para)
	    cfgname = strdup(url_decode(para));
    }

    if (csync_read_config(cfgname, conn, mode) == -1)
	goto handle_error;
    // Move configuration versions into place, if configured.
    if (cfg_db_version != -1) {
	if (cmd_db_version) 
	    csync_info(0, "Command line overrides configuration DB protocol version: %d -> %d\n", cfg_db_version, cmd_db_version);
	else
	    db_version = cfg_db_version;
    }
    if (db_version == 2) {
//	db_encode = csync_db_escape;
	db_decode = csync_decode_v2;
    }

    if (cfg_protocol_version != -1)
	protocol_version = cfg_protocol_version;

    if (cfg_ip_version != -1) {
	if (cmd_ip_version) 
	    csync_info(0, "Command line overrides configuration ip protocol version: %d -> %d\n", cfg_ip_version, ip_version);
	else if (cfg_ip_version == 4)
	    ip_version = AF_INET;
	else if (cfg_ip_version == 6)
	    ip_version = AF_INET6;
	else {
	    csync_error(0, "Unknown IP version: %d\n", cfg_ip_version);
	    exit(1);
	}
    } 


    /* Read database name from config unless it's overridden from command line */
    if (!csync_database)
	csync_database = db_default_database(dbdir, myhostname, cfgname);

    csync_info(2, "My hostname is %s.\n",   myhostname);
    csync_info(2, "Database File: %s\n",    csync_database);
    csync_info(2, "DB Version:    %d\n",    db_version);
    csync_info(2, "IP Version:    %s\n",    (ip_version == AF_INET6 ? "IPv6" : "IPv4"));
    csync_info(3, "GIT:           %s\n",    CSYNC_GIT_VERSION);
    

    {
	int found = 0;
	const struct csync_group *g;
	for (g=csync_group; g; g=g->next)
	    if ( g->myname ) {
		found = 1;
		break;
	    }
	if (!found)
	    csync_fatal("This host (%s) is not a member of any configured group.\n", myhostname);
    }

    db_conn_p db = csync_db_open(csync_database);
    db->version = db_version;
    // Handles NULL
    csync_redis_connect(csync_redis);

    if (mode == MODE_UPGRADE_DB) {
	int rc = db->upgrade_db(db);
	csync_db_close(db);
	exit(rc);
    }

    if (update_format) {
	if (!strcmp(update_format, "v1-v2")) {
	    int rc = db->update_format_v1_v2(db, "/", 1, 1);
	    csync_db_close(db);
	    exit(rc);
	}
	else {
	    printf("Update format %s unknown\n", update_format);
	    db->upgrade_db(db);
	    csync_db_close(db);
	    exit(1);
	}
    }
    for (i = optind; i < argc; i++)
	on_cygwin_lowercase(argv[i]);

	
    if (mode == MODE_SIMPLE) {
	if ( argc == optind )
	{
	    csync_check(db, "/", flags);
	    csync_update(db, myhostname, active_peers, 0, 0, ip_version, csync_update_host, flags);
	}
	else
	{
	    char *realnames[argc-optind];
	    int count = check_file_args(db, argv+optind, argc-optind, realnames, flags | FLAG_DO_CHECK);
	    csync_update(db, myhostname, active_peers, (const char**)realnames, count,
			 ip_version, csync_update_host, flags);
	    csync_realnames_free(realnames, count);
	}
    }
    if (mode == MODE_HINT) {
	for (i=optind; i < argc; i++) {
	    char *realname = getrealfn(argv[i]);
	    if (realname != NULL) { 
		if (!csync_check_usefullness(realname, flags & FLAG_RECURSIVE))
		    db->add_hint(db, realname, flags & FLAG_RECURSIVE);
	    }
	    else {
		csync_warn(0, "%s did not match a real path. Skipping.\n", argv[i]); 
	    };
	    free_realname(realname);
	};
    };

    if (mode & MODE_CHECK) {
	if ( argc == optind )
	{
	    tl = db->get_hints(db);
	    for (t = tl; t != 0; t = t->next) {
		csync_check(db, t->value, (t->intvalue ? flags | FLAG_RECURSIVE : flags));
		db->remove_hint(db, t->value, t->intvalue);
	    }
	    textlist_free(tl);
	}
	else
	{
	    char *realnames[argc-optind];
	    int count = check_file_args(db, argv+optind, argc-optind, realnames, flags | FLAG_DO_CHECK);
	    if (count > 0)
		csync_realnames_free(realnames, count);
	    else {
		csync_debug(0, "No argument was matched in configuration\n");
	    }
	}
    };

    if (mode & MODE_FORCE) {
	for (i=optind; i < argc; i++) {
	    char *realname = getrealfn(argv[i]);
	    db->force(db, realname, flags & FLAG_RECURSIVE);
	    free_realname(realname);
	};
    };
    
    if (mode & MODE_UPDATE || mode & MODE_EQUAL ) {
	if ( argc <= optind )
	{
	    csync_update(db, myhostname, active_peers, 0, 0, 
			 ip_version, update_func, flags);
	}
	else {
	    char *realnames[argc-optind];
	    int count = check_file_args(db, argv+optind, argc-optind,
					realnames, flags);
	    if (count > 0) {
		csync_update(db, myhostname, active_peers, (const char**) realnames,
			     argc-optind, ip_version,
			     update_func, flags);
	    } else {
		csync_debug(0, "No argument was matched in configuration\n");
	    }
	    csync_realnames_free(realnames, count);
	}
    };

    if (mode == MODE_COMPARE) {
	for (i=optind; i < argc; i++) {
	    char *realname = getrealfn(argv[i]);
	    if (realname != NULL) {
		if (!csync_check_usefullness(realname, flags & FLAG_RECURSIVE)) {
		    csync_compare_mode = 1;
		    csync_check(db, realname, flags);
		}
		free_realname(realname);
	    }
	    else {
		csync_warn(0, "%s is not a real path\n", argv[i]);
	    }
	}
    };

    if (server) {
	conn_printf(conn, "OK (cmd_finished).\n");
	csync_daemon_session(conn, conn_out, db, protocol_version, mode);
    };

    if (mode ==  MODE_MARK) {
	for (i=optind; i < argc; i++) {
	    char *realname = getrealfn(argv[i]);
	    db->mark(db, active_peerlist, realname, flags & FLAG_RECURSIVE);
	}
    };

    if (mode == MODE_LIST_HINT) {
	retval = 2;
	db->list_hint(db); 
    };

    if (mode == MODE_LIST_FILE) {
	retval = 2;
	char *realname = "";
	if (optind < argc) {
	    realname = getrealfn(argv[optind]);
	}
	db->list_files(db, realname);
    };

    if (mode == MODE_TAIL) {
	retval = 2;
	int fileno = 0;
	if (optind < argc) {
	    fileno = open(argv[optind], O_RDONLY);
	    csync_log(LOG_DEBUG, 1, "monitor: Opening %s %d \n", argv[optind], fileno);
	    // TODO load "saved position" in cases of restart
	    lseek(fileno, 0, SEEK_END);
	}
	else {
	    csync_log(LOG_DEBUG, 1, "tailing stdin \n");
	}
	csync_tail(db, fileno, flags);
    };
    
    if (mode == MODE_LIST_SYNC) {
	db->list_sync(db, argv[optind], argv[optind+1]);
	retval = 2;
	// ??? 
    };

    if (mode == MODE_TEST_SYNC) {
	char *realname;
/*
	if (init_run && init_run_with_removals)
	    init_run |= 2;
	if (init_run && init_run_straight)
	    init_run |= 4;
*/
	switch (argc-optind)
	{
	case 3:
	    realname = getrealfn(argv[optind+2]);
	    if (!csync_check_usefullness(realname, flags & FLAG_RECURSIVE)) {
		if (flags & FLAG_TEST_AUTO_DIFF ) {
		    retval = csync_diff(db, argv[optind], argv[optind+1], realname, ip_version);
		} else
		    if ( csync_insynctest(db, argv[optind], argv[optind+1], realname, ip_version, flags))
			retval = 2;
	    }
	    break;
	case 2:
	    if ( csync_insynctest(db, argv[optind], argv[optind+1], 0, ip_version, flags) )
		retval = 2;
	    break;
	case 1:
	    realname = getrealfn(argv[optind]);
	    if (!csync_check_usefullness(realname, 0)) {
		if ( csync_insynctest_all(db, realname, ip_version, active_peers, flags))
		    retval = 2;
	    }
	    break;
	case 0:
	    if ( csync_insynctest_all(db, 0, ip_version, active_peers, flags) )
		retval = 2;
	    break;
	}
    };

    if (mode == MODE_LIST_DIRTY) {
	retval = 0;
	char *realname = "";
	if (optind < argc) {
	    realname = getrealfn(argv[optind]);
	}
	db->list_dirty(db, active_peers, realname, flags & FLAG_RECURSIVE);
	free_realname(realname);

    }
    if (mode == MODE_REMOVE_OLD) {
	char *realname = ""; 
	if (optind < argc) {
	    realname = getrealfn(argv[optind]);
	}
	if ( active_grouplist )
	    csync_fatal("Never run -R with -G!\n");
	// TODO add "path" to limit clean up
	csync_remove_old(db, realname);
	free_realname(realname);
    }

    csync_redis_close();
    csync_run_commands(db);
    csync_db_close(db);
    csync_info(3, "Closed db: %p\n", db);
    csync_config_destroy();
    if (active_peers) {
	free(active_peers);
    }
    if (mode & MODE_DAEMON) {
	csync_log(LOG_INFO, 3, "Connection closed. Pid %d mode %d \n", csync_server_child_pid, mode);
	  
	if (mode & MODE_NOFORK) {
	    csync_log(LOG_DEBUG, 1, "goto nofork.\n");
	    goto nofork;
	}
    }

    if ( csync_error_count != 0 || (csync_messages_printed && csync_level_debug) ) {
	int run_time = time(NULL) - start_time;
	if (csync_error_count > 0)
	    csync_warn(1, "Finished with %d errors in %d seconds.\n", csync_error_count, run_time);
	else
	    csync_info(1, "Finished succesfully in %d seconds.\n", run_time);
    }
    csync_printtotaltime();

    if ( retval >= 0 && csync_error_count == 0 ) 
	return retval;
    return csync_error_count != 0;

handle_error:
    if (mode == MODE_NOFORK)
	goto nofork;
    return 0;
}

