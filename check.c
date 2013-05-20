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
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <dirent.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <unistd.h>
#include <errno.h>


#ifdef __CYGWIN__

#include <w32api/windows.h>

/* This does only check the case of the last filename element. But that should
 * be OK for us now...
 */
int csync_cygwin_case_check(const char *filename)
{
	if (!strcmp(filename, "/cygdrive"))
		goto check_ok;
	if (!strncmp(filename, "/cygdrive/", 10) && strlen(filename) == 11)
		goto check_ok;

	char winfilename[MAX_PATH];
	cygwin_conv_to_win32_path(filename, winfilename);

	int winfilename_len = strlen(winfilename);
	int found_file_len;
	HANDLE found_file_handle;
	WIN32_FIND_DATA fd;

	/* See if we can find this file. */
	found_file_handle = FindFirstFile(winfilename, &fd);
	if (found_file_handle == INVALID_HANDLE_VALUE)
		goto check_failed;
	FindClose(found_file_handle);

	found_file_len = strlen(fd.cFileName);

	/* This should never happen. */
	if (found_file_len > winfilename_len)
		goto check_failed;

	if (strcmp(winfilename + winfilename_len - found_file_len, fd.cFileName))
		goto check_failed;

check_ok:
	csync_debug(3, "Cygwin/Win32 filename case check ok: %s (%s)\n", winfilename, filename);
	return 1;

check_failed:
	csync_debug(2, "Cygwin/Win32 filename case check failed: %s (%s)\n", winfilename, filename);
	return 0;
}

#endif /* __CYGWIN__ */

void csync_hint(const char *file, int recursive)
{
	SQL("Adding Hint",
		"INSERT INTO hint (filename, recursive) "
		"VALUES ('%s', %d)", db_encode(file), recursive);
}

void csync_mark(const char *file, const char *thispeer, const char *peerfilter, const char *operation)
{
  struct peer *pl = csync_find_peers(file, thispeer);
  int pl_idx;

  csync_schedule_commands(file, thispeer == 0);

  if ( ! pl ) {
    csync_debug(2, "Not in one of my groups: %s (%s)\n",
		file, thispeer ? thispeer : "NULL");
    return;
  }

  csync_debug(1, "Marking file as dirty: %s\n", file);
  for (pl_idx=0; pl[pl_idx].peername; pl_idx++)
    if (!peerfilter || !strcmp(peerfilter, pl[pl_idx].peername)) {
      SQL("Deleting old dirty file entries",
	  "DELETE FROM dirty WHERE filename = '%s' AND peername = '%s'",
	  db_encode(file),
	  db_encode(pl[pl_idx].peername));
      
      SQL("Marking File Dirty",
	  "INSERT INTO dirty (filename, forced, myname, peername, operation) "
	  "VALUES ('%s', %s, '%s', '%s', '%s')",
	  db_encode(file),
	  csync_new_force ? "1" : "0",
	  db_encode(pl[pl_idx].myname),
	  db_encode(pl[pl_idx].peername),
	  (operation ? db_encode(operation): ""));
    }
  free(pl);
}

/* Return path that doesn't exist */ 
/* Pre-cond: a non-existing file   */
char *csync_check_path(char *filename) 
{
  struct stat st;
  int missing = 0;
  int index = strlen(filename); 
  for (; index > 0; index--) {
    if (filename[index-1] == '/') {
      filename[index-1] = 0;
      /* Check for existence */
      if (lstat_strict(filename, &st) == 0) {
	/* check file status */
	if (S_ISDIR(st.st_mode)) {
	    filename[index-1] = '/';	  
	    if (!missing)
	      return 0;
	    else
	      return filename;
	}
	/* This shouldn't happen. We have a non-directory */
	csync_debug(0, "Check for directory failed with non-directory %s: %d", filename, st.st_mode);
	return 0;
      }
      else
	missing = 1;
    }
  }
  /* Weird. We went all to the way to the root */
  return 0; 
}

