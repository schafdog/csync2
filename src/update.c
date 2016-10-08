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
#include "uidgid.h"
#include <sys/stat.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <string.h>
#include <stdlib.h>
#include <unistd.h>
#include <netdb.h>
#include <fnmatch.h>
#include <stdarg.h>
#include <signal.h>

#include <limits.h>

#define MAX_UID_SIZE  100
#define MAX_GID_SIZE  100

#define OK_MISSING 32
#define DIFF_META 16
#define DIFF_FILE 8
#define DIFF_BOTH (DIFF_FILE | DIFF_META)
#define IDENTICAL 4
#define LINK_LATER 3
#define OK_DRY 2
#define OK_SKIP 1
#define SKIP 1
#define OK     0
#define ERROR -1
#define CONN_CLOSE  -3
#define NOT_REG -4

#define SETOWN  -6
#define SETMOD  -7
#define SETTIME -8
// #define CLEAR_DIRTY
#define ERROR_DIRTY        -11
#define ERROR_OTHER        -12
#define ERROR_PATH_MISSING -13
#define ERROR_HARDLINK     -14

int csync_update_file_settime(int conn, peername_p peername, const char *key_enc,
			      filename_p filename, filename_p filename_enc,
			      const struct stat *st);

operation_t csync_operation(const char *operation)
{
    if (!operation) {
	csync_warn(0, "Called with null operation");
	return OP_UNDEF;
    }
	if (!strcmp(operation, "NEW"))
		return OP_NEW;
	if (!strcmp(operation, "MKDIR"))
		return OP_NEW;
	if (!strcmp(operation, "MKINFO"))
		return OP_NEW;
	if (!strcmp(operation, "MKCHR"))
		return OP_NEW;
	if (!strcmp(operation, "MOVE"))
		return OP_MOVE;
	if (!strcmp(operation, "MV"))
		return OP_MOVE;
	if (!strcmp(operation, "HARDLINK"))
		return OP_HARDLINK;
	if (!strcmp(operation, "RM"))
		return OP_RM;
	if (!strncmp(operation, "MOD",3))
		return OP_MOD;
	if (!strncmp(operation, "MARK",3))
		return OP_MARK;
	csync_warn(0, "Called with unknown operation: %s", operation);
	return OP_UNDEF;
}

const char *csync_operation_str(operation_t op) {
	switch (op) {
	case OP_NEW:
		return "NEW";
	case OP_MOD:
		return "MOD";
	case OP_RM:
		return "RM";
	case OP_HARDLINK:
		return "HARDLINK";
	case OP_MARK:
		return "MARK";
	case OP_MOVE:
		return "MV";
	}
	// UNDEF
	return "?";
}
int read_conn_status_raw(int fd, const char *file, const char *host, char *line, int maxlength)
{
    if ( conn_gets(fd, line, maxlength) ) {
	if ( !strncmp(line, "OK (not_found", 12))
	    return OK_MISSING;
	if ( !strncmp(line, "OK (", 4) )
	    return OK;
	if (!strncmp(line, "IDENT (", 7))
	    return IDENTICAL;
    } else {
	strcpy(line, "ERROR: Read conn status: Connection closed.\n");
	csync_error(0, line);
	return CONN_CLOSE;
    }
    if (strncmp(line, "ERROR (Path not found)", 15) == 0)
	return ERROR_PATH_MISSING;
    if ( file )
	csync_error(0, "While syncing file: %s\n", file);
    else
	file = "<no file>";

    csync_error_count++;
    int rc = !strncmp(line, ERROR_DIRTY_STR, ERROR_DIRTY_LEN) ? ERROR_DIRTY : ERROR_OTHER;
    csync_error(0, "ERROR from %s: %s rc: %d \n", host, line, rc);
    return rc; 
}

int read_conn_status(int fd, const char *file, const char *host)
{
    int maxlength = 4096;
    char line[4096];
    int rc = read_conn_status_raw(fd, file, host, line, maxlength);
    csync_log(LOG_DEBUG, 3, "read_conn_status '%s' %d\n", line, rc);
    return rc;
}

int read_conn_status_allow_missing(int fd, const char *file, const char *host)
{
    int status = read_conn_status(fd, file, host);
    if (status == ERROR_PATH_MISSING)
	return OK;
    return status;
}

int connect_to_host(db_conn_p db, peername_p peername, int ip_version)
{
  int use_ssl = 1;
  struct csync_nossl *t;

  for (t = csync_nossl; t; t=t->next) {
    if ( !fnmatch(t->pattern_from, myhostname, 0) &&
	 !fnmatch(t->pattern_to, peername, 0) ) {
      use_ssl = 0;
      break;
    }
  }

  csync_info(1, "Connecting to host %s (%s) ...\n",
	      peername, use_ssl ? "SSL" : "PLAIN");

  int conn = conn_open(peername, ip_version);
  if (conn < 0 )
      return conn;

  int rc = 0;
  if ( use_ssl ) {
#if HAVE_LIBGNUTLS
      conn_printf(conn, "SSL\n");
      if ((rc = read_conn_status(conn, 0, peername)) < OK) {
	  csync_error(1, "SSL command failed.\n");
	  conn_close(conn);
	  return rc;
      }
      conn_activate_ssl(0, conn, conn);
      conn_check_peer_cert(db, peername, 1);
#else
      csync_error(0, "ERROR: Config request SSL but this csync2 is built without SSL support.\n");
      csync_error_count++;
      return -1;
#endif
  }
  conn_printf(conn, "CONFIG %s\n", url_encode(cfgname));
  if ((rc = read_conn_status(conn, 0, peername)) != OK) {
      csync_error(0, "Config command failed.\n");
      conn_close(conn);
      return rc;
  }

  conn_printf(conn, "DEBUG %d\n", csync_level_debug);
  if ((rc = read_conn_status(conn, 0, peername)) != OK) {
      csync_error(0, "DEBUG command failed.\n");
      conn_close(conn);
      return rc; 
  }
  
  if (active_grouplist) {
    conn_printf(conn, "GROUP %s\n", url_encode(active_grouplist));
    if ((rc = read_conn_status(conn, 0, peername)) != OK) {
      csync_error(0, "GROUP command failed.\n");
      conn_close(conn);
      return rc;
    }
  }
  return conn;
}

static int get_auto_method(peername_p peername, filename_p filename)
{
    const struct csync_group *g = 0;
    const struct csync_group_host *h;

    while ( (g=csync_find_next(g, filename)) ) {
	for (h = g->host; h; h = h->next) {
	    if (!strcmp(h->hostname, peername)) {
		if (g->auto_method == CSYNC_AUTO_METHOD_LEFT && h->on_left_side)
		    return CSYNC_AUTO_METHOD_LEFT_RIGHT_LOST;
		if (g->auto_method == CSYNC_AUTO_METHOD_RIGHT && !h->on_left_side)
		    return CSYNC_AUTO_METHOD_LEFT_RIGHT_LOST;
		return g->auto_method;
	    }
	}
    }
    return CSYNC_AUTO_METHOD_NONE;
}

static int get_master_slave_status(peername_p peername, filename_p filename)
{
	const struct csync_group *g = 0;
	const struct csync_group_host *h;

	while ( (g=csync_find_next(g, filename)) ) {
		if (g->local_slave)
			continue;
		for (h = g->host; h; h = h->next) {
			if (h->slave && !strcmp(h->hostname, peername))
				return 1;
		}
	}

	return 0;
}


int csync_update_file_mv(int conn, peername_p peername, const char *key, filename_p filename, const char *new_name)
{
  conn_printf(conn, "MV %s %s %s\n", url_encode(key),
	      url_encode(prefixencode(filename)),
	      url_encode(prefixencode(new_name)));
  return read_conn_status(conn, filename, peername);
}

void csync_clear_dirty(db_conn_p db, peername_p peername, filename_p filename, int auto_resolve_run)
{
    csync_info(2, "Clear dirty %s:%s (%d)\n", peername, filename, auto_resolve_run);
    db->remove_dirty(db, peername, filename, 0);
    if (auto_resolve_run)
	csync_error_count--;
}

int auto_resolve_error(const char *cmd, peername_p peername, filename_p filename, int rc) {
    csync_error(0, "Auto-resolving failed. Failed to do %s on %s:%s. RC: %d\n", cmd, peername, filename, rc);
    return rc;
}

