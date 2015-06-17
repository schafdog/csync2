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

#define MAX_UID_SIZE  100
#define MAX_GID_SIZE  100

#define DIFF_META 16
#define DIFF 8
#define DIFF_BOTH (DIFF & DIFF_META)
#define IDENTICAL 4
#define LINK_LATER 3
#define OK_DRY 2
#define OK_SKIP 1
#define SKIP 1
#define OK     0
#define ERROR -1
#define MAYBE_AUTO_RESOLVE  -2
#define CONN_CLOSE  -3

#define SETOWN  -6
#define SETMOD  -7
#define SETTIME -8
// #define CLEAR_DIRTY
#define ERROR_DIRTY        -11
#define ERROR_OTHER        -12
#define ERROR_PATH_MISSING -13
#define ERROR_HARDLINK     -14




int csync_update_file_settime(const char *peername, const char *key_enc,
			      const char *filename, const char *filename_enc,
			      const struct stat *st);


static int connection_closed_error = 1;

int csync_operation(const char *operation)
{
	if (!operation)
		return OP_UNDEF;
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
	return OP_UNDEF;
}


int read_conn_status(const char *file, const char *host)
{
  char line[4096];
  if ( conn_gets(line, 4096) ) {
    if ( !strncmp(line, "OK (", 4) )
      return OK;
    if (!strncmp(line, "IDENT (", 7))
      return IDENTICAL;
  } else {
    connection_closed_error = 1;
    strcpy(line, "ERROR: Read conn status: Connection closed.\n");
    csync_debug(0, line);
    return CONN_CLOSE;
  }
  if (strncmp(line, "ERROR (Path not found)", 15) == 0)
    return ERROR_PATH_MISSING;
  if ( file )
    csync_debug(0, "While syncing file: %s\n", file);
  else
    file = "<no file>";
  csync_debug(0, "ERROR from %s: %s\n", host, line);
  csync_error_count++;
  return !strcmp(line, "File is also marked dirty here!") ? ERROR_DIRTY : ERROR_OTHER;
}

int read_conn_status_allow_missing(const char *file, const char *host)
{
  int status = read_conn_status(file, host);
  if (status == ERROR_PATH_MISSING)
    return 0;
  return status;
}

int connect_to_host(const char *peername, int ip_version)
{
  int use_ssl = 1;
  struct csync_nossl *t;

  connection_closed_error = 0;

  for (t = csync_nossl; t; t=t->next) {
    if ( !fnmatch(t->pattern_from, myhostname, 0) &&
	 !fnmatch(t->pattern_to, peername, 0) ) {
      use_ssl = 0;
      break;
    }
  }

  csync_debug(1, "Connecting to host %s (%s) ...\n",
	      peername, use_ssl ? "SSL" : "PLAIN");

  if ( conn_open(peername, ip_version) ) return -1;

  if ( use_ssl ) {
#if HAVE_LIBGNUTLS
    conn_printf("SSL\n");
    if ( read_conn_status(0, peername) < OK) {
      csync_debug(1, "SSL command failed.\n");
      conn_close();
      return -1;
    }
    conn_activate_ssl(0);
    conn_check_peer_cert(peername, 1);
#else
    csync_debug(0, "ERROR: Config request SSL but this csync2 is built without SSL support.\n");
    csync_error_count++;
    return -1;
#endif
  }

  conn_printf("CONFIG %s\n", url_encode(cfgname));
  if ( read_conn_status(0, peername) != OK) {
    csync_debug(1, "Config command failed.\n");
    conn_close();
    return -1;
  }

  if (active_grouplist) {
    conn_printf("GROUP %s\n", url_encode(active_grouplist));
    if ( read_conn_status(0, peername) != OK) {
      csync_debug(1, "Group command failed.\n");
      conn_close();
      return -1;
    }
  }

  return 0;
}

static int get_auto_method(const char *peername, const char *filename)
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

static int get_master_slave_status(const char *peername, const char *filename)
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


int csync_update_file_mv(const char *peername, const char *key, const char *filename, const char *new_name)
{
  conn_printf("MV %s %s %s\n", url_encode(key),
	      url_encode(prefixencode(filename)),
	      url_encode(prefixencode(new_name)));
  return read_conn_status(filename, peername);
}

void csync_clear_dirty(const char *peername, const char *filename, int auto_resolve_run)
{
  SQL("Remove dirty-file entry.",
      "DELETE FROM dirty WHERE filename = '%s' "
      "AND peername = '%s'", db_encode(filename),
      db_encode(peername));

  if (auto_resolve_run)
    csync_error_count--;
}

int auto_resolve_error() {
  csync_debug(0, "ERROR: Auto-resolving failed. Giving up.\n");
  csync_debug(1, "File stays in dirty state. Try again later...\n");
  return 0;
}