/* return 0 if path does not contain any symlinks */
int csync_check_pure(const char *filename)
{
#ifdef __CYGWIN__
	// For some reason or another does this function __kills__
	// the performance when using large directories with cygwin.
	// And there are no symlinks in windows anyways..
	if (!csync_lowercyg_disable)
		return 0;
#endif
	struct stat sbuf;
	int dir_len = 0;
	int i;
	int same_len;

	/* single entry last query cache
	 * to speed up checks from deep subdirs */
	static struct {
		/* store inclusive trailing slash for prefix match */
		char *path;
		/* strlen(path) */
		int len;
		/* cached return value */
		int has_symlink;
	} cached;

	for (i = 0; filename[i]; i++)
		if (filename[i] == '/')
			dir_len = i+1;

	if (dir_len <= 1) /* '/' a symlink? hardly. */
		return 0;

	/* identical prefix part */
	for (i = 0; i < dir_len && i < cached.len; i++)
		if (filename[i] != cached.path[i])
			break;

	/* backtrack to slash */
	for (--i; i >= 0 && cached.path[i] != '/'; --i);
		;

	same_len = i+1;

	csync_debug(3, " check: %s %u, %s %u, %u.\n", filename, dir_len, cached.path, cached.len, same_len);
	/* exact match? */
	if (dir_len == same_len && same_len == cached.len)
		return cached.has_symlink;

	{ /* new block for myfilename[] */
		char myfilename[dir_len+1];
		char *to_be_cached;
		int has_symlink = 0;
		memcpy(myfilename, filename, dir_len);
		myfilename[dir_len] = '\0';
		to_be_cached = strdup(myfilename);
		i = dir_len-1;
		while (i) {
			for (; i && myfilename[i] != '/'; --i)
				;

			if (i <= 1)
				break;

			if (i+1 == same_len) {
				if (same_len == cached.len) {
					/* exact match */
					has_symlink = cached.has_symlink;
					break;
				} else if (!cached.has_symlink)
					/* prefix of something 'pure' */
					break;
			}

			myfilename[i]=0;
			if (lstat_strict(myfilename, &sbuf) || S_ISLNK(sbuf.st_mode)) {
				has_symlink = 1;
				break;
			}
		}
		if (to_be_cached) { /* strdup can fail. So what. */
			free(cached.path);
			cached.path = to_be_cached;
			cached.len = dir_len;
			cached.has_symlink = has_symlink;
		}
		return has_symlink;
	}
}

void csync_check_del(const char *file, int recursive, int init_run)
{
  char *where_rec = "";
  struct textlist *tl = 0, *t;
  struct stat st;
  
  if ( recursive ) {
    if ( !strcmp(file, "/") )
      ASPRINTF(&where_rec, "OR 1=1");
    else {
      const char *file_encoded = db_encode(file);
      csync_debug(3,"file %s encoded %s \n", file, file_encoded);
      ASPRINTF(&where_rec, "UNION ALL SELECT filename, checktxt, inode, device from file where filename > '%s/' and filename < '%s0'", 
	       file_encoded, file_encoded);
    }
  }

  SQL_BEGIN("Checking for removed files",
	    "SELECT filename, checktxt, inode, device from file where "
	    "filename = '%s' %s ORDER BY filename", db_encode(file), where_rec)
    {
      const char *filename = db_decode(SQL_V(0));
      const char *checktxt = db_decode(SQL_V(1));
      const char *inode    = db_decode(SQL_V(2));
      const char *device   = db_decode(SQL_V(3));
      
      if (!csync_match_file(filename))
	continue;
      
      if ( lstat_strict(filename, &st) != 0 || csync_check_pure(filename))
	textlist_add(&tl, filename, 0);
    } SQL_END;

  for (t = tl; t != 0; t = t->next) {
    if (!init_run) 
      csync_mark(t->value, 0, 0, "delete"); //, checktxt, inode);
    // delay delete, set deleted flags
    SQL("Mark file as deleted from DB. It isn't with us anymore.",
	"UPDATE file set status = 1 WHERE filename = '%s'",
	db_encode(t->value));
  }
  
  textlist_free(tl);
  
  if ( recursive )
    free(where_rec);
}