char * autoresolve_str[] = { "NONE", "FIRST", "YOUNGER", "OLDER", "BIGGER", "SMALLER", "LEFT", "RIGHT", "LEFT_RIGHT_LOST" };

int csync_check_auto_resolve(int conn, peername_p peername, const char *key_enc,
			     const char* filename, filename_p filename_enc,
			     int last_conn_status,
			     int auto_resolve_run, int is_delete)
{

    if (auto_resolve_run || last_conn_status == OK_DRY) {
	return 0;
    }
    if (get_master_slave_status(peername, filename)) {
	csync_info(0, "Auto-resolving conflict: Won 'master/slave' test.\n");
	return 1;
    }

    int auto_method = get_auto_method(peername, filename);
    csync_info(2, "Auto resolve method %s %d for %s:%s ", autoresolve_str[auto_method], auto_method, peername, filename);
    switch (auto_method)
    {
    case CSYNC_AUTO_METHOD_FIRST:
	auto_resolve_run = 1;
	csync_info(1, "Auto-resolving conflict: Won 'first' test.\n");
	break;
	
    case CSYNC_AUTO_METHOD_LEFT:
    case CSYNC_AUTO_METHOD_RIGHT:
	auto_resolve_run = 1;
	csync_info(1, "Auto-resolving conflict: Won 'left/right' test.\n");
	break;
	
    case CSYNC_AUTO_METHOD_LEFT_RIGHT_LOST:
	csync_info(1, "Do not auto-resolve conflict: Lost 'left/right' test.\n");
	break;
	
    case CSYNC_AUTO_METHOD_YOUNGER:
    case CSYNC_AUTO_METHOD_OLDER:
    case CSYNC_AUTO_METHOD_BIGGER:
    case CSYNC_AUTO_METHOD_SMALLER: {
	if (is_delete) {
	    csync_info(1, "Do not auto-resolve conflict by compare: This is a removal.\n");
	    break;
	}
	
	char buffer[1024], *type, *cmd;
	long remotedata, localdata;
	struct stat sbuf;

	if (auto_method == CSYNC_AUTO_METHOD_YOUNGER ||
	    auto_method == CSYNC_AUTO_METHOD_OLDER) {
	    type = "younger/older";
	    cmd = "GETTM";
	} else {
	    type = "bigger/smaller";
	    cmd = "GETSZ";
	}

	conn_printf(conn, "%s %s %s\n", cmd, key_enc, filename_enc);
	int rc = read_conn_status(conn, filename, peername);
	if (rc < OK) {
	    if (rc == CONN_CLOSE)
		return rc;
	    return auto_resolve_error(cmd, peername, filename, rc);
	}

	if ( !conn_gets(conn, buffer, 4096) )
	    return auto_resolve_error(cmd, peername, filename, rc);
	remotedata = atol(buffer);

	if (remotedata == -1)
	    auto_resolve_run = 1;
	{
	    if ( lstat_strict(filename, &sbuf) )
		return auto_resolve_error(cmd, peername, filename, rc);

	    if (auto_method == CSYNC_AUTO_METHOD_YOUNGER ||
		auto_method == CSYNC_AUTO_METHOD_OLDER)
		localdata = sbuf.st_mtime;
	    else
		localdata = sbuf.st_size;
	}
	if (auto_resolve_run || ((localdata > remotedata) ==
				 (auto_method == CSYNC_AUTO_METHOD_YOUNGER ||
				  auto_method == CSYNC_AUTO_METHOD_BIGGER))) {
	    auto_resolve_run = 1;
	    csync_info(1, "Auto-resolving conflict: Won '%s' test.\n", type);
	} else
	    csync_info(1, "Do not auto-resolve conflict: Lost '%s' test.\n", type);
	break;
    }
    }
    if (auto_resolve_run)
	return 1;
    csync_warn(1, "File stays in dirty state after autoresolve. Try again later...\n");
    return 0;
}

int csync_update_file_setown(int conn, peername_p peername, const char *key_enc,
			     filename_p filename, filename_p filename_enc,
			     const struct stat *st, const char *uid, const char *gid)
{
  // Optimize this. The daemon could have done this in the command.
  conn_printf(conn, "SETOWN %s %s - %d %d %s %s\n",
	      key_enc, filename_enc,
	      st->st_uid, st->st_gid, uid, gid);
  return read_conn_status(conn, filename, peername);
}

int csync_update_file_setmod(int conn, peername_p peername, const char *key_enc,
			     filename_p filename, filename_p filename_enc,
			     const struct stat *st)
{
  conn_printf(conn, "SETMOD %s %s %d\n", key_enc, filename_enc, st->st_mode);
  return read_conn_status(conn, filename, peername);
}

int csync_update_file_del(int conn, db_conn_p db,
			  const char *myname, peername_p peername, filename_p filename,
			  const char *digest, int force, int flags)
{
    int auto_resolve_run = 0;
    const char *key = csync_key(peername, filename);
    int dry_run = flags & FLAG_DRY_RUN;
    if ( !key ) {
	csync_info(2, "Skipping deletion/move %s on %s - not in my groups.\n", filename, peername);
	return SKIP;
    }
    const char *key_enc = url_encode(key);
    filename_p filename_enc = url_encode(prefixencode(filename));

    // Run max twice.
    while (1) {
	csync_info(1, "Deleting %s:%s%s\n", peername, filename, auto_resolve_run ? " (autoresolve)" : "");
	if ( force || auto_resolve_run) {
	    if ( dry_run ) {
		csync_info(1, "!D: %-15s %s\n", peername, filename);
		return OK;
	    }
	    conn_printf(conn, "FLUSH %s %s\n", key_enc, filename_enc);
	    if ( read_conn_status_allow_missing(conn, filename, peername))
		return ERROR;
	}
	int i, found_diff = 0;
	const char *chk_local = "---";
	char chk_peer[4096];
	int status;
	conn_printf(conn, "SIG %s %s %s\n",
		    key_enc,
		    url_encode(prefixencode(filename)), "user/group");

	if ((status = read_conn_status(conn, filename, peername))) {
	    if (status == ERROR_PATH_MISSING || status == OK_MISSING) {
		csync_info(1, "%s:%s is already up to date on peer.\n", peername, filename);
		csync_clear_dirty(db, peername, filename, auto_resolve_run);
		return IDENTICAL;
	    }
	    else
		return status;
	}
	if ( !conn_gets_newline(conn, chk_peer, 4096, 1) )
	    return ERROR;
	const char *chk_peer_decoded = url_decode(chk_peer);

	if ((i = csync_cmpchecktxt(chk_peer_decoded,chk_local))) {
	    csync_info(2, "File is different on peer (cktxt char #%d).\n", i);
	    csync_info(2, ">>> PEER:  %s\n>>> LOCAL: %s\n",
			chk_peer_decoded, chk_local);
	    found_diff=1;
	}
	int rs_check_result = csync_rs_check(conn, filename, 0);
	if ( rs_check_result < 0 )
	    return ERROR;
	if ( rs_check_result ) {
	    csync_info(2, "File is different on peer (rsync sig).\n");
	    found_diff=1;
	}
	int rc;
	if ((rc = read_conn_status(conn, filename, peername)))
	    return rc;

	if ( !found_diff ) {
	    csync_info(1, "%s:%s is already up to date on peer. \n", peername, filename);
	    csync_clear_dirty(db, peername, filename, auto_resolve_run);
	    return IDENTICAL;
	}
	if ( dry_run ) {
	    csync_info(1, "?D: %-15s %s\n", peername, filename);
	    return OK_DRY;
	}
	conn_printf(conn, "DEL %s %s \n", key_enc, filename_enc);
	rc = read_conn_status(conn, filename, peername);
	if (rc == ERROR_DIRTY)
	    auto_resolve_run = csync_check_auto_resolve(conn, peername, key_enc, filename, filename_enc, 
							rc, auto_resolve_run, 1);
	if (!auto_resolve_run) {
	    if (rc == OK || rc == IDENTICAL)
		csync_clear_dirty(db, peername, filename, auto_resolve_run);
	    return rc;
	}
	csync_info(1,"Attempting autoresolve on %s:%s", peername, filename);
    }
}