int csync_check_auto_resolve(const char *peername, const char *key_enc,
			     const char* filename, const char *filename_enc,
			     int last_conn_status,
			     int auto_resolve_run, int is_delete)
{
  if (auto_resolve_run || last_conn_status != 2) {
    return 0;
  }
  if (get_master_slave_status(peername, filename)) {
    csync_debug(0, "Auto-resolving conflict: Won 'master/slave' test.\n");
    return 1;
  }

  int auto_method = get_auto_method(peername, filename);
  switch (auto_method)
    {
    case CSYNC_AUTO_METHOD_FIRST:
      auto_resolve_run = 1;
      csync_debug(0, "Auto-resolving conflict: Won 'first' test.\n");
      break;
	
    case CSYNC_AUTO_METHOD_LEFT:
    case CSYNC_AUTO_METHOD_RIGHT:
      auto_resolve_run = 1;
      csync_debug(0, "Auto-resolving conflict: Won 'left/right' test.\n");
      break;
	
    case CSYNC_AUTO_METHOD_LEFT_RIGHT_LOST:
      csync_debug(0, "Do not auto-resolve conflict: Lost 'left/right' test.\n");
      break;
	
    case CSYNC_AUTO_METHOD_YOUNGER:
    case CSYNC_AUTO_METHOD_OLDER:
    case CSYNC_AUTO_METHOD_BIGGER:
    case CSYNC_AUTO_METHOD_SMALLER:
      {
	if (is_delete) {
	  csync_debug(0, "Do not auto-resolve conflict by compare: This is a removal.\n");
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

	conn_printf("%s %s %s\n", cmd, key_enc, filename_enc);
	int rc = read_conn_status(filename, peername);
	if (rc < OK) {
	  if (rc == CONN_CLOSE)
	    return rc;
	  return auto_resolve_error();
	}

	if ( !conn_gets(buffer, 4096) )
	  return auto_resolve_error();
	remotedata = atol(buffer);

	if (remotedata == -1)
	  auto_resolve_run = 1;
	{
	  if ( lstat_strict(filename, &sbuf) )
	     return auto_resolve_error();

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
	  csync_debug(0, "Auto-resolving conflict: Won '%s' test.\n", type);
	} else
	  csync_debug(0, "Do not auto-resolve conflict: Lost '%s' test.\n", type);
	break;
      }
    }
  if (auto_resolve_run)
    return 1;
  csync_debug(1, "File stays in dirty state. Try again later...\n");
  return 0;
}

int csync_check_auto_resolve2(const char *peername, const char* filename, int last_conn_status, int auto_resolve_run, int is_delete) {
  int force = 0;
  if (!auto_resolve_run && last_conn_status == 2)
    {
      if (get_master_slave_status(peername, filename)) {
	csync_debug(0, "Auto-resolving conflict: Won 'master/slave' test.\n");
	auto_resolve_run = 1;
      } else {
	int auto_method = get_auto_method(peername, filename);
	
	switch (auto_method)
	  {
	  case CSYNC_AUTO_METHOD_FIRST:
	    auto_resolve_run = 1;
	    csync_debug(0, "Auto-resolving conflict: Won 'first' test.\n");
	    break;

	  case CSYNC_AUTO_METHOD_LEFT:
	  case CSYNC_AUTO_METHOD_RIGHT:
	    auto_resolve_run = 1;
	    csync_debug(0, "Auto-resolving conflict: Won 'left/right' test.\n");
	    break;

	  case CSYNC_AUTO_METHOD_LEFT_RIGHT_LOST:
	    csync_debug(0, "Do not auto-resolve conflict: Lost 'left/right' test.\n");
	    break;

	  case CSYNC_AUTO_METHOD_YOUNGER:
	  case CSYNC_AUTO_METHOD_OLDER:
	  case CSYNC_AUTO_METHOD_BIGGER:
	  case CSYNC_AUTO_METHOD_SMALLER:
	    csync_debug(0, "Do not auto-resolve conflict: This is a removal.\n");
	    break;
	  }
      }

      if (auto_resolve_run) {
	force = 1;
      }
    }
  return force;
}

int csync_update_file_setown(const char *peername, const char *key_enc,
			     const char *filename, const char *filename_enc,
			     const struct stat *st, const char *uid, const char *gid)
{
  // Optimize this. The daemon could have done this in the command.
  conn_printf("SETOWN %s %s - %d %d %s %s\n",
	      key_enc, filename_enc,
	      st->st_uid, st->st_gid, uid, gid);
  return read_conn_status(filename, peername);

}

int csync_update_file_setmod(const char *peername, const char *key_enc,
			     const char *filename, const char *filename_enc,
			     const struct stat *st)
{
  conn_printf("SETMOD %s %s %d\n", key_enc, filename_enc, st->st_mode);
  return read_conn_status(filename, peername);
}

int csync_next_step(int rc, int auto_run, const char *myname, const char *peername,
		    const char *key_enc,
		    const char *filename, const char *filename_enc,
		    const struct stat *st, const char *uid, const char *gid,
		    const char *operation, int force, int dry_run)
{
  if (dry_run)
    return 1;
  if (auto_run)
    return 1;

  switch (rc) {
  case SETOWN:
	rc = csync_update_file_setown(peername, key_enc, filename, filename_enc, st, uid, gid);
  case SETMOD:
    rc = csync_update_file_setmod(peername, key_enc, filename, filename_enc, st);
  case SETTIME:
    rc = csync_update_file_settime(peername, key_enc,
				   filename, filename_enc, st);
  case IDENTICAL:
  case OK:
    csync_clear_dirty(peername, filename, auto_run);
    break;
  case MAYBE_AUTO_RESOLVE:
    // call autoresolve
    ;
  }
  return rc;
}


int csync_update_file_del(const char *myname, const char *peername,
			  const char *filename,
			  const char *operation, const char *digest, int force, int dry_run)
{
  int last_conn_status = 0, auto_resolve_run = 0;
  const char *key = csync_key(peername, filename);

  if ( !key ) {
    csync_debug(2, "Skipping deletion/move %s on %s - not in my groups.\n", filename, peername);
    return SKIP;
  }
  const char *key_enc = url_encode(key);
  const char *filename_enc = url_encode(prefixencode(filename));

  while (1) {
    csync_debug(1, "Deleting %s:%s\n", peername, filename);
    if ( force ) {
      if ( dry_run ) {
	csync_debug(1, "!D: %-15s %s\n", peername, filename);
	return OK;
      }
      conn_printf("FLUSH %s %s\n", key_enc, filename_enc);
      if ( read_conn_status_allow_missing(filename, peername))
	return ERROR;
    }
    int i, found_diff = 0;
    const char *chk_local = "---";
    char chk_peer[4096];
    int status;
    conn_printf("SIG %s %s %s\n",
		key_enc,
		url_encode(prefixencode(filename)), "user/group");

    if ((status = read_conn_status(filename, peername)) ) {
      if (status == ERROR_PATH_MISSING) {
	csync_debug(1, "%s:%s is already up to date on peer.\n", peername, filename);
	csync_clear_dirty(peername, filename, auto_resolve_run);
	return IDENTICAL;
      }
      else
	return status;
    }
    if ( !conn_gets_newline(chk_peer, 4096, 1) )
      return ERROR;
    const char *chk_peer_decoded = url_decode(chk_peer);

    if ((i = csync_cmpchecktxt(chk_peer_decoded,chk_local))) {
      csync_debug(2, "File is different on peer (cktxt char #%d).\n", i);
      csync_debug(2, ">>> PEER:  %s\n>>> LOCAL: %s\n",
		  chk_peer_decoded, chk_local);
      found_diff=1;
    }
    int rs_check_result = csync_rs_check(filename, 0);
    if ( rs_check_result < 0 )
      return ERROR;
    if ( rs_check_result ) {
      csync_debug(2, "File is different on peer (rsync sig).\n");
      found_diff=1;
    }
    if ( read_conn_status(filename, peername) )
      return ERROR;

    if ( !found_diff ) {
      csync_debug(1, "%s:%s is already up to date on peer. \n", peername, filename);
      csync_clear_dirty(peername, filename, auto_resolve_run);
      return IDENTICAL;
    }
    if ( dry_run ) {
      csync_debug(1, "?D: %-15s %s\n", peername, filename);
      return OK_DRY;
    }
    int skip_delete = 0;
    int rc;
    conn_printf("DEL %s %s \n", key_enc, filename_enc);
    rc = read_conn_status(filename, peername);
    if (rc != OK)
      auto_resolve_run = csync_check_auto_resolve2(peername, filename,
						   rc, auto_resolve_run, 1);
    if (!auto_resolve_run) {
      if (rc == OK || rc == IDENTICAL)
	csync_clear_dirty(peername, filename, auto_resolve_run);
      return rc;
    }
    csync_debug(1,"Attempting autoresolve on %s:%s", peername, filename);
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

/* PRE: all values must have been encoded */
void cmd_printf(const char *cmd, const char *key,
		const char *filename, const char *secondname,
		const struct stat *st, const char *uid, const char* gid) {
  conn_printf("%s %s %s %s %d %d %s %s %d %Ld\n",
	      cmd, key, filename, secondname,
	      st->st_uid, st->st_gid,
	      uid, gid,
	      st->st_mode, (long long) st->st_mtime);
}


struct update_request {
  int cmd;
  const char *peername;
  const char *key;
  const char *filename;
  const char *encoded_filename;
  const char *secondaryfilename;
  struct stat *stat;
  const char *uid;
  const char *gid;
};

/* Assume PATCH command has been sent */
int csync_update_reg_file(const char *peername, const char *filename,
			  int *last_conn_status) {
  if ((*last_conn_status = read_conn_status(filename, peername)))
    return MAYBE_AUTO_RESOLVE;
  if (csync_rs_delta(filename)) {
    read_conn_status(filename, peername);
    return ERROR;
  }
  return read_conn_status(filename, peername);
}

int csync_update_file_dir(const char *peername, const char *filename,
			  int *last_conn_status)
{
  if ( (*last_conn_status = read_conn_status(filename, peername)) < OK)
    return MAYBE_AUTO_RESOLVE;
  return *last_conn_status;
}


/* PRE: command SIG have been sent */
int csync_update_file_sig(const char *peername, const char *filename,
			  const struct stat *st, const char *chk_local, int log_level)
{
  int i = 0;
  char chk_peer[4096];

  if ( read_conn_status(filename, peername) )
    return ERROR;

  if ( !conn_gets_newline(chk_peer, 4096,1) )
    return ERROR;

  int peer_version = csync_get_checktxt_version(chk_peer);

  int flag = IGNORE_LINK;
  // DS We should prob. only ignore MTIME for regular files if at all.
  const char *chk_peer_decoded = url_decode(chk_peer);
  //TODO generate chk text that matches remote usage of uid/user and gid/gid
  char *has_user = strstr(chk_peer_decoded, ":user=");
  flag |=  (has_user != NULL ? SET_USER : 0);
  char *has_group = strstr(chk_peer_decoded, ":group=");
  flag |= (has_group != NULL ? SET_GROUP : 0);
/*
  if (!S_ISDIR(st->st_mode))
      flag |= IGNORE_MTIME;
*/
  csync_debug(3, "Flags for gencheck: %d \n", flag);
  if (!chk_local)
    chk_local = csync_genchecktxt_version(st, filename, flag,
					  peer_version);
  if ((i = csync_cmpchecktxt(chk_peer_decoded, chk_local))) {
     csync_debug(log_level, "File is different on peer (cktxt char #%d).\n", i);
     csync_debug(log_level, ">>> PEER:  %s\n>>> LOCAL: %s\n",
		 chk_peer_decoded, chk_local);
     return DIFF_META;
  }
  return OK;
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

int csync_update_hardlink(const char *peername, const char *key_encoded,
			  const char *filename, const char *path_enc,
			  const char *newpath,  const char *newpath_enc, int *last_conn_status)
{
    // TODO Check that the target matches the config
    csync_debug(1, "Hardlinking %s %s -> %s\n", peername, filename, newpath);
    conn_printf("%s %s %s %s \n", HARDLINK_CMD, key_encoded, path_enc, newpath_enc);
    if ((*last_conn_status = read_conn_status(filename, peername))) {
	csync_debug(0, "Failed to hard link %s %s\n", filename, newpath);
	if (*last_conn_status == CONN_CLOSE) 
	   return *last_conn_status; 
	return ERROR_HARDLINK;
    }
    return OK;
}

int csync_update_file_all_hardlink(const char *peername,
			       const char *key_encoded,
			       const char *filename,
			       const char *filename_enc,
			       struct stat  *st,
			       const char *uid,
			       const char *gid,
				   int operation,
			       const char *checktxt,
			       const char *digest,
			       int is_identical,
			       int *last_conn_status)
{

  struct textlist *tl = csync_check_link_move(peername, filename, checktxt, operation, digest, st, NULL);
  struct textlist *t = tl;
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
      rc = csync_update_file_sig_rs_diff(peername, db_encode(key),
					 other, other_enc,
					 st, uid, gid,
					 NULL, last_conn_status, 2);
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
      if (csync_update_hardlink(peername, key_encoded,
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

int csync_update_file_patch(const char *key_enc,
		     const char *peername,
		     const char *filename,
		     const char *filename_enc,
		     const struct stat *st,
		     const char *uid,
		     const char *gid,
		     int *last_conn_status)
{
  cmd_printf("PATCH", key_enc, filename_enc, "-", st, uid, gid);
  int rc = csync_update_reg_file(peername, filename, last_conn_status);
  return rc;
}

int csync_stat(const char *filename, struct stat *st, char uid[MAX_UID_SIZE], char gid[MAX_GID_SIZE])
{
   int rc = lstat_strict(filename, st);
   if (rc != 0)
      return rc;

   if (uid_to_name(st->st_uid, uid, MAX_UID_SIZE, "-")) {
      csync_debug(0, "Failed to lookup uid %d\n", st->st_uid);
   }
   if (gid_to_name(st->st_gid, gid, MAX_GID_SIZE, "-")) {
      csync_debug(0, "Failed to lookup gid %d\n", st->st_gid);
   }
   csync_debug(3, "uid %s gid %s\n", uid, gid);
   return rc;
}

int csync_update_file_sig_rs_diff(const char *peername, const char *key_enc,
				  const char *filename, const char *filename_enc,
				  const struct stat *st,
				  const char *uid, const char *gid,
				  const char *chk_local,
				  int *last_conn_status, int log_level)
{
  int found_diff_meta = 0, found_diff = 0;
  cmd_printf("SIG", key_enc, filename_enc, "user/group", st, uid, gid);
  int rc = csync_update_file_sig(peername, filename, st, chk_local, log_level);
  if (rc == DIFF_META)
    found_diff_meta = DIFF_META;

  if (rc != OK && rc != DIFF_META)
    return rc;

  int rs_check_result = csync_rs_check(filename, S_ISREG(st->st_mode));
  if ( rs_check_result < 0 )
    rc = ERROR;
  if ( rs_check_result > 0) {
    csync_debug(2, "File is different on peer (rsync sig).\n");
    found_diff = DIFF;
    rc = OK;
  }
  if ( read_conn_status(filename, peername) )
    rc = ERROR;

  // Only when both file and meta data is same (differs from earlier behavior)
  if ( !found_diff && !found_diff_meta) {
    csync_debug(2, "?S: %-15s %s\n", peername, filename);
    // DS also remove from dirty on dry_run
    return IDENTICAL;
  }
  else {
    if (found_diff_meta) {
      if (csync_debug_level >= 10) {
	//csync_cmpchecktxt_component(l_checktxt, r_checktxt);
	//csync_debug(0, "\t%s\t%s\t%s\n", myname, peername, l_file);
      }
      else
	csync_debug(1, "?M: %-15s %s\n", peername, filename);
    }
  }
  return found_diff | found_diff_meta;
}


int csync_update_file_move(const char* myname, const char *peername, const char *key, const char *filename, const char *other)
{
    /* filename exist here and other does not. The situation should be opposite remote. */
    int rc = csync_update_file_mv(peername, key, other, filename);
    if (rc >= OK) {

    // (actually it should be correct */
    /* csync_skip_action_do_time(peername, key_enc, filename, filename_enc,
       &file_stat);*/

	csync_debug(1, "Succes: MV %s %s\n", other, filename);
	//TODO VERIFY
	SQL("Delete moved file from dirty",
	    "DELETE FROM dirty WHERE (filename = '%s' OR filename = '%s') AND peername = '%s'",
	    db_encode(filename), db_encode(other), db_encode(peername));
	return rc;
    }
    csync_debug(0, "Failed to MV %s %s \n", other, filename);
    return DIFF;
}

int csync_update_directory(const char *myname, const char *peername,
			   const char *dirname, int force, int dry_run, int db_version) {

  struct stat dir_st;
  const char *key = csync_key(peername, dirname);
  if ( !key ) {
    csync_debug(4, "Skipping directory update %s on %s - not in my groups.\n", dirname, peername);
    return OK;
  }
  const char *key_enc = db_encode(key);

  int rc = lstat_strict(dirname, &dir_st);
  if (rc != 0) {
    csync_debug(3, "Silent skipping missing directory %s.\n", dirname);
    return OK;
  }
  if (get_file_type(dir_st.st_mode) == DIR_TYPE) {
    const char *dirname_enc = url_encode(prefixencode(dirname));
    csync_debug(3, "Setting directory time %s %Ld.\n", dirname, dir_st.st_mtime);
    rc = csync_update_file_settime(peername, key_enc, dirname, dirname_enc, &dir_st);
    return rc;
  }
  csync_debug(1, "WARN: directory called on non-directory %s.\n", dirname);
  return OK;
}

int csync_update_file_mod(const char *myname, const char *peername,
		const char *filename, const char *operation_str, const char *other,
		const char *checktxt, const char *digest, int force, int dry_run,
		int db_version) {
	struct stat st;
	char uid[MAX_UID_SIZE], gid[MAX_GID_SIZE];
	int last_conn_status = 0, auto_resolve_run = 0, found_diff = 0,
			found_diff_meta = 0;

	int operation = csync_operation(operation_str);
	const char *key = csync_key(peername, filename);
	if (!key) {
		csync_debug(2, "Skipping file update %s on %s - not in my groups.\n",
				filename, peername);
		return OK;
	}
	if (csync_stat(filename, &st, uid, gid) != 0) {
		if (other) {
			if (lstat_strict(other, &st) != 0)
				csync_debug(0, "ERROR: Cannot stat both files: %s %s.\n",
						filename, other, operation_str);
			else
				csync_debug(0,
						"ERROR: Cannot stat file: %s Other present: %s.\n",
						filename, other, operation_str);

			SQL("Split operation",
					"insert into dirty (myname, peername, filename) values ('%s', '%s', '%s')",
					db_encode(myname), db_encode(peername), db_encode(other));
		} else {
			csync_debug(0, "ERROR: Cannot stat %s %s.\n", filename,
					operation_str);
		}
		SQL("Clear operation",
				"UPDATE dirty set operation = '-' where myname = '%s' and peername = '%s' and filename = '%s'",
				db_encode(myname), db_encode(peername), db_encode(filename));
		csync_error_count++;
		return ERROR;
	}

	int not_done = 1;
	const char *key_enc = url_encode(key);
	const char *enc_tmp = url_encode(prefixencode(filename));
	/* Need to live while doing a lot of url_encode. Dont want to delete on every return */
	char filename_enc[strlen(enc_tmp) + 1];
	strcpy(filename_enc, enc_tmp);
	while (not_done) {
		csync_debug(1, "Updating '%s:%s' %s '%s'\n", peername, filename,
				operation_str, (other ? other : ""));

		if (lstat_strict(filename, &st) != 0) {
			csync_debug(0, "ERROR: Cant stat %s.\n", filename);
			csync_error_count++;
			return ERROR;
		}
		if (force) {
			if (dry_run) {
				csync_debug(1, "!M: %-15s %s\n", peername, filename);
				return OK_DRY;
			}
			conn_printf("FLUSH %s %s\n", key_enc, filename_enc);
			int rc = read_conn_status(filename, peername);
			if (rc < 0)
				return rc;
		}
		int rc = csync_update_file_sig_rs_diff(peername, key_enc, filename,
				filename_enc, &st, uid, gid,
				NULL, &last_conn_status, 2);
		if (rc >= 0) {
			found_diff = rc & DIFF;
			found_diff_meta = rc & DIFF_META;
			rc &= !DIFF_BOTH;
		}

		if (dry_run) {
			if (rc == IDENTICAL)
				csync_clear_dirty(peername, filename, auto_resolve_run);
			return rc;
		}

		if (operation == OP_HARDLINK) {
			csync_debug(0, "check hardlink %s %s %s \n", operation_str,
					filename, other);

			const char *other_enc = url_encode(prefixencode(other));
			struct stat st_other;
			int rc = stat(other, &st_other);
			if (rc == 0) {
				int rc = csync_update_file_sig_rs_diff(peername, key_enc, other,
						other_enc, &st, uid, gid,
						NULL, &last_conn_status, 2);
				if (rc == CONN_CLOSE)
					return rc;
				if (rc == OK) // swap
					rc = csync_update_hardlink(peername, key_enc, other,
							other_enc, filename, filename_enc,
							&last_conn_status);
				else
					rc = csync_update_hardlink(peername, key_enc, filename,
							filename_enc, other, other_enc, &last_conn_status);
				if (rc == CONN_CLOSE)
					return rc;
				if (rc == OK) {
					csync_clear_dirty(peername, filename, auto_resolve_run);
					return rc;
				}
			}
		}

		struct textlist *link_move_list = csync_check_link_move(peername,
				filename, checktxt, operation, digest, &st, NULL);
		struct textlist *list_ptr = link_move_list;
		/* Need to do the moves first, otherwise hard link could be between two non-existing files */
		while (list_ptr) {
			other = list_ptr->value;
			if (list_ptr->intvalue == OP_MOVE) {
				csync_debug(0, "check move: %s %s \n ", filename, other);
				rc = csync_update_file_move(myname, peername, key, filename,
						other);
				if (rc == CONN_CLOSE || rc == OK) {
					if (rc == OK) {
						csync_clear_dirty(peername, filename, auto_resolve_run);
						csync_clear_dirty(peername, other, auto_resolve_run);
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
				csync_debug(0, "check hardlink: %s %s \n ", filename, other);
				const char *other_enc = url_encode(prefixencode(other));
				rc = csync_update_hardlink(peername, key_enc, other, other_enc,
						filename, filename_enc, &last_conn_status);
				if (rc == CONN_CLOSE || rc == OK) {
					if (rc == OK) {
						csync_clear_dirty(peername, filename, auto_resolve_run);
						csync_clear_dirty(peername, other, auto_resolve_run);
					}
					textlist_free(link_move_list);
					return OK;
				}
				break;
			}
			list_ptr = list_ptr->next;
		}
		textlist_free(link_move_list);

		if (operation == OP_MOVE) {
			switch (rc) {
			case DIFF_BOTH:
			case DIFF:
				rc = csync_update_file_move(myname, peername, key, filename,
						other);
				if (rc == CONN_CLOSE)
					return rc;
				if (rc == OK)
					return rc;
				csync_debug(0, "ERROR: move failed: %s %s ", filename, other);
				operation_str = "-";
				operation = OP_UNDEF;
				break;
			case DIFF_META:
				rc = SETOWN;
				//	rc = IDENTICAL;
			}
		}
		switch (rc) {
		case OK:
		case DIFF:
			break;
		case SETOWN:
		case SETTIME:
			rc = csync_update_file_settime(peername, key_enc, filename,
					filename_enc, &st);
			if (rc == CONN_CLOSE)
				return rc;
			csync_clear_dirty(peername, filename, auto_resolve_run);
			return rc;
		case ERROR:
			return rc;
		case IDENTICAL:
			csync_clear_dirty(peername, filename, auto_resolve_run);
			return rc;
		case OK_DRY:
			return rc;
		case ERROR_HARDLINK:
			csync_debug(1, "HARDLINK failed. Continuing with PATCH\n");
			break;
		default:
			csync_debug(0, "Unhandled return code: %d \n", rc);
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
			if (st.st_nlink > 1 && found_diff) {
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
			if (found_diff)
				rc = csync_update_file_patch(key_enc, peername, filename,
						filename_enc, &st, uid, gid, &last_conn_status);
			if (rc == CONN_CLOSE)
				return rc;
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
			break;
		case DIR_TYPE:
			cmd_printf("MKDIR", key_enc, filename_enc, "-", &st, uid, gid);
			rc = csync_update_file_dir(peername, filename, &last_conn_status);
			break;
		case CHR_TYPE:
			conn_printf("MKCHR %s %s\n", key_enc, filename_enc);
			if ((last_conn_status = read_conn_status(filename, peername)))
				rc = MAYBE_AUTO_RESOLVE;
			break;
		case BLK_TYPE:
			conn_printf("MKBLK %s %s\n", key_enc, filename_enc);
			if ((last_conn_status = read_conn_status(filename, peername)))
				rc = MAYBE_AUTO_RESOLVE;
			break;
		case FIFO_TYPE:
			conn_printf("MKFIFO %s %s\n", key_enc, filename_enc);
			if ((last_conn_status = read_conn_status(filename, peername)))
				rc = MAYBE_AUTO_RESOLVE;
			break;
		case LINK_TYPE: {
			char target[1024];
			int len = readlink(filename, target, 1023);
			if (len > 0) {
				target[len] = 0;
				conn_printf("MKLINK %s %s %s\n", key_enc, filename_enc,
						url_encode(prefixencode(target)));
				if ((last_conn_status = read_conn_status(filename, peername)))
					rc = MAYBE_AUTO_RESOLVE;
			} else {
				csync_debug(1, "File is a symlink but radlink() failed.\n",
						st.st_mode);
				rc = ERROR;
			}
			break;
		}
		case SOCK_TYPE: {
			conn_printf("MKSOCK %s %s\n", key_enc, filename_enc);
			if ((last_conn_status = read_conn_status(filename, peername)))
				rc = MAYBE_AUTO_RESOLVE;
			break;
		}
		default:
			csync_debug(1, "File type (mode=%o) is not supported.\n",
					st.st_mode);
			rc = ERROR;
		}
		//csync_debug(1, "before setown/settime/setmod rc %d.\n", rc);
		if (rc < OK)
			return rc;
		if (rc != IDENTICAL && rc != IDENTICAL) {
			if (rc == OK)
				rc = csync_update_file_setown(peername, key_enc, filename,
						filename_enc, &st, uid, gid);
			if (rc != OK)
				return rc;
			if (!S_ISLNK(st.st_mode)) {
				rc = csync_update_file_setmod(peername, key_enc, filename,
						filename_enc, &st);
				if (rc != OK)
					return rc;
			}
			rc = csync_update_file_settime(peername, key_enc, filename,
					filename_enc, &st);
		}
		csync_debug(3, "clear dirty with rc %d\n", rc);
		switch (rc) {
		case OK:
		case IDENTICAL:
			csync_clear_dirty(peername, filename, auto_resolve_run);
			return rc;
		}
		auto_resolve_run = csync_check_auto_resolve(peername, key_enc, filename,
				filename_enc, last_conn_status, auto_resolve_run, 0);
		if (!auto_resolve_run) {
			csync_error_count--;
			return rc;
		}
		csync_debug(1, "Attempting autoresolve on %s:%s", peername, filename);
	}
	return OK;
}

int csync_update_file_settime(const char *peername, const char *key_enc,
			      const char *filename, const char *filename_enc,
			      const struct stat *st)
{
  if ( !S_ISLNK(st->st_mode) ) {
    conn_printf("SETTIME %s %s %Ld\n",
		key_enc, filename_enc,
		(long long)st->st_mtime);
    if ( read_conn_status(filename, peername) )
      return ERROR;
  }
  return OK;
}

int compare_files(const char *filename, const char *pattern, int recursive)
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

void csync_directory_add(struct textlist **directory_list, char *directory) {
  char *pos = strrchr(directory, '/');
  if (pos) {
    pos[0] = 0;
    csync_debug(3, "Directory %s\n", directory);
    textlist_add_new(directory_list, directory, 0);
  }
}

struct dirty_row {
    char *filename;
    char *digest;
    char *checktxt;
    int forced;
    int operation;
    long long *dev;
    long long *inode;
};

void csync_update_host(const char *myname, const char *peername,
		       const char **patlist, int patnum, int recursive,
		       int dry_run, int ip_version, int db_version)
{
  struct textlist *tl = 0, *t, *next_t;
  struct textlist *tl_del = 0, **last_tn=&tl;
  char *current_name = 0;
  struct stat st;
  /* order DESC since building the list reverse the order */
  SQL_BEGIN("Get files for host from dirty table",
	    "SELECT filename, operation, other, checktxt, digest, forced  FROM dirty WHERE peername = '%s' AND myname = '%s' "
	    "ORDER by filename DESC",
	    db_encode(peername), db_encode(myname));
    {
      const char *filename  = db_decode(SQL_V(0));
      const char *operation = db_decode(SQL_V(1));
      const char *other     = db_decode(SQL_V(2));
      const char *checktxt  = db_decode(SQL_V(3));
      const char *digest    = db_decode(SQL_V(4));
      const char *forced_str= db_decode(SQL_V(5));
      int forced = forced_str ? atoi(forced_str) : 0;
      int i, use_this = patnum == 0;
      for (i=0; i<patnum && !use_this; i++)
	if ( compare_files(filename, patlist[i], recursive) )
	  use_this = 1;
      if (use_this) {
	  textlist_add5(&tl, filename, operation, other, checktxt, digest, forced);
      }
    } SQL_END;

  /* just return if there are no files to update */
    if ( !tl)
      return;

  if ( connect_to_host(peername, ip_version) ) {
    csync_error_count++;
    csync_debug(0, "ERROR: Connection to remote host `%s' failed.\n", peername);
    csync_debug(1, "Host stays in dirty state. "
		"Try again later...\n");
    return;
  }

  conn_printf("HELLO %s\n", myname);
  if (read_conn_status(0, peername) ) {
    conn_printf("BYE\n");
    read_conn_status(0, peername);
    conn_close();
    return ;
  }
  int rc;
  struct textlist *directory_list = 0;
  for (t = tl; t != 0; t = next_t) {
    next_t = t->next;
    if ( !lstat_strict(t->value, &st) != 0 && !csync_check_pure(t->value)) {
	if (!connection_closed_error)
	    rc = csync_update_file_mod(myname, peername,
				       t->value, t->value2, t->value3, t->value4, t->value5, t->intvalue, dry_run, db_version);
	if (rc == CONN_CLOSE || connection_closed_error) {
	   csync_debug(0, "Connection closed on updating %s\n", t->value);
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
	/* Reverse order (deepest first when deleting. otherwise we need recursive deleting */
	csync_debug(3, "Dirty (deleted) item %s %s %d\n", t->value, t->value2, t->intvalue);
	*last_tn = next_t;
	t->next = tl_del;
	tl_del = t;
    }
  }
  textlist_free(tl);
  for (t = tl_del; t != 0; t = t->next) {
      rc = csync_update_file_del(myname, peername,
				 t->value, t->value2, t->value5,
				 t->intvalue, dry_run);
      if (rc == CONN_CLOSE || connection_closed_error) {
	 csync_debug(0, "Connection closed on deleting  %s\n", t->value);
	 break;
      }
      csync_directory_add(&directory_list, t->value);
  }
  textlist_free(tl_del);

  if (!dry_run)
     for (t = directory_list; rc != CONN_CLOSE && !connection_closed_error && t != 0; t = t->next) {
	rc = csync_update_directory(myname, peername, t->value, t->intvalue, dry_run, db_version);
	if (rc == CONN_CLOSE || connection_closed_error) {
	   csync_debug(0, "Connection closed on setting time on directory %s\n", t->value);
	   break;
	}
     }
  textlist_free(directory_list);

  conn_printf("BYE\n");
  read_conn_status(0, peername);
  conn_close();
}

void csync_update(const char *myhostname, char *active_peers[], const char ** patlist, int patnum, int recursive, int dry_run, int ip_version, int db_version)
{
  struct textlist *tl = 0, *t;

  SQL_BEGIN("Get hosts from dirty table",
	    "SELECT peername FROM dirty GROUP BY peername")
    {
      textlist_add(&tl, db_decode(SQL_V(0)), 0);
    } SQL_END;

  int found = 1;
  for (t = tl; t != 0; t = t->next) {
    if (active_peers) {
      int i=0;
      found = 0;
      while (active_peers[i]) {
	if (!strcmp(active_peers[i], t->value)) {
	    found = 1;
	    while (active_peers[i]) {
	      active_peers[i] = active_peers[i+1];
	      ++i;
	    }
	    break;
	}
	i++;
      }
    }
    if (found)
      csync_update_host(myhostname, t->value, patlist, patnum, recursive, dry_run, ip_version, db_version);
  }

  textlist_free(tl);
}

/* emulate the label, should remove */
int finish_close()
{
  conn_close();
  return 0;
};

int csync_diff(const char *myname, const char *peername,
	       const char *filename, int ip_version)
{
  FILE *p;
  void *old_sigpipe_handler;
  const struct csync_group *g = 0;
  const struct csync_group_host *h;
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
    csync_debug(0, "Host pair + file not found in configuration.\n");
    csync_error_count++;
    return 0;
  }

  if ( connect_to_host(peername, ip_version) ) {
    csync_error_count++;
    csync_debug(0, "ERROR: Connection to remote host `%s' failed.\n", peername);
    return 0;
  }

  conn_printf("HELLO %s\n", url_encode(myname));
  if ( read_conn_status(0, peername) )
    return finish_close();

  const char *key_enc  = url_encode(g->key);
  const char *filename_enc = url_encode(prefixencode(filename));
  struct stat st;
  char uid[MAX_UID_SIZE], gid[MAX_GID_SIZE];
  csync_stat(filename, &st, uid, gid);
  int last_conn_status;
  int rc = csync_update_file_sig_rs_diff(peername, key_enc,
					 filename, filename_enc,
					 &st, uid, gid,
					 NULL, &last_conn_status, 0);
  if (rc < 0) {
      csync_debug(0, "Error while TYPE: %d \n", rc);
      return finish_close();
  }

  if (rc == IDENTICAL) {
      csync_debug(1, "Identical files. Skipping diff\n");
      return finish_close();

  }

  if (!stat(filename, &st) && !S_ISREG(st.st_mode))
  {
      csync_debug(1, "Skipping diff on non-regular file (%s)", filename) ;
      return finish_close(); 
  }

  conn_printf("TYPE %s %s\n", key_enc, filename);

  if ( read_conn_status(0, peername) )
      return finish_close();

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
  while ( (rc=conn_read(buffer, 512)) > 0 ) {
      fwrite(buffer, rc, 1, p);
      length += rc;
  }
  csync_debug(2, "diff -Nus --label \"%s:%s\" - --label \"%s:%s\" bytes read: %d " , myname, filename, peername, filename, length);
  fclose(p);
  signal(SIGPIPE, old_sigpipe_handler);
  return finish_close();
}

int csync_insynctest_readline(char **file, char **checktxt)
{
	char inbuf[2048], *tmp;

	if (*file) free(*file);
	if (*checktxt) free(*checktxt);
	*file = *checktxt = 0;

	if ( !conn_gets(inbuf, 2048) ) return 1;
	if ( inbuf[0] != 'v' ) {
		if ( !strncmp(inbuf, "OK (", 4) ) {
			csync_debug(2, "End of query results: %s", inbuf);
			return 1;
		}
		csync_error_count++;
		csync_debug(0, "ERROR from peer: %s", inbuf);
		return 1;
	}

	tmp = strtok(inbuf, "\t");
	if (tmp) *checktxt=strdup(url_decode(tmp));
	else {
		csync_error_count++;
		csync_debug(0, "Format error in reply: \\t not found!\n");
		return 1;
	}

	tmp = strtok(0, "\n");
	if (tmp) *file=strdup(url_decode(tmp));
	else {
		csync_error_count++;
		csync_debug(0, "Format error in reply: \\n not found!\n");
		return 1;
	}

	csync_debug(2, "Fetched tuple from peer: %s [%s]\n", *file, *checktxt);

	return 0;
}

int csync_insynctest(const char *myname, const char *peername, int init_run,
		     int auto_diff, const char *filename, int ip_version)
{
  struct textlist *diff_list = 0, *diff_ent;
  const struct csync_group *g;
  const struct csync_group_host *h;
  char *r_file=0, *r_checktxt=0;
  int remote_reuse = 0, remote_eof = 0;
  int rel, ret = 1;

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
    csync_debug(0, "Host pair not found in configuration.\n");
    csync_error_count++;
    return 0;
  }

  if ( connect_to_host(peername, ip_version) ) {
    csync_error_count++;
    csync_debug(0, "ERROR: Connection to remote host `%s' failed.\n", peername);
    return 0;
  }

  conn_printf("HELLO %s\n", url_encode(myname));
  read_conn_status(0, peername);

  const char *filename_enc = (filename ? url_encode(prefixencode(filename)) : "-");
  conn_printf("LIST %s %s", peername, filename_enc);
  for (g = csync_group; g; g = g->next) {
    if ( !g->myname || strcmp(g->myname, myname) )
      continue;
    for (h = g->host; h; h = h->next)
      if (!strcmp(h->hostname, peername)) {
	conn_printf(" %s", g->key);
	break;
      }
  }
  conn_printf("\n");

  SQL_BEGIN("DB Dump - File",
	    "SELECT checktxt, filename FROM file %s%s%s ORDER BY filename",
	    filename ? "WHERE filename = '" : "",
	    filename ? db_encode(filename) : "",
	    filename ? "'" : "")
    {
      char *l_file = strdup(db_decode(SQL_V(1))), *l_checktxt = strdup(db_decode(SQL_V(0)));
      if ( csync_match_file_host(l_file, myname, peername, 0) ) {
	if ( remote_eof ) {
	got_remote_eof:
	  if (auto_diff)
	    textlist_add(&diff_list, strdup(l_file), 0);
	  else
	    csync_debug(1, "L\t%s\t%s\t%s\n", myname, peername, l_file);
	  ret=0;
	  if (init_run & 1)
	    csync_mark(l_file, 0, (init_run & 4) ? peername : 0, "updated (local)",
		       NULL, "NULL", "NULL");
	} else {
	  if ( !remote_reuse )
	    if ( csync_insynctest_readline(&r_file, &r_checktxt) ) {
	      remote_eof = 1;
	      goto got_remote_eof;
	    }
	  rel = strcmp(l_file, r_file);
	
	  while ( rel > 0 ) {
	    if (auto_diff)
	      textlist_add(&diff_list, strdup(r_file), 0);
	    else
	      csync_debug(1, "R\t%s\t%s\t%s\n", myname, peername, r_file); ret=0;
	    if (init_run & 2)
	      csync_mark(r_file, 0, (init_run & 4) ? peername : 0, "updated (peer)",
			 NULL, "NULL", "NULL");
	    if ( csync_insynctest_readline(&r_file, &r_checktxt) ) {
	      remote_eof = 1;
	      goto got_remote_eof;
	    }
	    rel = strcmp(l_file, r_file);
	  }
	
	  if ( rel < 0 ) {
	    if (auto_diff)
	      textlist_add(&diff_list, strdup(l_file), 0);
	    else
	      csync_debug(1, "L\t%s\t%s\t%s\n", myname, peername, l_file); ret=0;
	    if (init_run & 1)
	      csync_mark(l_file, 0, (init_run & 4) ? peername : 0,
			 "autoupdate with local", NULL, "NULL", "NULL");
	    remote_reuse = 1;
	  } else {
	    remote_reuse = 0;
	    if ( !rel ) {
	      if ( strcmp(l_checktxt, r_checktxt) ) {
		if (auto_diff)
		  textlist_add(&diff_list, strdup(l_file), 0);
		else {
		  //DS disabled the simple X out.
		  if (csync_debug_level >= 0) {
		    csync_cmpchecktxt_component(l_checktxt, r_checktxt);
		    csync_debug(0, "\t%s\t%s\t%s\n", myname, peername, l_file);
		  }
		  else
		    csync_debug(0, "X\t%s\t%s\t%s\n", myname, peername, l_file);
		  ret=0;
		}
		if (init_run & 1)
		  csync_mark(l_file, 0, (init_run & 4) ? peername : 0,
			     "updated both", NULL, "NULL", "NULL");
	      }
	    }
	  }
	}
      }
      free(l_checktxt);
      free(l_file);
    } SQL_END;

  if ( !remote_eof )
    while ( !csync_insynctest_readline(&r_file, &r_checktxt) ) {
      if (auto_diff)
	textlist_add(&diff_list, strdup(r_file), 0);
      else
	csync_debug(1, "R\t%s\t%s\t%s\n", myname, peername, r_file); ret=0;
      if (init_run & 2)
	csync_mark(r_file, 0, (init_run & 4) ? peername : 0,
		   "updated (peer)", NULL, "NULL", "NULL");
    }

  if (r_file) free(r_file);
  if (r_checktxt) free(r_checktxt);

  conn_printf("BYE\n");
  read_conn_status(0, peername);
  conn_close();

  for (diff_ent=diff_list; diff_ent; diff_ent=diff_ent->next)
    csync_diff(myname, peername, diff_ent->value, ip_version);
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

int csync_insynctest_all(int init_run, int auto_diff, const char *filename, int ip_version, char *active_peers[])
{
    struct textlist *myname_list = 0, *myname;
    struct csync_group *g;
    int ret = 1;
    if (auto_diff && filename) {
	int pl_idx;
	struct peer *pl = csync_find_peers(filename, 0);
	for (pl_idx=0; pl && pl[pl_idx].peername; pl_idx++)
	    if (peer_in(active_peers, pl[pl_idx].peername)) {
		csync_diff(pl[pl_idx].myname, pl[pl_idx].peername, filename, ip_version);
	    }
	free(pl);
	return ret;
    }

    for (g = csync_group; g; g = g->next)
    {
	if (g->myname)
	    for (myname=myname_list; myname; myname=myname->next)
		if (strcmp(g->myname, myname->value) )
		    textlist_add(&myname_list, g->myname, 0);
    }

    for (myname=myname_list; myname; myname=myname->next) {
	struct textlist *peername_list = 0, *peername;
	struct csync_group_host *h;

	for (g = csync_group; g; g = g->next) {
	    if ( !g->myname || strcmp(myname->value, g->myname) )
		continue;
	    for (h=g->host; h; h=h->next) {
		for (peername=peername_list; peername; peername=peername->next)
		    if (strcmp(h->hostname, peername->value))
			textlist_add(&peername_list, h->hostname, 0);
	    }
	}

	for (peername=peername_list; peername; peername=peername->next)
	{
	    if (peer_in(active_peers, peername->value))
	    {
		csync_debug(1, "Running in-sync check for %s <-> %s.\n",
			    myname->value, peername->value);
		if ( !csync_insynctest(myname->value, peername->value, init_run,
				       auto_diff, filename, ip_version) ) ret=0;
	    }
	}
	textlist_free(peername_list);
    }
    textlist_free(myname_list);

    return ret;
}

void csync_remove_old()
{
  struct textlist *tl = 0, *t;

  SQL_BEGIN("Query dirty DB",
	    "SELECT filename, myname, peername FROM dirty")
    {
      const struct csync_group *g = 0;
      const struct csync_group_host *h;
      const char *filename  = db_decode(SQL_V(0));
      const char *localname = db_decode(SQL_V(1));
      const char *peername  = db_decode(SQL_V(2));
      int found = 0;
      while (!found && (g=csync_find_next(g, filename)) != 0) {
	if (!strcmp(g->myname, SQL_V(1)))
	  for (h = g->host; h; h = h->next) {
	    if (!strcmp(h->hostname, SQL_V(2))) {
	      found = 1;
	      break;
	    }
	  }
      }
      if (!found)
	textlist_add2(&tl, filename, peername, 0);
    } SQL_END;
  for (t = tl; t != 0; t = t->next) {
    const char *filename = t->value;
    const char *peername = t->value2;

    csync_debug(1, "Removing %s (%s) from dirty db.\n", filename, peername);
    SQL("Remove old file from dirty db",
	"DELETE FROM dirty WHERE filename = '%s' AND peername = '%s'",
	db_encode(filename), db_encode(peername));
  }
  textlist_free(tl);

  tl = 0;
  SQL_BEGIN("Query file DB",
	    "SELECT filename FROM file")
    {
      const char *decoded = db_decode(SQL_V(0));
      if (!csync_find_next(0, decoded))
	textlist_add(&tl, decoded, 0);
    } SQL_END;
  for (t = tl; t != 0; t = t->next) {
    csync_debug(1, "Removing %s from file db.\n", t->value);
    SQL("Remove old file from file db",
	"DELETE FROM file WHERE filename = '%s'", db_encode(t->value));
  }
  textlist_free(tl);
};
