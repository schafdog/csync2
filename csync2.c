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

#ifdef REAL_DBDIR
#  undef DBDIR
#  define DBDIR REAL_DBDIR
#endif

char *csync_database = 0;

int db_type = DB_SQLITE3;

static char *file_config = 0;
static char *cfgfile = 0;
static char *dbdir = DBDIR;
char *cfgname = "";

char myhostname[256] = "";
char *csync_port = "30865";
char *active_grouplist = 0;
char *active_peerlist = 0;
char **active_peers = 0;
char *update_format= 0;
char *allow_peer = 0;
int  db_version = 1; 
int  ip_version = AF_UNSPEC;

extern int yyparse();
extern FILE *yyin;

int csync_error_count = 0;
int csync_debug_level = 0;
FILE *csync_debug_out = 0;
int csync_syslog = 0;

int csync_server_child_pid = 0;
int csync_timestamps = 0;
int csync_new_force = 0;

int csync_dump_dir_fd = -1;

enum {
	MODE_NONE,
	MODE_HINT,
	MODE_CHECK,
	MODE_CHECK_AND_UPDATE,
	MODE_UPDATE,
	MODE_INETD,
	MODE_SERVER,
	MODE_SINGLE,
	MODE_NOFORK,
	MODE_MARK,
	MODE_FORCE,
	MODE_LIST_HINT,
	MODE_LIST_FILE,
	MODE_LIST_SYNC,
	MODE_TEST_SYNC,
	MODE_LIST_DIRTY,
	MODE_REMOVE_OLD,
	MODE_COMPARE,
	MODE_SIMPLE,
	MODE_UPGRADE_DB
};

void help(char *cmd)
{
	printf(
"\n"
PACKAGE_STRING " - cluster synchronization tool, 2nd generation\n"
"LINBIT Information Technologies GmbH <http://www.linbit.com>\n"
"Copyright (C) 2004, 2005  Clifford Wolf <clifford@clifford.at>\n"
"Copyright (C) 2010  Dennis Schafroth <dennis@schafroth.com>\n"
"Copyright (C) 2010  Johannes Thoma <johannes.thoma@gmx.at>\n"
"\n"
"Version: " CSYNC2_VERSION "\n"
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
"Creating key file:\n"
"	%s -k filename\n"
"\n"
"Csync2 will refuse to do anything when a " ETCDIR "/csync2.lock file is found.\n"
"\n",
		cmd, cmd);
	exit(1);
}

int create_keyfile(const char *filename)
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

static int csync_bind(int ip_version)
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

	s = getaddrinfo(NULL, csync_port, &hints, &result);
	if (s != 0) {
		csync_debug(1, "Cannot prepare local socket, getaddrinfo: %s\n", gai_strerror(s));
		return -1;
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
	return -1;
}

static char program_pid[256];

void csync_openlog() {
  sprintf(program_pid, "csync2(%d)", getpid());
  openlog(program_pid, LOG_ODELAY, LOG_LOCAL0);
}

static int csync_server_bind(int ip_version) 
{
  int listenfd = csync_bind(ip_version);
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
static int csync_server_accept_loop(int nonfork, int listenfd)
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
    int conn = accept(listenfd, &addr.sa, &addrlen);
    if (conn < 0) 
      goto error;

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
	csync_debug(1, "New connection from %s:%s.\n", hbuf, sbuf);
      }
      else {
	//Stupid this is not using csync_debug(..)
	fprintf(stdout, "<%d> New connection from %s:%s.\n",
		csync_server_child_pid, hbuf, sbuf);
	fflush(stdout);
      }
      dup2(conn, 0);
      dup2(conn, 1);
      close(conn);
      return 0;
    }
    close(conn);
  }

 error:
  fprintf(stderr, "Server error: %s\n", strerror(errno));
  return 1;
}