#define REG_TYPE 1
#define DIR_TYPE 2
#define CHR_TYPE 3
#define BLK_TYPE 4
#define FIFO_TYPE 5
#define LINK_TYPE 6
#define SOCK_TYPE 7

int get_file_type(int st_mode) {

  if (S_ISREG(st_mode))
    return REG_TYPE;
  if(S_ISDIR(st_mode))
    return DIR_TYPE;
  if(S_ISCHR(st_mode))
    return CHR_TYPE;
  if(S_ISBLK(st_mode))
    return BLK_TYPE;
  if(S_ISFIFO(st_mode))
    return FIFO_TYPE;
  if(S_ISLNK(st_mode))
    return LINK_TYPE;
  if(S_ISSOCK(st_mode))
    return SOCK_TYPE;
  return -1;
}

/* PRE: all values must have been encoded 
   Only send file stat if present 
 */
void cmd_printf(int conn, const char *cmd, const char *key,
		filename_p filename, const char *secondname,
		const struct stat *st, const char *uid, const char* gid) {
    if (st) {
	conn_printf(conn, "%s %s %s %s %d %d %s %s %d %Ld\n",
		    cmd, key, filename, secondname,
		    st->st_uid, st->st_gid,
		    uid, gid,
		    st->st_mode, (long long) st->st_mtime);
    }
    else {
	conn_printf(conn, "%s %s %s %s\n",
		    cmd, key, filename, secondname);
    }
}


struct update_request {
  int cmd;
  peername_p peername;
  const char *key;
  filename_p filename;
  const char *encoded_filename;
  const char *secondaryfilename;
  struct stat *stat;
  const char *uid;
  const char *gid;
};

/* Assume PATCH command has been sent */
int csync_update_reg_file(int conn, peername_p peername, filename_p filename,
			  int *last_conn_status) {
    if ((*last_conn_status = read_conn_status(conn, filename, peername))) {
	return *last_conn_status;
    }

    if (csync_rs_delta(conn, filename)) {
	int rc = read_conn_status(conn, filename, peername);
	return rc;
    }
    return read_conn_status(conn, filename, peername);
}

int csync_update_file_dir(int conn, peername_p peername, filename_p filename,
			  int *last_conn_status)
{
    *last_conn_status = read_conn_status(conn, filename, peername);
    return *last_conn_status;
}


/* PRE: command SIG have been sent 
   st can be null */
int csync_update_file_sig(int conn, peername_p peername, filename_p filename,
			  const struct stat *st, const char *chk_local, const char *digest, int log_level)
{
    int i = 0;
    char chk_peer[4096] = "---";

    int rc = read_conn_status(conn, filename, peername);
    if (rc < 0 || rc == OK_MISSING)
	return rc;

    if (rc == OK_MISSING || !conn_gets_newline(conn, chk_peer, 4096,1) )
	return ERROR;

    int peer_version = csync_get_checktxt_version(chk_peer);

    int flag = IGNORE_LINK;
    const char *chk_peer_decoded = url_decode(chk_peer);
    // TODO generate chk text that matches remote usage of uid/user and gid/gid
    char *has_user = strstr(chk_peer_decoded, ":user=");
    flag |=  (has_user != NULL ? SET_USER : 0);
    char *has_group = strstr(chk_peer_decoded, ":group=");
    flag |= (has_group != NULL ? SET_GROUP : 0);
/*
  if (st && !S_ISDIR(st->st_mode))
      flag |= IGNORE_MTIME;
*/
    csync_log(LOG_DEBUG, 3, "Flags for gencheck: %d \n", flag);

    if (!chk_local)
	chk_local = csync_genchecktxt_version(st, filename, flag,
					      peer_version);
    if ((i = csync_cmpchecktxt(chk_peer_decoded, chk_local))) {
	csync_info(log_level, "File is different on peer (cktxt char #%d).\n", i);
	csync_info(log_level, ">>> %s:  %s\n>>> %s: %s\n",
		    peername, chk_peer_decoded, "LOCAL", chk_local);
	return rc | DIFF_META;
    }
    return rc;
}

#define HARDLINK_CMD "MKHARDLINK"
#define HARDLINK_CMD_LEN 10
/** Works in two ways: normal and reverse
    Normalize: Given an Identical file with remote, restore all hardlinks to this
    file.

    Reverse: Given an diff file, attempt to find similiar remote file that we
    and use to hardlink with. Retries if fails

    If there are errors, we need to patch these files instead of linking
*/

int csync_update_hardlink(int conn, peername_p peername, const char *key_encoded,
			  filename_p filename, const char *path_enc,
			  const char *newpath,  const char *newpath_enc, int *last_conn_status)
{
    // TODO Check that the target matches the config
    csync_info(1, "Hardlinking %s %s -> %s\n", peername, filename, newpath);
    conn_printf(conn, "%s %s %s %s \n", HARDLINK_CMD, key_encoded, path_enc, newpath_enc);
    if ((*last_conn_status = read_conn_status(conn, filename, peername))) {
    	csync_error(0, "Failed to hard link %s %s %s\n", peername, filename, newpath);
    	if (*last_conn_status == CONN_CLOSE)
    		return *last_conn_status;
    	return ERROR_HARDLINK;
    }
    return OK;
}

int csync_update_file_all_hardlink(int conn,
				   db_conn_p db,
				   peername_p peername,
				   const char *key_encoded,
				   filename_p filename, filename_p filename_enc,
				   struct stat  *st, const char *uid, const char *gid,
				   operation_t operation,
				   const char *checktxt,
				   const char *digest,
				   int is_identical,
				   int *last_conn_status)
{
    textlist_p tl = csync_check_link_move(db, peername, filename, checktxt, operation, digest, st, NULL);
    textlist_p t = tl;
    int found_one = 0;
    int errors = 0;

    int count = 0;
    for (; !found_one && t; t = t->next) {
	const char *other = t->value;
	if (t->intvalue == OP_HARDLINK && other) {
	    const char *key = csync_key(peername, other);
	    if (!key)
		continue;

	    const char *path = filename_enc, *other_enc = url_encode(prefixencode(other));
	    int rc;
	    rc = csync_update_file_sig_rs_diff(conn,
					       peername, db_escape(db, key),
					       other, other_enc,
					       st, uid, gid,
					       NULL, digest, last_conn_status, 2);
	    if (!is_identical) {
		if (rc == IDENTICAL) {
		    // We have a remote file that we can use to "reverse" hardlink with
		    path = other_enc;
		    other_enc = filename_enc;
		    // we onlu need one, if it succed
		    found_one = 1;
		}
		else
		    continue;
	    }
	    if (csync_update_hardlink(conn, peername, key_encoded,
				      filename, path, other, other_enc, last_conn_status) != OK) {
		errors++;
		found_one = 0; // Reset found_one flag
	    }
	}
	count++;
    }

    if (!is_identical) {
	if (found_one)
	    return OK;
	return ERROR_HARDLINK;
    }
    if (errors)
	return ERROR_HARDLINK;
    return OK;
}

int csync_update_file_patch(int conn,
			    const char *key_enc,
			    peername_p peername,
			    filename_p filename,
			    filename_p filename_enc,
			    const struct stat *st,
			    const char *uid,
			    const char *gid,
			    int *last_conn_status)
{
    cmd_printf(conn, "PATCH", key_enc, filename_enc, "-", st, uid, gid);
    int rc = csync_update_reg_file(conn, peername, filename, last_conn_status);
    return rc;
}

int csync_stat(filename_p filename, struct stat *st, char uid[MAX_UID_SIZE], char gid[MAX_GID_SIZE])
{
    st->st_uid = -1;
    st->st_gid = -1;
    st->st_size = 0;
    st->st_mode = 0;
    st->st_size = 0;
    st->st_mtime = 0;
    int rc = lstat_strict(filename, st);
    if (rc != 0)
	return rc;

    if (uid_to_name(st->st_uid, uid, MAX_UID_SIZE, "-")) {
	csync_warn(0, "Failed to lookup uid %d\n", st->st_uid);
    }
    if (gid_to_name(st->st_gid, gid, MAX_GID_SIZE, "-")) {
	csync_warn(0, "Failed to lookup gid %d\n", st->st_gid);
    }
    csync_log(LOG_DEBUG, 3, "uid %s gid %s\n", uid, gid);
    return rc;
}