typedef struct textlist *(*textlist_loop_t)(const char *filename_enc, struct stat *st, struct textlist *tl);

#define MOVE     1
#define HARDLINK 2

struct textlist *csync_mark_hardlinks(const char *filename, struct stat *st, struct textlist *tl)
{
  char *filename_enc = strdup(db_encode(filename));
  struct textlist *t = tl; 
  while (t) {
    char *operation = "MV"; 
    if ( t->intvalue == HARDLINK)
      operation = "MKHARDLINK";
    char *src  = t->value;

    SQL("Update operation to move/hardlink",
	"UPDATE dirty set operation = '%s %s' where filename = '%s'", 
	operation, filename_enc, db_encode(src));
    t = t->next;
  }
  textlist_free(tl);
  free(filename_enc);
  return 0;
}

struct textlist *csync_check_move_link(const char *filename, const char* checktxt, struct stat *st, char **operation, textlist_loop_t loop)
{
  struct textlist *tl = 0, *t;
  int count = 0;
  unsigned long long dev = (st->st_dev != 0 ? st->st_dev : st->st_rdev);
  struct stat file_stat; 
  SQL_BEGIN("Check for same inode", 
	    "SELECT filename, checktxt, status FROM file WHERE filename != '%s' and inode = %llu and device = %llu", db_encode(filename), st->st_ino, dev) {
    const char *db_filename  = db_decode(SQL_V(0));
    const char *db_checktxt  = db_decode(SQL_V(1));
    const char *status_value = SQL_V(2);
    int status = 0;
    if (status_value)
      status = atoi(status_value);
    // if the check doesnt compare, it's more than a move/link. 
    int rc = stat(db_filename, &file_stat);
    int db_version = csync_get_checktxt_version(checktxt);
    if (rc) {
      csync_debug(1, "Unable to stat move/hardlink candidate: %s", db_filename);
      db_checktxt = csync_genchecktxt_version(&file_stat, db_filename, SET_USER|SET_GROUP, db_version);
    }
    if (csync_cmpchecktxt(db_checktxt, checktxt)) {
      if (status == 1) {
	csync_debug(1, "OPERATION: mv %s to %s\n", db_filename, filename);
	if (operation) {
	  *operation = ringbuffer_malloc(strlen(db_filename) + 10);
	  sprintf(*operation, "MV %s", db_filename);
	  textlist_add(&tl, db_filename, MOVE);
	}
      } else {
	csync_debug(1, "OPERATION: MHARDLINK %s to %s\n", db_filename, filename);
	if (operation) {
	  *operation = ringbuffer_malloc(strlen(db_filename) + 14);
	  sprintf(*operation, "MKHARDLINK %s", db_filename); 
	  textlist_add(&tl, db_filename, HARDLINK);
	}
      }
      break; 
    } else {
      csync_debug(1, "Unknown operation: %s %s\n", db_filename, filename);
      csync_debug(1, "   checktxt differ %s %s\n", db_checktxt, checktxt);
      
      if (count > 1) {
	csync_debug(0, "Multiple files with same inode: %s %s", filename, db_filename);
	csync_debug(0, "Different checktxt %s %s", checktxt, db_checktxt);
      }
      count++; 
    }
  } SQL_FIN {
    switch (SQL_COUNT) {
    case 0: 
      csync_debug(2, "No other file with same inode: %s\n", filename);
      break;
    case 1: 
      csync_debug(2, "One file with same inode as file: %s\n", filename);
      break;
    default: 
      csync_debug(2, "%d files with same inode as file: %s\n", SQL_COUNT, filename);
      break;
    }
  } SQL_END; 
  if (loop) {
    tl = loop(filename, st, tl);
  }
  return tl; 
}