int upgrade_db() 
{
  struct csync_prefix *p;
  csync_debug(1, "Upgrade database.. ");

  for (p = csync_prefix; p; p = p->next) {
      if (p->name && p->path) {
	int length = strlen(p->name) + 3;
	char *prefix = malloc(length);
	prefix[0] = '%';
	strcpy(prefix+1, p->name);
	strcpy(prefix+length-2, "%");
	char *prefix_encoded = strdup(url_encode(prefix));
	const char *path_encoded = url_encode(p->path);

	csync_debug(1, "Replace prefix %s with path %s (%s)", prefix_encoded, p->path, path_encoded);
	SQL("upgrade database",
	    "UPDATE file set filename=replace(filename,'%s', '%s') WHERE filename like '%s%%' ",
	    prefix_encoded, path_encoded, prefix_encoded);
	free(prefix);
	free(prefix_encoded);
      }
  }
  exit(0);
  return 0;
}

int update_format_v1_v2(const char *file, int recursive, int do_it)
{
	char *where_rec = "";
	struct textlist *tl = 0, *t;
	struct stat st;

	if ( recursive ) {
		if ( !strcmp(file, "/") )
		  ASPRINTF(&where_rec, "OR 1=1");
		else
		  ASPRINTF(&where_rec, "UNION ALL SELECT filename from file where filename > '%s/' "
				"and filename < '%s0'",
				url_encode(file), url_encode(file));
	}
	int total = 0, found = 0;
	SQL_BEGIN("Checking for removed files",
			"SELECT filename, checktxt from file where "
			"filename = '%s' %s ORDER BY filename", url_encode(file), where_rec)
	{
	  const char *filename = url_decode(SQL_V(0));
	  const char *checktxt = url_decode(SQL_V(1));
	  const char *db_filename = csync_db_escape(filename);
	  // Differ then add
	  if (strcmp(db_filename,SQL_V(0))) {
	    csync_debug(1, "URL encode %s => DB encode %s ", SQL_V(0),db_filename); 
	    textlist_add2(&tl, filename, checktxt, 0);
	    found++;
	  }
	  total++;

	} SQL_END;
	printf("Found %d files out of %d to upgrade.\n", found, total);
	if (do_it)
	  for (t = tl; t != 0; t = t->next) {
	    SQL("Updating url encoding to db encoding in file",
		"UPDATE file set filename='%s' WHERE filename = '%s'",
		csync_db_escape(t->value), url_encode(t->value));

	    SQL("Updating url encoding to db encoding in dirty",
		"UPDATE dirty set filename='%s' WHERE filename = '%s'",
		csync_db_escape(t->value), url_encode(t->value));

	    total--;
	  }

	textlist_free(tl);

	if ( recursive )
		free(where_rec);
	return 0;
}

int csync_get_checktxt_version(const char *value) {
  if (value && strlen(value) > 2) {
    if (value[1] == '1')
      return 1;
    if (value[1] == '2')
      return 2;
  }
  return 0;
}
const char* csync_nop(const char *value) {
  return value;
}

const char* csync_decode_v1_v2(const char *value) {
  int version = csync_get_checktxt_version(value);
  if (version == 1)
    return url_decode(value);
  else
    return value;
}

extern int cfg_ip_version; 
extern int cfg_db_version; 
extern int cfg_protocol_version; 
int protocol_version;

const char* (*db_decode) (const char *value); 
const char* (*db_encode) (const char *value); 