int csync_update_file_sig_rs_diff(int conn,
				  peername_p peername, const char *key_enc,
				  filename_p filename, filename_p filename_enc,
				  const struct stat *st,
				  const char *uid, const char *gid,
				  const char *chk_local, const char *digest,
				  int *last_conn_status, int log_level)
{
    csync_log(LOG_DEBUG, 3, "csync_update_file_sig_rs_diff %s:%s\n", peername, filename);
    cmd_printf(conn, "SIG", key_enc, filename_enc, "user/group", st, uid, gid);
    int rc = csync_update_file_sig(conn, peername, filename, st, chk_local, digest, log_level);
    if (rc < OK || rc & OK_MISSING)
	return rc;
    csync_log(LOG_DEBUG, 3, "Continue to rs_check %s %d\n", filename, rc);
    int rs_check_result = csync_rs_check(conn, filename, (st ? S_ISREG(st->st_mode): 0) );
    if ( rs_check_result < 0 )
	rc = ERROR;
    if ( rs_check_result > 0) {
	csync_info(2, "File is different on peer (rsync sig).\n");
	rc |= DIFF_FILE;
    }
    int rc_status;
    if ((rc_status = read_conn_status(conn, filename, peername)) < OK) {
	if (rc_status == CONN_CLOSE)
	    return rc_status;
	csync_error(0, "Error while reading status: %d ", rc_status);
    }

    // Only when both file and meta data is same (differs from earlier behavior)
    if (! (rc & DIFF_BOTH) || rc == IDENTICAL) {
	csync_log(LOG_DEBUG, 2, "?S: %-15s %s\n", peername, filename);
	// DS also remove from dirty on dry_run
	return IDENTICAL;
    }
    else {
	char flag = 'F';
	if (rc == DIFF_BOTH)
	    flag = 'B';
	else if (rc & DIFF_META)
	    flag = 'M';
	csync_info(1, "?%c: %-15s %s\n", flag, peername, filename);
    }
    csync_log(LOG_DEBUG, 3, "END csync_update_file_sig_rs_diff %s:%s\n",
		peername, filename);
    return rc;
}


int csync_update_file_move(int conn, db_conn_p db, const char* myname, peername_p peername, const char *key,
			   filename_p filename, const char *other)
{
    /* filename exist here and other does not. The situation should be opposite remote. */
    int rc = csync_update_file_mv(conn, peername, key, other, filename);
    if (rc >= OK) {

    // (actually it should be correct */
    /* csync_skip_action_do_time(peername, key_enc, filename, filename_enc,
       &file_stat);*/

	csync_info(1, "Succes: MV %s %s\n", other, filename);
	//TODO VERIFY
	db->remove_dirty(db, peername, filename, 0); 
	db->remove_dirty(db, peername, other, 0); 
	return rc;
    }
    csync_error(0, "Failed to MV %s: %s %s \n", peername, other, filename);
    return DIFF_FILE;
}

int csync_update_directory(int conn,
			   const char *myname, peername_p peername,
			   const char *dirname, int force, int dry_run, int db_version) {

  struct stat dir_st;
  const char *key = csync_key(peername, dirname);
  if ( !key ) {
    csync_info(4, "Skipping directory update %s on %s - not in my groups.\n", dirname, peername);
    return OK;
  }
  const char *key_enc = url_encode(key);

  int rc = lstat_strict(dirname, &dir_st);
  if (rc != 0) {
      csync_log(LOG_DEBUG, 3, "Silent skipping missing directory %s.\n", dirname);
    return OK;
  }
  if (get_file_type(dir_st.st_mode) == DIR_TYPE) {
    const char *dirname_enc = url_encode(prefixencode(dirname));
    csync_info(2, "Setting directory time %s %Ld.\n", dirname, dir_st.st_mtime);
    rc = csync_update_file_settime(conn, peername, key_enc, dirname, dirname_enc, &dir_st);
    return rc;
  }
  csync_warn(1, "WARN: directory called on non-directory %s.\n", dirname);
  return OK;
}

