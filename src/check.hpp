/*  -*- c-file-style: "k&r"; c-basic-offset: 4; tab-width: 4; indent-tabs-mode: t -*-
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

#ifndef CSYNC2_CHECK_H
#define CSYNC2_CHECK_H 1

#include <sys/stat.h>
#ifdef __cplusplus
#include <vector>
#include <string>
#endif
#include "db_api.hpp"
#include "buffer.hpp"

/* Device/Inode comparison flags */
#define DEV_INO_SAME 0
#define DEV_CHANGED 1
#define INO_CHANGED 2
#define DEV_MISSING 4
#define INO_MISSING 8

/* Operation types */
#define OP_UNDEF      0
#define OP_MARK       0
#define OP_MKDIR      1
#define OP_NEW        2
#define OP_MKFIFO     4
#define OP_MKCHR      8
#define OP_MOVE      16
#define OP_HARDLINK  32
#define OP_RM        64
#define OP_MOD      128
#define OP_MOD2     256
#define OP_SYNC     (OP_MOD|OP_MOD2)
#define OP_FILTER   (~(OP_SYNC) & 1023) 

/* Check flags */
#define IS_UPGRADE  1
#define IS_DIRTY    2
#define CALC_DIGEST 4
#define DEV_CHANGE  8

/* Error message constants */
#define PATH_NOT_FOUND "ERROR (Path not found): "
#define PATH_NOT_FOUND_LEN sizeof(PATH_NOT_FOUND)-1
#define ERROR_LOCKED_STR "ERROR (locked)"
#define ERROR_LOCKED_STR_LEN sizeof(ERROR_LOCKED_STR)-1
#define ERROR_NOT_FOUND_STR "No such file or directory"
#define	ERROR_NOT_FOUND_STR_LEN	sizeof(ERROR_NOT_FOUND_STR)-1
#define ERROR_CREATE_STR "ERROR (create)"
#define	ERROR_CREATE_STR_LEN sizeof(ERROR_CREATE_STR)-1

/* Function pointer type for textlist operations */
typedef struct textlist *(*textlist_loop_t)(filename_p filename, struct stat *st, struct textlist *tl);

/* Device/Inode and file type functions */
int compare_dev_inode(struct stat *file_stat, const char *dev, const char *ino, struct stat *old_stat);
int csync_calc_digest(const char *file, BUF_P buffer, char **digest);

/* Peer list functions */
void parse_peerlist(const char *peerlist);
#ifdef __cplusplus
int match_peer(const std::set<std::string>& active_peers, const char *peer);
#endif
int match_peer(char **active_peers, const char *peer); // Legacy C-style interface

/* Operation string conversion */
extern const char *csync_mode_op_str(int st_mode, int op);
extern operation_t csync_operation(const char *operation);
extern const char *csync_operation_str(operation_t op);

/* Main check functions */
extern void csync_hint(db_conn_p db, const char *file, int recursive);
extern void csync_check(db_conn_p db, filename_p filename, int flags);
extern int  csync_check_single(db_conn_p db, filename_p filename, int flags, const struct csync_group **g); 
extern int csync_check_del(db_conn_p db, filename_p filename, int flags);
extern int csync_check_mod(db_conn_p db, peername_p file, int flags, int *count_dirty, const struct csync_group **);
extern int csync_check_dir(db_conn_p db, peername_p file, int flags);

/* Mark and path functions */
extern void csync_mark(db_conn_p db, filename_p file, peername_p thispeer,
					   const std::set<std::string>& peerfilter, operation_t op,
					   const char *checktxt, const char *dev, const char *ino, int mode, int mtime);
extern struct textlist *csync_mark_hardlinks(db_conn_p db, filename_p filename, struct stat *st, struct textlist *tl);
extern char *csync_check_path(filename_p filename); 
extern int   csync_check_pure(filename_p filename);

/* Move detection functions */
struct textlist *csync_check_move(db_conn_p db, peername_p peername, filename_p filename, const char* checktxt, const char *digest, struct stat *st);
struct textlist *csync_check_link_move(db_conn_p db, peername_p peername, filename_p filename,
				       const char* checktxt, operation_t op, const char *digest,
				       struct stat *st, textlist_loop_t loop);

#endif /* CSYNC2_CHECK_H */