void csync_check_dir(const char* file, int recursive, int init_run, int version, int dirdump_this)
{
  struct dirent **namelist;
  int n = 0;
  csync_debug(2, "Checking %s%s* ..\n", file, !strcmp(file, "/") ? "" : "/");
  n = scandir(file, &namelist, 0, alphasort);
  if (n < 0) {
    csync_debug(0, "%s in scandir: %s (%s)\n", strerror(errno), file, file);
    csync_error_count++;
  } else {
    while(n--) {
      on_cygwin_lowercase(namelist[n]->d_name);
      if ( strcmp(namelist[n]->d_name, ".") &&
	   strcmp(namelist[n]->d_name, "..") ) {
	char fn[strlen(file)+
		strlen(namelist[n]->d_name)+2];
	sprintf(fn, "%s/%s",
		!strcmp(file, "/") ? "" : file,
		namelist[n]->d_name);
	char *operation;
	if (csync_check_mod(fn, recursive, 0, init_run, version, &operation))
	  dirdump_this = 1;
      }
      free(namelist[n]);
    }
    free(namelist);
  }
  if ( dirdump_this && csync_dump_dir_fd >= 0 ) {
    int written = 0, len = strlen(file)+1;
    while (written < len) {
      int rc = write(csync_dump_dir_fd, file+written, len-written);
      if (rc <= 0)
	csync_fatal("Error while writing to dump_dir_fd %d: %s\n",
		    csync_dump_dir_fd, strerror(errno));
      written += rc;
    }
  }
}

void csync_file_check_mod(const char *file, struct stat *file_stat, int init_run, int version, char **operation)
{
  int this_is_dirty = 0;
  csync_debug(2, "Checking %s.\n", file);
  if (csync_compare_mode)
    printf("%s\n", file);
  char *checktxt = strdup(csync_genchecktxt_version(file_stat, file, SET_USER|SET_GROUP, version));
  // Assume that this isn't a upgrade and thus same version
  int is_upgrade = 0;
  int db_version = version;
  const char *encoded = db_encode(file);
  //char *operation = 0;
 
  SQL_BEGIN("Checking File",
	    "SELECT checktxt, inode, device FROM file WHERE "
	    "filename = '%s' ", encoded)
    {
      db_version = csync_get_checktxt_version(SQL_V(0));

      if (db_version < 1 || db_version > 2) {
		      csync_debug(0, "Error extracting version from checktxt: %s", SQL_V(0));
      }
      const char *checktxt_db = db_decode(SQL_V(0));
      const char *checktxt_same_version = checktxt;
      const char *inode  = SQL_V(1);
      const char *device = SQL_V(2);
      int flag = 0;
      if (strstr(checktxt_db, ":user=") != NULL)
	flag |= SET_USER; 
      if (strstr(checktxt_db, ":group=") != NULL)
	flag |= SET_GROUP; 
      if (!inode || !device) {
	is_upgrade = 1;
      }
      if (db_version != version || flag != (SET_USER|SET_GROUP)) {
	checktxt_same_version = csync_genchecktxt_version(file_stat, file, flag, db_version);
	if (!csync_cmpchecktxt(checktxt, checktxt_same_version))
	  is_upgrade = 1;
      }
      if (!csync_cmpchecktxt(checktxt_same_version, checktxt_db)) {
	csync_debug(2, "File has changed: %s\n", file);
	*operation = ringbuffer_strdup("Modified");
	this_is_dirty = 1;
      }
    } SQL_FIN {
    if ( SQL_COUNT == 0 ) {
      csync_debug(2, "New file: %s\n", file);
      if (S_ISREG(file_stat->st_mode)) 
	*operation = ringbuffer_strdup("NEW");
      else if (S_ISDIR(file_stat->st_mode)) 
	*operation = ringbuffer_strdup("MKDIR");
      else if (S_ISCHR(file_stat->st_mode))
	*operation = ringbuffer_strdup("MKCHR");
      else if (S_ISBLK(file_stat->st_mode))
	*operation = ringbuffer_strdup("MKBLK");
      else if (S_ISFIFO(file_stat->st_mode))
	*operation = ringbuffer_strdup("MKFIFO");
      else if ( S_ISLNK(file_stat->st_mode) ) {
	// TODO get max path
	char target[1024];
	int len = readlink(file, target, 1023);
	if (len > 0) {
	  target[len] = 0;
	  *operation = ringbuffer_malloc(len + 20);
	  sprintf(*operation, "MKLINK %s", target );
	}
	else
	  csync_debug(0, "Failed to read link on %s\n", file);
      }
      this_is_dirty = 1;
    }
  } SQL_END;
  
  int has_links = (file_stat->st_nlink > 1 && S_ISREG(file_stat->st_mode));
  if (has_links) {
    csync_debug(2, "File %s has links: %d\n", file, file_stat->st_nlink);
  }
  if ( (is_upgrade || this_is_dirty) && !csync_compare_mode ) {
    struct textlist *tl;
    tl = csync_check_move_link(file, checktxt, file_stat, operation, 
			       csync_mark_hardlinks);
    if (tl)
      textlist_free(tl);
    if (this_is_dirty && operation && !*operation) {
      
    }

    unsigned long long dev = (file_stat->st_dev != 0 ? file_stat->st_dev : file_stat->st_rdev);
    const char *checktxt_encoded = db_encode(checktxt);
    if (is_upgrade) {
      SQL("Update file entry",
	  "UPDATE file set checktxt='%s', device=%llu, inode=%llu where filename = '%s'",
	  checktxt_encoded, dev, file_stat->st_ino, encoded);
    }
    else {
      SQL("Deleting old file entry", "DELETE FROM file WHERE filename = '%s'", encoded);
      SQL("Adding or updating file entry",
	  "INSERT INTO file (filename, checktxt, device, inode) VALUES ('%s', '%s', %llu, %llu)",
	  encoded, 
	  checktxt_encoded,
	  dev,
	  file_stat->st_ino
	  );
    }
    if (!init_run && this_is_dirty)
      csync_mark(file, 0, 0, *operation);
  }
  free(checktxt);
}