int csync_update_file_mod(int conn, db_conn_p db,
			  const char *myname, peername_p peername,
			  filename_p filename, operation_t operation, const char *other,
			  const char *checktxt, const char *digest,
			  int force, int dry_run, int db_version)
{
    struct stat st;
    char uid[MAX_UID_SIZE], gid[MAX_GID_SIZE];
    int last_conn_status = 0, auto_resolve_run = 0;
    const char *operation_str = "?";
    const char *key = csync_key(peername, filename);
    if (!key) {
	csync_info(2, "Skipping file update %s on %s - not in my groups.\n",
		    filename, peername);
	return OK;
    }
    if (csync_stat(filename, &st, uid, gid) != 0) {
	if (other) {
	    if (lstat_strict(other, &st) != 0)
		csync_error(0, "ERROR: Cannot stat both files: %s %s.\n",
			    filename, other, operation_str);
	    else
		csync_error(0,
			    "ERROR: Cannot stat file: %s Other present: %s.\n",
			    filename, other, operation_str);
	    /* Split */
	    char dev_str[100];
	    char ino_str[100];
	    sprintf(dev_str, DEV_FORMAT, st.st_dev);
	    sprintf(ino_str, INO_FORMAT, st.st_ino);
	    char *result_other = NULL;
	    db->add_dirty(db, other, force, myname, peername,
			  csync_operation_str(operation), checktxt, dev_str, ino_str, result_other, operation, st.st_mode);
	} else {
	    csync_error(0, "ERROR: Cannot stat %s %s.\n", filename,
			operation_str);
	}
	db->clear_operation(db, myname, peername, filename);
	csync_error_count++;
	return ERROR;
    }

    operation_str = csync_mode_op_str(st.st_mode, operation);
    int not_done = 1;
    const char *key_enc = url_encode(key);
    const char *enc_tmp = url_encode(prefixencode(filename));
    /* Need to live while doing a lot of url_encode. Dont want to delete on every return */
    char filename_enc[strlen(enc_tmp) + 1];
    strcpy(filename_enc, enc_tmp);
    int rc;
    while (not_done) {
	csync_info(1, "Updating (%s) '%s:%s' '%s'\n",
		    operation_str, peername, filename, (other ? other : ""));

	if (lstat_strict(filename, &st) != 0) {
	    csync_error(0, "ERROR: Cant stat %s.\n", filename);
	    csync_error_count++;
	    return ERROR;
	}
	if (force || auto_resolve_run) {
	    if (dry_run) {
		csync_info(1, "!F: %-15s %s\n", peername, filename);
		return OK_DRY;
	    }
	    conn_printf(conn, "FLUSH %s %s\n", key_enc, filename_enc);
	    int rc = read_conn_status(conn, filename, peername);
	    if (rc < 0)
		return rc;
	}
	if (operation == OP_MOVE) {
	    rc = csync_update_file_move(conn, db, myname, peername, key, filename,
					other);
	    if (rc == CONN_CLOSE || rc == OK) {
		if (rc == OK) {
		    csync_clear_dirty(db, peername, filename, auto_resolve_run);
		    csync_clear_dirty(db, peername, other, auto_resolve_run);
		    // return? 
		}
		if (rc == CONN_CLOSE) {
		    csync_error(0, "Connection closed while moving  %s:%s", peername, filename);
		    return rc;
		}
	    }
	}
	int sig_rc = csync_update_file_sig_rs_diff(conn,
						   peername, key_enc, filename,
						   filename_enc, &st, uid, gid,
						   NULL, digest, &last_conn_status, 2);
	rc = sig_rc;
	if (rc >= 0) {
	    rc &=  ~DIFF_BOTH;
	}
	if (dry_run) {
	    if (rc == IDENTICAL) {
		csync_info(1, "clear %s:%s on dry run\n", peername, filename);
		csync_clear_dirty(db, peername, filename, auto_resolve_run);
	    }
	    return rc;
	}

	if (operation == OP_HARDLINK) {
	    csync_log(LOG_DEBUG, 1, "check hardlink OP %s %s %s \n", operation_str,
			filename, other);

	    const char *other_enc = url_encode(prefixencode(other));
	    struct stat st_other;
	    int rc = stat(other, &st_other);
	    if (rc == 0) {
		int rc = csync_update_file_sig_rs_diff(conn,
						       peername, key_enc, other,
						       other_enc, &st, uid, gid,
						       NULL, digest, &last_conn_status, 2);
		if (rc == CONN_CLOSE)
		    return rc;
		if (rc == IDENTICAL)
		    rc = csync_update_hardlink(conn, peername, key_enc, other,
					       other_enc, filename, filename_enc,
					       &last_conn_status);
		else {
		    csync_warn(0, "Remote HARDLINK file (%s) not identical. Need patching.", other);
		    rc = ERROR_HARDLINK;
		}

		if (rc == CONN_CLOSE)
		    return rc;
		if (rc == OK) {
		    csync_clear_dirty(db, peername, filename, auto_resolve_run);
		    return rc;
		}
	    }
	}

	/*
	textlist_p link_move_list = csync_check_link_move(peername,
								filename, checktxt, operation, digest, &st, NULL);
	textlist_p list_ptr = link_move_list;
	*/
	/* Need to do the moves first, otherwise hard link could be between two non-existing files */
	/*
	while (list_ptr) {
	    other = list_ptr->value;
	    if (list_ptr->intvalue == OP_MOVE) {
		csync_log(LOG_DEBUG, 0, "check move: %s %s \n ", filename, other);
		rc = csync_update_file_move(db, myname, peername, key, filename,
					    other);
		if (rc == CONN_CLOSE || rc == OK) {
		    if (rc == OK) {
			csync_clear_dirty(db, peername, filename, auto_resolve_run);
			csync_clear_dirty(db, peername, other, auto_resolve_run);
		    }
		    textlist_free(link_move_list);
		    return rc;
		}
		break;
	    }
	    if (list_ptr)
		list_ptr = list_ptr->next;
	}
	list_ptr = link_move_list;
	while (list_ptr) {
	    other = list_ptr->value;
	    if (list_ptr->intvalue == OP_HARDLINK) {
		csync_log(LOG_DEBUG, 0, "check hardlink: %s %s \n ", filename, other);
		const char *other_enc = url_encode(prefixencode(other));
		rc = csync_update_hardlink(peername, key_enc, other, other_enc,
					   filename, filename_enc, &last_conn_status);
		if (rc == CONN_CLOSE || rc == OK) {
		    if (rc == OK) {
			csync_clear_dirty(db, peername, filename, auto_resolve_run);
			csync_clear_dirty(db, peername, other, auto_resolve_run);
		    }
		    textlist_free(link_move_list);
		    return rc;
		}
		break;
	    }
	    list_ptr = list_ptr->next;
	}
	textlist_free(link_move_list);
	*/
	if (operation == OP_MOVE) {
	    switch (rc) {
	    case OK_MISSING:
	    case DIFF_BOTH:
	    case DIFF_FILE:
		rc = csync_update_file_move(conn, db, myname, peername, key,
					    filename, other);
		if (rc == CONN_CLOSE)
		    return rc;
		if (rc == OK)
		    return rc;
		csync_error(0, "ERROR: move failed: %s %s ", filename, other);
		operation_str = "WAS_MV";
		operation = OP_UNDEF;
		break;
	    case DIFF_META:
		rc = SETOWN;
		//	rc = IDENTICAL;
	    }
	}
	switch (rc) {
	case OK:
	case DIFF_FILE:
	case ERROR_PATH_MISSING:
	case OK_MISSING:
	    break;
	case SETOWN:
	case SETTIME:
	    rc = csync_update_file_settime(conn, peername, key_enc, filename,
					   filename_enc, &st);
	    if (rc == CONN_CLOSE)
		return rc;
	    csync_clear_dirty(db, peername, filename, auto_resolve_run);
	    return rc;
	case ERROR:
	    return rc;
	case IDENTICAL:
	    csync_clear_dirty(db, peername, filename, auto_resolve_run);
	    return rc;
	case OK_DRY:
	    return rc;
	case ERROR_HARDLINK:
	    csync_warn(1, "HARDLINK failed. Continuing with PATCH\n");
	    break;
	default:
	    csync_error(0, "Unhandled return code: %d \n", rc);
	    return rc;
	}
	int link_later = 0;
	if (rc == LINK_LATER)
	    link_later = 1;

	int mode = get_file_type(st.st_mode);

	switch (mode) {
	case REG_TYPE:
	    // Attempt to find remote hardlinks that hare similar to current local file.
	    // So we dont need to copy/patch
	    // If this doenst work we need to patch
	    rc = OK;
/*
	    if (st.st_nlink > 1 && (rc &) {
		// TODO this should not be ness. if the first hardlinked file was patched.
		// Try to find another file that has been updated and link with it (instead of patching again)
		char *chk_local = strdup(
		    csync_genchecktxt_version(&st, filename,
					      SET_USER | SET_GROUP, db_version));
		rc = csync_update_file_all_hardlink(peername, key_enc, filename,
						    filename_enc, &st, uid, gid, operation, chk_local,
						    digest, 0, // Differs
						    &last_conn_status);

		free(chk_local);
		if (rc == CONN_CLOSE)
		    return rc;
		if (rc == OK)
		    return OK;
	    }
*/
	    if (sig_rc & (OK_MISSING|DIFF_FILE))
		rc = csync_update_file_patch(conn, key_enc, peername, filename,
					     filename_enc, &st, uid, gid, &last_conn_status);
	    else
		csync_info(2, "Skipping file patch '%s' (same)", filename);

	    if (rc == CONN_CLOSE)
		return rc;
/*

	    if (rc >= OK && st.st_nlink > 1) {
		char *chk_local = strdup(
		    csync_genchecktxt_version(&st, filename,
					      SET_USER | SET_GROUP, db_version));
		rc = csync_update_file_all_hardlink(peername, key_enc, filename,
						    filename_enc, &st, uid, gid, OP_MOD, chk_local, digest,
						    1, &last_conn_status);
		free(chk_local);
		if (rc == CONN_CLOSE)
		    return rc;
	    }
*/
	    break;
	case DIR_TYPE:
	    cmd_printf(conn, "MKDIR", key_enc, filename_enc, "-", &st, uid, gid);
	    rc = csync_update_file_dir(conn, peername, filename, &last_conn_status);
	    break;
	case CHR_TYPE:
	    conn_printf(conn, "MKCHR %s %s\n", key_enc, filename_enc);
	    rc = read_conn_status(conn, filename, peername);
	    break;
	case BLK_TYPE:
	    conn_printf(conn, "MKBLK %s %s\n", key_enc, filename_enc);
	    rc = read_conn_status(conn, filename, peername);
	    break;
	case FIFO_TYPE:
	    conn_printf(conn, "MKFIFO %s %s\n", key_enc, filename_enc);
	    rc = read_conn_status(conn, filename, peername);
	    break;
	case LINK_TYPE: {
	    char target[PATH_MAX+1];
	    int len = readlink(filename, target, PATH_MAX);
	    if (len > 0) {
		target[len] = 0;
		conn_printf(conn, "MKLINK %s %s %s\n", key_enc, filename_enc,
			    url_encode(prefixencode(target)));
		rc = read_conn_status(conn, filename, peername);
	    } else {
		csync_error(1, "File is a symlink but readlink() failed.\n",
			    st.st_mode);
		rc = ERROR;
	    }
	    break;
	}
	case SOCK_TYPE: {
	    conn_printf(conn, "MKSOCK %s %s\n", key_enc, filename_enc);
	    rc = read_conn_status(conn, filename, peername);
	    break;
	}
	default:
	    csync_error(1, "File type (mode=%o) is not supported.\n",
			st.st_mode);
	    rc = ERROR;
	}
	csync_log(LOG_DEBUG, 2, "before setown/settime/setmod rc %d.\n", rc);
	if (rc < OK && rc != ERROR_DIRTY)
	    return rc;
	if (rc == OK) {
	    if (rc == OK)
		rc = csync_update_file_setown(conn, peername, key_enc, filename,
					      filename_enc, &st, uid, gid);
	    if (rc != OK)
		return rc;
	    if (!S_ISLNK(st.st_mode)) {
		rc = csync_update_file_setmod(conn, peername, key_enc, filename,
					      filename_enc, &st);
		if (rc != OK)
		    return rc;
	    }
	    rc = csync_update_file_settime(conn, peername, key_enc, filename,
					   filename_enc, &st);
	}
	csync_log(LOG_DEBUG, 2, "After setown/settime/setmod rc %d.\n", rc);
	switch (rc) {
	case OK:
	case IDENTICAL:
	    csync_clear_dirty(db, peername, filename, auto_resolve_run);
	    return rc;
	case ERROR_DIRTY:
	    if (auto_resolve_run) {
		csync_log(LOG_DEBUG, 0, "csync_update_file_mod: Still dirty after autoresolve\n");
		return rc; 
	    }
	    auto_resolve_run = csync_check_auto_resolve(conn, peername, key_enc, filename,
							filename_enc, last_conn_status, auto_resolve_run, 0);
	    if (!auto_resolve_run) {
		csync_error_count--;
		return rc;
	    }
	    csync_info(1, "Attempting autoresolve on %s:%s\n", peername, filename);
	    break;
	default:
	    csync_warn(1, "csync_update_file_mod: Unhandled rc: %d\n", rc);
	    return rc;
	}
    }
    csync_fatal(0,"Failed through loop. Should have returned. rc: %d \n", rc);
    return rc;
}