char **peers = NULL;
char ** parse_peerlist(char *peerlist) {
  if (peerlist == NULL)
    return peers;
  peers = malloc(sizeof(peers[100]));
  int i = 0;
  char *saveptr;
  peers[i] = strtok_r(peerlist, ",", &saveptr);
  while ((peers[++i] = strtok_r(NULL, ",", &saveptr)))
    ;
  peers[++i] = NULL;
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


int main(int argc, char ** argv)
{
	struct textlist *tl = 0, *t;
	int mode = MODE_NONE;
	int mode_test_auto_diff = 0;
	int init_run = 0;
	int init_run_with_removals = 0;
	int init_run_straight = 0;
	int recursive = 0;
	int retval = -1;
	int dry_run = 0;
	int opt, i;
	
	// Default db_decodes (version 1 scheme)
	db_decode = url_decode;
	db_encode = url_encode;

	ringbuffer_init();
	csync_debug_out = stderr;
	
	if ( argc==3 && !strcmp(argv[1], "-k") ) {
		return create_keyfile(argv[2]);
	}

	if (!access(ETCDIR "/csync2.lock", F_OK)) {
		printf("Found " ETCDIR "/csync2.lock.\n");
		return 1;
	}

	int cmd_db_version = 0;
	int cmd_ip_version = 0;
	while ( (opt = getopt(argc, argv, "01246a:W:s:Ftp:G:P:C:K:D:N:HBAIXULlSTMRvhcuoimfxrdZz:")) != -1 ) {

		switch (opt) {
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
				init_run = 1;
				break;
			case 'X':
				init_run_with_removals = 1;
				break;
			case 'U':
				init_run_straight = 1;
				break;
			case 'C':
				cfgname = optarg;
				break;
			case 'K':
				cfgfile = optarg;
				break;
			case 'D':
				dbdir = optarg;
				break;
			case 'N':
				snprintf(myhostname, 256, "%s", optarg);
				break;
			case 'v':
				csync_debug_level++;
				break;
			case 'l':
				csync_syslog = 1;
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
			case 'u':
				if ( mode == MODE_CHECK )
					mode = MODE_CHECK_AND_UPDATE;
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
			  if ( mode == MODE_INETD )
			    mode = MODE_SERVER;
			  else if ( mode == MODE_SERVER )
			    mode = MODE_SINGLE;
			  else if ( mode == MODE_SINGLE )
			    mode = MODE_NOFORK;
			  else {
			    if ( mode != MODE_NONE ) 
			      help(argv[0]);
			    mode = MODE_INETD;
			  }
				break;
			case 'm':
				if ( mode != MODE_NONE ) help(argv[0]);
				mode = MODE_MARK;
				break;
			case 'f':
				if ( mode != MODE_NONE ) help(argv[0]);
				mode = MODE_FORCE;
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
					mode_test_auto_diff = 1;
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
				recursive = 1;
				break;
			case 'd':
				dry_run = 1;
				break;
			case 'Z':
				mode = MODE_UPGRADE_DB;
				break;
			case 'z':
				allow_peer = optarg;
				break;
			default:
				help(argv[0]);
		}
	}

	if ( optind < argc &&
			mode != MODE_HINT && mode != MODE_MARK &&
			mode != MODE_FORCE && mode != MODE_SIMPLE &&
			mode != MODE_UPDATE && mode != MODE_CHECK &&
			mode != MODE_COMPARE &&
			mode != MODE_CHECK_AND_UPDATE &&
			mode != MODE_LIST_SYNC && mode != MODE_TEST_SYNC &&
	                mode != MODE_UPGRADE_DB &&
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
	if ( mode == MODE_INETD && csync_debug_level && !csync_syslog ) {
		csync_syslog = 1;
	}

	if ( *myhostname == 0 ) {
		gethostname(myhostname, 256);
		myhostname[255] = 0;
	}

	for (i=0; myhostname[i]; i++)
		myhostname[i] = tolower(myhostname[i]);
	
	int listenfd;
	if ( mode == MODE_SERVER || mode == MODE_SINGLE || mode == MODE_NOFORK) {
	  listenfd = csync_server_bind(ip_version);
	  if (listenfd == -1) {
	    exit(1);
	  }
	}

	int first = 1;
	int server = (mode == MODE_INETD  || 
		      mode == MODE_SERVER || 
		      mode == MODE_SINGLE || 
		      mode == MODE_NOFORK);
 nofork:
	// init syslog if needed. 
	if (first && csync_syslog && csync_server_child_pid == 0) {
	  csync_openlog();
	}
	// mode keeps its original value, but now checking on server
	if (server && mode != MODE_INETD) {
	  if (csync_server_accept_loop(mode == MODE_SINGLE ||
				       mode == MODE_NOFORK,
				       listenfd)) 
	    return 1; // Parent returns
	}



	// print time (if -t is set)
	csync_printtime();

	/* In inetd (actually any server) mode we need to read the module name from the peer
	 * before we open the config file and database
	 */
	if (server) {
	  char line[4096], *cmd, *para;
	  
	  /* configure conn.c for inetd mode */
	  conn_set(0, 1);
	  
	  if ( !conn_gets(line, 4096) ) 
	    return 0;
	  cmd = strtok(line, "\t \r\n");
	  para = cmd ? strtok(0, "\t \r\n") : 0;
	  
	  if (cmd && !strcasecmp(cmd, "ssl")) {
#ifdef HAVE_LIBGNUTLS
	    conn_printf("OK (activating_ssl).\n");
	    conn_activate_ssl(1);
	    
	    if ( !conn_gets(line, 4096) ) return 0;
	    cmd = strtok(line, "\t \r\n");
	    para = cmd ? strtok(0, "\t \r\n") : 0;
#else
	    conn_printf("This csync2 server is built without SSL support.\n");
	    return 0;
#endif
	  }

	  if (!cmd || strcasecmp(cmd, "config")) {
	    conn_printf("Expecting SSL (optional) and CONFIG as first commands.\n");
	    return 0;
	  }
	  
	  if (para)
	    cfgname = strdup(url_decode(para));
	}
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
				(mode == MODE_INETD ? conn_printf : csync_fatal)
						("Config names are limited to [a-z0-9]+.\n");
				return mode != MODE_INETD;
			}

		ASPRINTF(&file_config, ETCDIR "/csync2_%s.cfg", cfgname);
	}

	csync_debug(2, "Config-File:   %s\n", file_config);
	yyin = fopen(file_config, "r");
	if ( !yyin )
		csync_fatal("Can not open config file `%s': %s\n",
				file_config, strerror(errno));
	yyparse();
	fclose(yyin);

	// Move configuration versions into place, if configured.
	if (cfg_db_version != -1) {
	  if (cmd_db_version) 
	    csync_debug(0, "Command line overrides configuration DB protocol version: %d -> %d\n", cfg_db_version, cmd_db_version);
	  else
	    db_version = cfg_db_version;
	}
	if (db_version == 2) {
	  db_encode = csync_db_escape;
	  db_decode = csync_decode_v1_v2;
	}

	if (cfg_protocol_version != -1)
	  protocol_version = cfg_protocol_version;

	if (cfg_ip_version != -1) {
	  if (cmd_ip_version) 
	    csync_debug(0, "Command line overrides configuration ip protocol version: %d -> %d\n", cfg_ip_version, ip_version);
	  else if (cfg_ip_version == 4)
	    ip_version = AF_INET;
	  else if (cfg_ip_version == 6)
	    ip_version = AF_INET6;
	  else {
	    csync_debug(0, "Unknown IP version: %d\n", cfg_ip_version);
	    exit(1);
	  }
	} 

	
	if (!csync_database)
		csync_database = db_default_database(dbdir, myhostname, cfgname);

	csync_debug(2, "My hostname is %s.\n",   myhostname);
	csync_debug(2, "Database File: %s\n",    csync_database);
	csync_debug(2, "DB Version:    %d\n",    db_version);
	csync_debug(2, "IP Version:    %s\n",    (ip_version == AF_INET6 ? "IPv6" : "IPv4"));

	{
		const struct csync_group *g;
		for (g=csync_group; g; g=g->next)
		  if ( g->myname )
		    break;
		  else
		    csync_fatal("This host (%s) is not a member of any configured group.\n", myhostname);
	}

	csync_db_open(csync_database);

	if (mode == MODE_UPGRADE_DB) {
	  int rc = upgrade_db();
	  exit(rc);
	}

	if (update_format) {
	  if (!strcmp(update_format, "v1-v2")) {
	    int rc = update_format_v1_v2("/", 1, 1);
	    exit(rc);
	  }
	  else {
	    printf("Update format %s unknown\n", update_format);
	    exit(1);
	  }
	}
	for (i=optind; i < argc; i++)
		on_cygwin_lowercase(argv[i]);

	switch (mode) {
		case MODE_SIMPLE:
			if ( argc == optind )
			{
			  csync_check("/", 1, init_run, db_version);
			  csync_update(myhostname, active_peers, 0, 0, 0, dry_run, ip_version, db_version);
			}
			else
			{
				char *realnames[argc-optind];
				for (i=optind; i < argc; i++) {
					realnames[i-optind] = strdup(getrealfn(argv[i]));
					csync_check_usefullness(realnames[i-optind], recursive);
					csync_check(realnames[i-optind], recursive, init_run, db_version);
				}
				csync_update(myhostname, active_peers, (const char**)realnames, argc-optind, recursive, dry_run, ip_version, db_version);
				for (i=optind; i < argc; i++)
					free(realnames[i-optind]);
			}
			break;

		case MODE_HINT:
			for (i=optind; i < argc; i++) {
				char *realname = getrealfn(argv[i]);
				csync_check_usefullness(realname, recursive);
				csync_hint(realname, recursive);
			}
			break;

		case MODE_CHECK:
		case MODE_CHECK_AND_UPDATE:
			if ( argc == optind )
			{
				SQL_BEGIN("Check all hints",
					"SELECT filename, recursive FROM hint")
				{
					textlist_add(&tl, db_decode(SQL_V(0)),
							atoi(SQL_V(1)));
				} SQL_END;

				for (t = tl; t != 0; t = t->next) {
				  csync_check(t->value, t->intvalue, init_run, db_version);
					SQL("Remove processed hint.",
					    "DELETE FROM hint WHERE filename = '%s' "
					    "and recursive = %d",
					    db_encode(t->value), t->intvalue);
				}

				textlist_free(tl);
			}
			else
			{
				for (i=optind; i < argc; i++) {
					char *realname = getrealfn(argv[i]);
					csync_check_usefullness(realname, recursive);
					csync_check(realname, recursive, init_run, db_version);
				}
			}
			if (mode != MODE_CHECK_AND_UPDATE)
				break;

		case MODE_UPDATE:
			if ( argc == optind )
			{
			  csync_update(myhostname, active_peers, 0, 0, 0, dry_run, ip_version,db_version);
			}
			else
			{
				char *realnames[argc-optind];
				for (i=optind; i < argc; i++) {
					realnames[i-optind] = strdup(getrealfn(argv[i]));
					csync_check_usefullness(realnames[i-optind], recursive);
				}
				csync_update(myhostname, active_peers, (const char**)realnames, argc-optind, recursive, dry_run, ip_version, db_version);
				for (i=optind; i < argc; i++)
					free(realnames[i-optind]);
			}
			break;

		case MODE_COMPARE:
			csync_compare_mode = 1;
			for (i=optind; i < argc; i++) {
				char *realname = getrealfn(argv[i]);
				csync_check_usefullness(realname, recursive);
				csync_check(realname, recursive, init_run,db_version);
			}
			break;

		case MODE_INETD:
		case MODE_SERVER:
		case MODE_SINGLE:
		case MODE_NOFORK:
			conn_printf("OK (cmd_finished).\n");
			csync_daemon_session(db_version, protocol_version);
			break;

		case MODE_MARK:
		  for (i=optind; i < argc; i++) {
		    char *realname = getrealfn(argv[i]);
		    csync_check_usefullness(realname, recursive);
		    csync_mark(realname, 0, active_peerlist, "mark");
		    char *db_encoded = strdup(csync_db_escape(realname));
		    
		    if ( recursive ) {
		      char *where_rec = "";
		      
		      if ( !strcmp(realname, "/") )
			ASPRINTF(&where_rec, "or 1=1");
		      else
			ASPRINTF(&where_rec, 
				 "UNION ALL SELECT filename from file"
				 " where filename > '%s/' "
				 " and filename < '%s0'",
				 db_encoded, db_encoded);
		      
		      SQL_BEGIN("Adding dirty entries recursively",
				"SELECT filename FROM file WHERE filename = '%s' %s",
				db_encoded, where_rec)
			{
			  char *filename = strdup(db_decode(SQL_V(0)));
			  csync_mark(filename, 0, active_peerlist, "mark");
			  free(filename);
			} SQL_END;
		      free(where_rec);
		    }
		    free(db_encoded);
		  }
		  break;

		case MODE_FORCE:
			for (i=optind; i < argc; i++) {
				char *realname = getrealfn(argv[i]);
				char *pfname = strdup(prefixencode(realname));
				char *where_rec = "";

				if ( recursive ) {
					if ( !strcmp(realname, "/") )
						ASPRINTF(&where_rec, "or 1=1");
					else
						ASPRINTF(&where_rec, "or (filename > '%s/' "
							"and filename < '%s0')",
							url_encode(realname), url_encode(realname));
				}

				SQL("Mark file as to be forced",
					"UPDATE dirty SET forced = 1 WHERE filename = '%s' %s",
					url_encode(realname), where_rec);

				if ( recursive )
					free(where_rec);
				free(pfname);
			}
			break;

		case MODE_LIST_HINT:
			retval = 2;
			SQL_BEGIN("DB Dump - Hint",
				"SELECT recursive, filename FROM hint ORDER BY filename")
			{
				printf("%s\t%s\n", (char*)SQL_V(0), db_decode(SQL_V(1)));
				retval = -1;
			} SQL_END;
			break;

		case MODE_LIST_FILE:
			retval = 2;
			SQL_BEGIN("DB Dump - File",
				"SELECT checktxt, filename FROM file ORDER BY filename")
			{
				if (csync_find_next(0, db_decode(SQL_V(1)))) {
					printf("%s\t%s\n", db_decode(SQL_V(0)), db_decode(SQL_V(1)));
					retval = -1;
				}
			} SQL_END;
			break;

		case MODE_LIST_SYNC:
			retval = 2;
			SQL_BEGIN("DB Dump - File",
				"SELECT checktxt, filename FROM file ORDER BY filename")
			{
				if ( csync_match_file_host(db_decode(SQL_V(1)), argv[optind], argv[optind+1], 0) ) {
					printf("%s\t%s\n", db_decode(SQL_V(0)), db_decode(SQL_V(1)));
					retval = -1;
				}
			} SQL_END;
			break;

		case MODE_TEST_SYNC: {
			char *realname;
			if (init_run && init_run_with_removals)
				init_run |= 2;
			if (init_run && init_run_straight)
				init_run |= 4;
			switch (argc-optind)
			{
			case 3:
				realname = getrealfn(argv[optind+2]);
				csync_check_usefullness(realname, 0);

				if ( mode_test_auto_diff ) {
					csync_compare_mode = 1;
					retval = csync_diff(argv[optind], argv[optind+1], realname, ip_version);
				} else
				  if ( csync_insynctest(argv[optind], argv[optind+1], init_run, 0, realname, ip_version))
						retval = 2;
				break;
			case 2:
			  if ( csync_insynctest(argv[optind], argv[optind+1], init_run, mode_test_auto_diff, 0, ip_version) )
					retval = 2;
				break;
			case 1:
				realname = getrealfn(argv[optind]);
				csync_check_usefullness(realname, 0);

				if ( mode_test_auto_diff )
					csync_compare_mode = 1;
				if ( csync_insynctest_all(init_run, mode_test_auto_diff, realname, ip_version))
					retval = 2;
				break;
			case 0:
			  if ( csync_insynctest_all(init_run, mode_test_auto_diff, 0, ip_version) )
					retval = 2;
				break;
			}
			break;
		}

		case MODE_LIST_DIRTY:
			retval = 2;
			SQL_BEGIN("DB Dump - Dirty",
				"SELECT forced, myname, peername, filename, operation FROM dirty ORDER BY filename")
			{
			  const char *peername = db_decode(SQL_V(2));
			  const char *filename = db_decode(SQL_V(3));
			  if (csync_find_next(0, filename)) {
			    const char *force_str = SQL_V(0);
			    if (match_peer(active_peers, peername)) {
			      int force = 0;
			      if (force_str) 
				force = atoi(SQL_V(0));
			      printf("%s%s\t%s\t%s\t%s\n", (force ? "F " : "  "), SQL_V(4),
				     db_decode(SQL_V(1)), peername, filename);
			      retval = -1;
			    }
			  }
			} SQL_END;
			break;

		case MODE_REMOVE_OLD:
			if ( active_grouplist )
				csync_fatal("Never run -R with -G!\n");
			csync_remove_old();
			break;
	}

	csync_run_commands();
	csync_db_close();

	if ( csync_server_child_pid ) {
	  csync_debug(1, "Connection closed.\n");
	  if (mode == MODE_NOFORK)
	    goto nofork;
	}

	if ( csync_error_count != 0 || (csync_messages_printed && csync_debug_level) ) {
	  if (csync_error_count > 0)
	    csync_debug(0, "Finished with %d errors.\n", csync_error_count);
	  else
	    csync_debug(0, "Finished succesfully.\n");
	}
	csync_printtotaltime();

	if ( retval >= 0 && csync_error_count == 0 ) 
	  return retval;
	return csync_error_count != 0;
}