int csync_check_mod(const char *file, int recursive, int ignnoent, int init_run, int version, char **operation)
{
  int check_type = csync_match_file(file);
  int dirdump_this = 0, dirdump_parent = 0;
  int this_is_dirty = 0;
  struct stat st;
  
  if ( check_type>0 && lstat_strict(file, &st) != 0 ) {
    if ( ignnoent ) 
      return 0;
    csync_fatal("This should not happen: Can't stat %s.\n", file);
  }

  switch ( check_type ) 
    {
    case MATCH_NEXT:
      csync_file_check_mod(file, &st, init_run, version, operation);
      dirdump_this = 1;
      dirdump_parent = 1;
      /* fall thru */
    case MATCH_INTO:
      if ( !recursive ) 
	break;
      if ( !S_ISDIR(st.st_mode) ) 
	break;
      csync_check_dir(file, recursive, init_run, version, dirdump_this);
      break;
    default:
      csync_debug(2, "Don't check at all: %s\n", file);
      break;
    }
  return dirdump_parent;
}

char *csync_check_recursive(const char *filename, int recursive, int init_run, int version)
{
#if __CYGWIN__
	if (!strcmp(filename, "/")) {
		filename = "/cygdrive";
	}
#endif
	// TODO How about swapping deletes and updates? 
	//struct csync_prefix *p = csync_prefix;

	csync_debug(2, "Running%s check for %s ...\n",
			recursive ? " recursive" : "", filename);

	if (!csync_compare_mode)
	   csync_check_del(filename, recursive, init_run);
	
	char *operation = 0; 
	csync_check_mod(filename, recursive, 1, init_run, version, &operation);
	
	if (recursive) 
	  return 0;
	return operation;
}

void csync_check(const char *filename, int recursive, int init_run, int version) {
  csync_check_recursive(filename, recursive, init_run, version);
  // Delayed delete. Not fond of this. Could mess up another run (use a key as status?) but faster
  SQL("Removing file(s) from DB. It isn't with us anymore.",
      "delete from file where status = 1");
}

char *csync_check_single(const char *filename, int init_run, int version)
{
  return csync_check_recursive(filename, 0, init_run, version);
}