int csync_update_file_settime(int conn, peername_p peername, const char *key_enc,
			      filename_p filename, filename_p filename_enc,
			      const struct stat *st)
{
  if ( !S_ISLNK(st->st_mode) ) {
    conn_printf(conn, "SETTIME %s %s %Ld\n",
		key_enc, filename_enc,
		(long long)st->st_mtime);
    if ( read_conn_status(conn, filename, peername) )
      return ERROR;
  }
  return OK;
}

int compare_files(filename_p filename, const char *pattern, int recursive)
{
  int i;
  const char *slash = "/";
  if (!strcmp(pattern, slash))
    return 1;
  for (i=0; filename[i] && pattern[i]; i++)
    if (filename[i] != pattern[i]) return 0;
  if ( filename[i] == '/' && !pattern[i] && recursive) return 1;
  if ( !filename[i] && !pattern[i]) return 1;
  return 0;
}

void csync_directory_add(textlist_p *directory_list, char *directory) {
  char *pos = strrchr(directory, '/');
  if (pos) {
    pos[0] = 0;
    csync_log(LOG_DEBUG, 3, "Directory %s\n", directory);
    textlist_add_new(directory_list, directory, 0);
  }
}

struct dirty_row {
    char *myname;
    char *peername;
    char *filename;
    char *digest;
    char *checktxt;
    int forced;
    int operation;
    long long *dev;
    long long *inode;
};

int check_dirty_by_peer(textlist_p *p_tl, filename_p filename, const char *op_str, operation_t operation, const char *patlist, 
			filename_p other, const char *checktxt, const char *digest, int forced, int recursive)
{
    int use_this = 0;
    if ( compare_files(filename, patlist, recursive) ) {
	use_this = 1;
	textlist_add5(p_tl, filename, op_str, other, checktxt, digest, forced, operation);
    }
    return use_this;
}

void csync_update_host(db_conn_p db, const char *myname, peername_p peername,
		       const char **patlist, int patnum, 
		       int ip_version, int db_version, int flags)
{
    textlist_p tl = 0, t, next_t;
    textlist_p tl_del = 0, *last_tn=&tl;
    struct stat st;
    tl = db->get_dirty_by_peer_match(db, myname, peername, flags & FLAG_RECURSIVE, patlist, patnum, compare_files);

    /* just return if there are no files to update */
    if ( !tl) {
	return;
    }
    int conn = connect_to_host(db, peername, ip_version);
    if ( conn < 0) {
	csync_error_count++;
	csync_error(0, "ERROR: Connection to remote host `%s' failed.\n", peername);
	csync_error(1, "Host stays in dirty state. "
		    "Try again later...\n");
	return;
    }
    
    conn_printf(conn, "HELLO %s\n", myname);
    if (read_conn_status(conn, 0, peername) ) {
	conn_printf(conn, "BYE\n");
	read_conn_status(conn, 0, peername);
	conn_close(conn);
	return ;
    }
  int rc;
  textlist_p directory_list = 0;
  for (t = tl; t != 0; t = next_t) {
    next_t = t->next;
    if ( lstat_strict(t->value, &st) == 0 && !csync_check_pure(t->value)) {
	rc = csync_update_file_mod(conn, db, myname, peername,
				   t->value, t->operation, t->value3,
				   t->value4, t->value5, t->intvalue, flags & FLAG_DRY_RUN, db_version);
	if (rc == CONN_CLOSE) {
	    csync_error(0, "Connection closed on updating %s\n", t->value);
	    break;
	}
	csync_directory_add(&directory_list, t->value);
	if (t->value3) {
	    csync_directory_add(&directory_list, t->value3);
	}
	if (S_ISDIR(st.st_mode))
	    textlist_add_new(&directory_list, t->value, 0);
	last_tn=&(t->next);
    } else {
	/* File not found */
	/* Reverse order (deepest first when deleting. Otherwise we need recursive deleting in daemon */
	csync_log(LOG_DEBUG, 2, "Dirty (missing) item %s %s %s %d\n", t->value, t->value2, t->value3, t->intvalue, t->operation);
	if (t->operation != OP_RM && t->operation != OP_MARK) {
	    csync_warn(1, "Unable to %s %s:%s. File has disappeared sinc check.\n", csync_operation_str(t->operation), peername, t->value);
	    if (t->value3) {
		csync_mark(db, t->value3, 0, peername, OP_MARK, NULL, NULL, NULL, 0);
		csync_log(LOG_DEBUG, 0, "make other dirty %s\n", t->value3);
	    }
	}
	*last_tn = next_t;
	t->next = tl_del;
	tl_del = t;
    }
  }
  textlist_free(tl);
  for (t = tl_del; t != 0; t = t->next) {
      rc = csync_update_file_del(conn, db, myname, peername,
				 t->value, t->value5, t->intvalue, flags & FLAG_DRY_RUN);
      if (rc == CONN_CLOSE) {
	 csync_error(0, "Connection closed on deleting  %s\n", t->value);
	 break;
      }
      csync_directory_add(&directory_list, t->value);
  }
  textlist_free(tl_del);

  if (! (flags & FLAG_DRY_RUN))
     for (t = directory_list; rc != CONN_CLOSE && t != 0; t = t->next) {
	 rc = csync_update_directory(conn, myname, peername, t->value, t->intvalue, flags & FLAG_DRY_RUN, db_version);
	 if (rc == CONN_CLOSE) {
	     csync_error(0, "Connection closed on setting time on directory %s\n", t->value);
	     break;
	}
     }
  else
      csync_info(2, "Skipping directories due to dry run");
  textlist_free(directory_list);

  conn_printf(conn, "BYE\n");
  read_conn_status(conn, 0, peername);
  conn_close(conn);
}

void csync_sync_host(db_conn_p db, const char *myname, peername_p peername,
		     const char **patlist, int patnum, 
		     int ip_version, int db_version, int flags)
{
    textlist_p tl = 0, t = 0;
    int i, use_this = patnum == 0;
    int dry_run = flags & FLAG_DRY_RUN;
    
    csync_log(LOG_DEBUG, 0, "csync_sync_host\n");
    for (i=0; i< patnum && !use_this; i++) {
	tl = db->non_dirty_files_match(db, patlist[i]);
	if (tl)
	    use_this = 1;
    }
    /* just return if there are no files to update */
    if ( !tl) {
	return;
    }
    int conn = connect_to_host(db, peername, ip_version);
    if (conn < 0) {
	csync_error_count++;
	csync_error(0, "ERROR: Connection to remote host `%s' failed.\n", peername);
	csync_error(1, "Host stays in dirty state. "
		    "Try again later...\n");
	return;
    }

    conn_printf(conn, "HELLO %s\n", myname);
    int rc;
    if ((rc = read_conn_status(conn, 0, peername)) < OK ) {
	conn_printf(conn, "BYE\n");
	read_conn_status(conn, 0, peername);
	conn_close(conn);
	return ;
    }
    char *status = "";
    if (dry_run)
	status = "(DRY RUN)";
  
    for (t = tl; t != 0; t = t->next) {
	filename_p filename = t->value;
	const char *key = csync_key(peername, filename);
	if (!key) {
	    csync_info(2, "Skipping file sync %s on %s - not in my groups.\n",
			filename, peername);
	}
	else {
	    const char *key_enc  = url_encode(key);
	    filename_p filename_enc = url_encode(prefixencode(filename));
	    const char *chk_local = t->value2;
	    const char *digest = t->value3;
	    struct stat st;
	    char uid[MAX_UID_SIZE], gid[MAX_GID_SIZE];
	    int rc_exist = csync_stat(filename, &st, uid, gid);
	    if (!rc_exist) {
		int last_conn_status;
		int rc = csync_update_file_sig_rs_diff(conn, peername, key_enc,
						       filename, filename_enc,
						       &st, uid, gid,
						       chk_local, digest,
						       &last_conn_status, 2);
		if (rc == CONN_CLOSE) {
		    csync_error(0, "Error while sync_host %s:%s. Connection closed", peername, filename);
		    break; 
		}
		csync_info(2, "Check for deletion of local file '%s' not on peer '%s' : status %d\n", filename, peername, rc);
		if (rc >= OK && (rc & OK_MISSING) && !rc_exist ) {
		    csync_info(0, "Deleting local file '%s' not on peer '%s' %s\n",
				filename, peername, status);
		    if (!dry_run) {
			int rc = unlink(filename);
			if (rc)
			    csync_error(0, "ERROR: Failed to delete local file '%s' not on peer '%s' %s\n",
					filename, peername, status);
		    }
		}
	    }
	}
    }
    textlist_free(tl);
    conn_printf(conn, "BYE\n");
    read_conn_status(conn, 0, peername);
    conn_close(conn);
}
/* Dead */

int csync_match(const char*filename, const char *patlist[], int patnum, int recursive)
{
    int i;
    for (i=0; i< patnum; i++)
	if ( compare_files(filename, patlist[i], recursive) ) {
	    return 1;
	}
    return 0;
}

void csync_update(db_conn_p db, const char *myhostname, char *active_peers[],
		  const char ** patlist, int patnum, int ip_version, int db_version, update_func func,
		  int flags)
{
    textlist_p tl = 0, t;
    int i = 0;
    if (flags & FLAG_DO_ALL) {
	if (active_peers)
	    while (active_peers[i]) {
		func(db, myhostname, active_peers[i],
		     patlist, patnum,
		     ip_version, db_version, flags);
		i++;
	    }
	else
	    csync_error(0, "No active peers given. Unable to iterate without");
    }
    else {
	tl = db->get_dirty_hosts(db);
	int found = 1;
	for (t = tl; t != 0; t = t->next) {
	    if (active_peers) {
		int i=0;
		found = 0;
		while (active_peers[i] && !found) {
		    if (!strcmp(active_peers[i], t->value)) {
			found = 1;
			while (active_peers[i]) {
			    active_peers[i] = active_peers[i+1];
			    ++i;
			}
		    }
		    i++;
		}
	    }
	    if (found)
		func(db, myhostname, t->value, patlist, patnum,
		     ip_version, db_version, flags);
	}
	textlist_free(tl);
    }
}

/* emulate the label, should remove */
int finish_close(int conn)
{
  conn_close(conn);
  return 0;
};

int csync_insynctest_file(int conn,
			  const char *myname, peername_p peername, const char *key_enc,
			  filename_p filename, int *last_conn_status)
{
    filename_p filename_enc = url_encode(prefixencode(filename));
    struct stat st;
    char uid[MAX_UID_SIZE], gid[MAX_GID_SIZE];
    int rc_exist = csync_stat(filename, &st, uid, gid);
    int rc = csync_update_file_sig_rs_diff(conn, peername, key_enc,
					   filename, filename_enc,
					   (!rc_exist  ? &st : NULL), uid, gid,
					   NULL, NULL,  last_conn_status, 0);
    if (rc < 0 && rc != ERROR_PATH_MISSING) {
	csync_error(0, "Error while SIG_RS (before TYPE): %d \n", rc);
	return rc; 
    }
    if (!rc_exist && !S_ISREG(st.st_mode))
    {
	return NOT_REG;
    }

    return rc;
}

int csync_diff(db_conn_p db,
	       const char *myname, peername_p peername,
	       filename_p filename, int ip_version)
{
    FILE *p;
    void *old_sigpipe_handler;
    const struct csync_group *g = 0;
    const struct csync_group_host *h;
    int last_conn_status = 0;
    char buffer[512];
    int found = 0;
    while (!found && (g=csync_find_next(g, filename)) ) {
	if ( !g->myname || strcmp(g->myname, myname) )
	    continue;
	for (h = g->host; h; h = h->next)
	    if (!strcmp(h->hostname, peername)) {
		found = 1;
		break;
	    }
    }

    if (!found) {
	csync_warn(0, "Host pair + file not found in configuration.\n");
	csync_error_count++;
	return 0;
    }

    int conn = connect_to_host(db, peername, ip_version);
    if ( conn < 0) {
	csync_error_count++;
	csync_error(0, "ERROR: Connection to remote host `%s' failed.\n", peername);
	return 0;
    }

    conn_printf(conn, "HELLO %s\n", url_encode(myname));
    if ( read_conn_status(conn, 0, peername) )
	return finish_close(conn);
    const char *key_enc  = url_encode(g->key);

    int rc = csync_insynctest_file(conn, myname, peername, key_enc, filename, &last_conn_status);

    if (rc == IDENTICAL) {
	csync_info(1, "Identical files. Skipping diff\n");
	return finish_close(conn);
    }    
    if (rc == NOT_REG) {
  	csync_info(1, "Skipping diff on non-regular file (%s)\n", filename) ;
	return finish_close(conn); 
    }    
    if (rc < 0) {
	csync_info(1, "ERROR: rs_sig '%s' failed with %d. Skipping TYPE\n", filename, rc) ;
	return finish_close(conn);
    }
      
    conn_printf(conn, "TYPE %s %s\n", key_enc, filename);

    if ( read_conn_status(conn, 0, peername) )
	return finish_close(conn);

    /* FIXME
     * verify type of file first!
     * (symlink vs. file vs. dir vs. whatever)
     */

    /* avoid unwanted side effects due to special chars in filenames,
     * pass them in the environment */
    snprintf(buffer,512,"%s:%s",myname,filename);
    setenv("my_label",buffer,1);
    snprintf(buffer,512,"%s:%s",peername,filename);
    setenv("peer_label",buffer,1);
    snprintf(buffer,512,"%s",filename);
    setenv("diff_file",buffer,1);
    /* XXX no error check on setenv
     * (could be insufficient space in environment) */

    snprintf(buffer, 512, "diff -Nus --label \"$peer_label\" - --label \"$my_label\" \"$diff_file\"");
    old_sigpipe_handler = signal(SIGPIPE, SIG_IGN);
    p = popen(buffer, "w");

    int length = 0;
    while ( (rc=conn_read(conn, buffer, 512)) > 0 ) {
	fwrite(buffer, rc, 1, p);
	length += rc;
    }
    if (rc < 0)
	csync_info(0, "Diff %s:%s failed with connection read %s %d", peername, filename, strerror(errno), errno);
    csync_log(LOG_DEBUG, 2, "diff -Nus --label \"%s:%s\" - --label \"%s:%s\" bytes read: %d " , myname, filename, peername, filename, length);
    fclose(p);
    signal(SIGPIPE, old_sigpipe_handler);
    return finish_close(conn);
}

int csync_insynctest_readline(int conn, char **file, char **checktxt)
{
	char inbuf[2048], *tmp;

	if (*file) free(*file);
	if (*checktxt) free(*checktxt);
	*file = *checktxt = 0;

	if ( !conn_gets(conn, inbuf, 2048) ) return 1;
	if ( inbuf[0] != 'v' ) {
		if ( !strncmp(inbuf, "OK (", 4) ) {
		    csync_log(LOG_DEBUG, 2, "End of query results: %s", inbuf);
		    return 1;
		}
		csync_error_count++;
		csync_log(LOG_DEBUG, 0, "ERROR from peer: %s %d", inbuf, conn);
		return 1;
	}

	tmp = strtok(inbuf, "\t");
	if (tmp) *checktxt=strdup(url_decode(tmp));
	else {
		csync_error_count++;
		csync_error(0, "Format error in reply: \\t not found!\n");
		return 1;
	}

	tmp = strtok(0, "\n");
	if (tmp) *file=strdup(url_decode(tmp));
	else {
		csync_error_count++;
		csync_error(0, "Format error in reply: \\n not found!\n");
		return 1;
	}

	csync_info(2, "Fetched tuple from peer: %s [%s]\n", *file, *checktxt);

	return 0;
}

int csync_insynctest(db_conn_p db, const char *myname, peername_p peername,
		     filename_p filename, int ip_version, int flags)
{
    int auto_diff = flags & FLAG_TEST_AUTO_DIFF;
    int recursive = flags & FLAG_RECURSIVE;
    textlist_p diff_list = 0, diff_ent;
    const struct csync_group *g;
    const struct csync_group_host *h;
    char *r_file=0, *r_checktxt=0;
    int remote_eof = 0;
    int ret = 1;

    int found = 0;
    for (g = csync_group; !found && g; g = g->next) {
	if ( !g->myname || strcmp(g->myname, myname) )
	    continue;
	for (h = g->host; h; h = h->next)
	    if (!strcmp(h->hostname, peername)) {
		found = 1;
		break;
	    }
    }

    if (!found) {
	csync_info(0, "Host pair not found in configuration.\n");
	csync_error_count++;
	return 0;
    }

    int conn = connect_to_host(db, peername, ip_version);
    if (conn < 0) {
	csync_error_count++;
	csync_error(0, "ERROR: Connection to remote host `%s' failed.\n", peername);
	return 0;
    }

    conn_printf(conn, "HELLO %s\n", url_encode(myname));
    read_conn_status(conn, 0, peername);
    filename_p filename_enc = (filename ? url_encode(prefixencode(filename)) : "-");
    found = 0; 
    for (g = csync_group; g && !found; g = g->next) {
	if ( !g->myname || strcmp(g->myname, myname) )
	    continue;
	for (h = g->host; h; h = h->next)
	    if (!strcmp(h->hostname, peername)) {
		found = 1;
		break;
	    }
    }
    conn_printf(conn, "LIST %s %s %s %d \n", peername, filename_enc, g->key, recursive);
    int count_diff = 0;
    if ( !remote_eof )
	while ( !csync_insynctest_readline(conn, &r_file, &r_checktxt) ) {
	    if (auto_diff)
		textlist_add(&diff_list, r_file, 0);
	    else {
		textlist_p tl = db->list_file(db, r_file, myname, peername, 0);
		char *chk_local = "---"; 
		if (tl) {
		    chk_local = tl->value;
		}
		int i;
		if ((i = csync_cmpchecktxt(r_checktxt, chk_local))) {
		    csync_info(1, "D\t%s\t%s\t%s\n", myname, peername, r_file);
		    csync_log(LOG_DEBUG, 2, "'%s' is different:\n", filename);
		    csync_log(LOG_DEBUG, 2, ">>> %s %s\n>>> %s %s\n",
				r_checktxt, peername, chk_local, myname);
		    count_diff++;
		}
		else
		    csync_info(1, "S\t%s\t%s\t%s\n", myname, peername, r_file);
		
		textlist_free(tl);
	    }
	    ret=0;
	    if (flags & FLAG_INIT_RUN)
		csync_mark(db, r_file, 0, (flags & FLAG_INIT_RUN_STRAIGHT) ? peername : 0,
			   OP_MOD /* | PEER */, NULL, "NULL", "NULL", 0);
	}

    if (r_file) free(r_file);
    if (r_checktxt) free(r_checktxt);

    conn_printf(conn, "BYE\n");
    read_conn_status(conn, 0, peername);
    conn_close(conn);

    for (diff_ent=diff_list; diff_ent; diff_ent=diff_ent->next)
	csync_diff(db, myname, peername, diff_ent->value, ip_version);
    textlist_free(diff_list);

    return ret;
}

int peer_in(char *active_peers[], const char* peer)
{
    if (!active_peers)
	return 1;
    int index = 0;
    while (active_peers[index]) {
	if (!strcmp(active_peers[index], peer))
	    return 1;
	index++;
    }
    return 0;
}

int csync_insynctest_all(db_conn_p db, filename_p filename, int ip_version, char *active_peers[], int flags)
{
    csync_log(LOG_DEBUG, 3, "csync_insynctest_all: flags %d \n", flags);
    textlist_p myname_list = 0, myname;
    int auto_diff = flags & FLAG_TEST_AUTO_DIFF;
    struct csync_group *g;
    int ret = 1;
    if (auto_diff && filename) {
	int pl_idx;
	struct peer *pl = csync_find_peers(filename, 0);
	for (pl_idx=0; pl && pl[pl_idx].peername; pl_idx++)
	    if (peer_in(active_peers, pl[pl_idx].peername)) {
		csync_diff(db, pl[pl_idx].myname, pl[pl_idx].peername, filename, ip_version);
	    }
	free(pl);
	return ret;
    }
    // No autotest or filename
    csync_log(LOG_DEBUG, 2, "csync_insynctest_all: get all groups \n");
    for (g = csync_group; g; g = g->next)
    {
	if (g->myname) {
	    int found = 0;
	    for (myname=myname_list; myname; myname=myname->next)
		if (!strcmp(g->myname, myname->value)) {
		    found = 1;
		    break;
		};
	    if (!found) {
		csync_log(LOG_DEBUG, 2, "insynctest_all: Adding host %s\n", g->myname);
		textlist_add(&myname_list, g->myname, 0);
	    }
	}
    }
   
    for (myname=myname_list; myname; myname=myname->next) {
	textlist_p peername_list = 0, peername;
	struct csync_group_host *h;
	for (g = csync_group; g; g = g->next) {

	    if (!g->myname) // || strcmp(myname->value, g->myname) )
		continue;
	    for (h=g->host; h; h=h->next) {
		int found = 0;
		for (peername=peername_list; peername; peername=peername->next)
		    if (!strcmp(h->hostname, peername->value)) {
			found = 1;
			break;
		    }
		if (!found) {
		    csync_info(2, "Adding peer: %s\n", h->hostname);
		    textlist_add(&peername_list, h->hostname, 0);
		}
	    }
	}

	for (peername=peername_list; peername; peername=peername->next)
	{
	    csync_info(2 ,"Check peername \n", myname->value, peername->value);
	    if (peer_in(active_peers, peername->value))
	    {
		csync_info(2, "Running in-sync check for %s <-> %s for file %s.\n",
			    myname->value, peername->value, filename);
		if ( !csync_insynctest(db, myname->value, peername->value,
				       filename, ip_version, flags) ) 
		    ret=0;
	    }
	}
	textlist_free(peername_list);
    }
    textlist_free(myname_list);

    return ret;
}

int filter_missing_dirty(filename_p filename, const char *localname, peername_p peername)
{
    const struct csync_group *g = 0;
    const struct csync_group_host *h;
    int found = 0;
    while (!found && (g=csync_find_next(g, filename)) != 0) {
	if (!strcmp(g->myname, localname))
	    for (h = g->host; h; h = h->next) {
		if (!strcmp(h->hostname, peername)) {
		    found = 1;
		    break;
		}
	    }
    }
    return found;
}

int filter_missing_file(filename_p filename)
{
    return csync_find_next(0, filename) != NULL;

};

void csync_remove_old(db_conn_p db, filename_p pattern)
{
    csync_log(LOG_DEBUG, 1,"remove_old: dirty\n");
    textlist_p tl = 0, t;
    tl = db->find_dirty(db, filter_missing_dirty);
    for (t = tl; t != 0; t = t->next) {
	filename_p filename = t->value;
	peername_p peername = t->value2;
	csync_info(1, "Removing %s (%s) from dirty db.\n", filename, peername);
	db->remove_dirty(db, peername, filename, 0);
    }
    textlist_free(tl);
    csync_log(LOG_DEBUG, 1,"remove_old: file\n");
    tl = 0;
    tl = db->find_file(db, pattern, filter_missing_file); 
    for (t = tl; t != 0; t = t->next) {
	csync_info(1, "Removing %s from file db.\n", t->value);
	db->remove_file(db, t->value, 0);
    }
    textlist_free(tl);
    csync_log(LOG_DEBUG, 1,"remove_old: end\n");
};
