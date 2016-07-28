#include "csync2.h" 
#include "db_sql.h"
#include <unistd.h>


int db_sql_check_file(db_conn_p db, const char *file,
		      const char *encoded,
		      int version, char **other,
		      char *checktxt, struct stat *file_stat,
		      BUF_P buffer, int *operation,
		      char **digest)
{
    int flags = 0;
    int db_version = version;
    SQL_BEGIN(db, "Checking File",
	      "SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE "
	      "filename = '%s' ", encoded)
    {
    	db_version = csync_get_checktxt_version(SQL_V(0));

    	if (db_version < 1 || db_version > 2) {
	    csync_debug(0, "Error extracting version from checktxt: %s", SQL_V(0));
    	}
    	const char *checktxt_db = db_decode(SQL_V(0));
    	const char *checktxt_same_version = checktxt;
    	const char *inode    = SQL_V(1);
    	const char *device   = SQL_V(2);
    	const char *digest_p = SQL_V(3);
	*digest = digest_p ? buffer_strdup(buffer, digest_p) : NULL;
	long mode;
	long size;
	long mtime;
	// Missing any value then upgrade
	flags |= ( SQL_V_long(4, &mode) || SQL_V_long(5, &size) || SQL_V_long(6, &mtime) ? IS_UPGRADE : 0);
    	int flag = 0;
    	if (strstr(checktxt_db, ":user=") != NULL)
	    flag |= SET_USER;
    	if (strstr(checktxt_db, ":group=") != NULL)
	    flag |= SET_GROUP;

    	if (update_dev_inode(file_stat, device, inode) ) {
	    csync_debug(0, "File %s has changed device:inode %s:%s -> %llu:%llu %o \n",
			file, device, inode, file_stat->st_dev, file_stat->st_ino, file_stat->st_mode);
	    flags |= IS_UPGRADE;
    	}
    	if (!*digest && strstr(checktxt, "type=reg")) {
	    flags |= CALC_DIGEST;
	    flags |= IS_UPGRADE;
    	}
    	if (db_version != version || flag != (SET_USER|SET_GROUP)) {
	    checktxt_same_version = csync_genchecktxt_version(file_stat, file, flag, db_version);
	    if (csync_cmpchecktxt(checktxt, checktxt_same_version))
	    flags |= IS_UPGRADE;
    	}
    	if (csync_cmpchecktxt(checktxt_same_version, checktxt_db)) {
	    *operation = OP_MOD;
	    csync_debug(2, "%s has changed: \n    %s \nDB: %s %s\n",
			file, checktxt_same_version, checktxt_db, csync_operation_str(*operation));
	    flags |= IS_DIRTY;
    	}
    } SQL_FIN {
	if ( SQL_COUNT == 0 ) {
	    csync_debug(2, "New file: %s\n", file);
	    *operation = OP_NEW;
	    if (S_ISREG(file_stat->st_mode)) {
		flags |= CALC_DIGEST;
	    }
	    else if ( S_ISLNK(file_stat->st_mode) )
	    {
		// TODO get max path
		int max = 1024;
		char target[max];
		int len = readlink(file, target, max-1);
		if (len > 0) {
		    target[len] = 0;
		    *other = buffer_strdup(buffer, target);
		}
		else
		    csync_debug(0, "Failed to read link on %s\n", file);
	    }
	    flags |= IS_DIRTY;
	}
    } SQL_END;
    return flags; 
}

int db_sql_is_dirty(db_conn_p db, peername_p peername, filename_p filename,
		int *operation, int *mode)
{
    int rc = 0;
    SQL_BEGIN(db, "Check if file is dirty",
	      "SELECT op, mode FROM dirty "
	      "WHERE filename = '%s' and peername = '%s' LIMIT 1",
	      db_escape(db, filename), db_escape(db, peername))
    {
    	rc = 1;
    	*operation = (SQL_V(0) ? atoi(SQL_V(0)) : 0);
    	*mode = (SQL_V(1) ? atoi(SQL_V(1)) : 0);
	csync_debug(3, "db_sql_is_dirty %s:%s %d %d\n", filename, peername, *operation, *mode); 
    } SQL_END;
    return rc;
}

int db_sql_list_dirty(db_conn_p db, char **active_peers, const char *realname, int recursive)
{
    int retval = 0;
    char *where = "";
    if (realname[0] != 0) {
	const char *db_encoded = db_escape(db, realname);
	ASPRINTF(&where,
		 "where filename = '%s' or "
		 "      filename > '%s/' and " 
		 "      filename < '%s0'",
		 db_encoded, db_encoded, db_encoded);
    }

    SQL_BEGIN(db, "DB Dump - Dirty",
	      "SELECT forced, myname, peername, filename, operation FROM dirty %s ORDER BY filename", 
	      where)
    {
	peername_p peername = db_decode(SQL_V(2));
	filename_p filename = db_decode(SQL_V(3));
	if (csync_find_next(0, filename)) {
	    const char *force_str = SQL_V(0);
	    if (match_peer(active_peers, peername)) {
		int force = 0;
		if (force_str) 
		    force = atoi(SQL_V(0));
		printf("%s%s\t%s\t%s\t%s\n", (force ? "F " : "  "), SQL_V(4),
		       db_decode(SQL_V(1)), peername, filename);
		retval++;
	    }
	}
    } SQL_END;
    if (where[0] != 0)
	free(where);

    return retval;
}

textlist_p db_sql_non_dirty_files_match(db_conn_p db, const char *pattern) {
    textlist_p tl = 0;
    SQL_BEGIN(db, "Get non-dirty files from file table",
	      "SELECT filename, checktxt, digest FROM file WHERE filename like '%s%%' "
	      " and filename not in (select filename from dirty where filename like '%s%%')"
	      " ORDER by filename ASC",
	      pattern, pattern)
    {
	filename_p filename  = db_decode(SQL_V(0));
	const char *checktxt  = db_decode(SQL_V(1));
	const char *digest    = db_decode(SQL_V(2));
	if ( compare_files(filename, pattern, 0 /*recursive*/) ) {
	    textlist_add3(&tl, filename, checktxt, digest, 0);
	}
    } SQL_END;

    return tl;
}

textlist_p db_sql_get_dirty_hosts(db_conn_p db) {
    textlist_p tl = 0;
    csync_debug(3, "get dirty host\n" );
    SQL_BEGIN(db, "Get hosts from dirty table",
	      "SELECT peername FROM dirty GROUP BY peername")
    {
	textlist_add(&tl, db_decode(SQL_V(0)), 0);
	csync_debug(3, "dirty host %s \n", tl->value);
    } SQL_END;

    return tl;
}

int db_sql_upgrade_db(db_conn_p db) 
{
    struct csync_prefix *p;
    csync_debug(1, "Upgrade database.. \n");

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
	    SQL(db, "upgrade database",
		"UPDATE file set filename=replace(filename,'%s', '%s') WHERE filename like '%s%%' ",
		prefix_encoded, path_encoded, prefix_encoded);
	    free(prefix);
	    free(prefix_encoded);
	}
    }
    exit(0);
    return 0;
}

int db_sql_update_format_v1_v2(db_conn_p db, const char *file, int recursive, int do_it)
{
    char *where_rec = "";
    textlist_p tl = 0, t;

    if ( recursive ) {
	if ( !strcmp(file, "/") )
	    ASPRINTF(&where_rec, "OR 1=1");
	else
	    ASPRINTF(&where_rec, "UNION ALL SELECT filename from file where filename > '%s/' "
		     "and filename < '%s0'",
		     url_encode(file), url_encode(file));
    }
    int total = 0, found = 0;
    SQL_BEGIN(db, "Checking for removed files",
	      "SELECT filename, checktxt from file where "
	      "filename = '%s' %s ORDER BY filename", url_encode(file), where_rec)
    {
	filename_p filename = url_decode(SQL_V(0));
	const char *checktxt = url_decode(SQL_V(1));
	const char *db_filename = db_escape(db, filename);
	// Differ then add
	if (strcmp(db_filename,SQL_V(0))) {
	    csync_debug(1, "URL encode %s => DB encode %s ", SQL_V(0),db_filename);
	    textlist_add2(&tl, filename, checktxt, 0);
	    found++;
	}
	//db->free(db, db_filename);
	total++;

    } SQL_END;
    printf("Found %d files out of %d to upgrade.\n", found, total);
    if (do_it)
	for (t = tl; t != 0; t = t->next) {
	    const char *encoded = db_escape(db, t->value);
	    SQL(db, "Updating url encoding to db encoding in file",
		"UPDATE file set filename='%s' WHERE filename = '%s'",
		encoded, url_encode(t->value));

	    SQL(db, "Updating url encoding to db encoding in dirty",
		"UPDATE dirty set filename='%s' WHERE filename = '%s'",
		encoded, url_encode(t->value));
	    //db->free(db, encoded);
	    total--;
	}

    textlist_free(tl);

    if ( recursive )
	free(where_rec);
    return 0;
};

textlist_p db_sql_get_hints(db_conn_p db) {
    textlist_p tl = NULL;
    SQL_BEGIN(db, "Check all hints",
	      "SELECT filename, recursive FROM hint")
    {
	textlist_add(&tl, db_decode(SQL_V(0)),
		     atoi(SQL_V(1)));
    } SQL_END;
    return tl; 
};

void db_sql_remove_hint(db_conn_p db, filename_p filename, int recursive)
{
    SQL(db,"Remove processed hint.",
	"DELETE FROM hint WHERE filename = '%s' "
	"and recursive = %d",
	db_escape(db, filename), recursive);
};

void db_sql_force(db_conn_p db, const char *realname, int recursive)
{
    char *pfname = strdup(prefixencode(realname));
    char *where_rec = "";

    if ( recursive ) {
	if ( !strcmp(realname, "/") )
	    ASPRINTF(&where_rec, "or 1=1");
	else
	    ASPRINTF(&where_rec, "or (filename > '%s/' "
		     "and filename < '%s0')",
		     db_escape(db, realname), db_escape(db, realname));
    };
    SQL(db, "Mark file as to be forced",
	"UPDATE dirty SET forced = 1 WHERE filename = '%s' %s",
	db_escape(db, realname), where_rec);

    if ( recursive )
	free(where_rec);
    free(pfname);
}

void db_sql_mark(db_conn_p db, char *active_peerlist, const char *realname,
		 int recursive)
{
    csync_check_usefullness(realname, recursive);
    // TODO For each active_peer?
    csync_mark(db, realname, 0, active_peerlist, OP_MARK, NULL, NULL, NULL, 0);
    const char *db_encoded = db_escape(db, realname);
		    
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

	SQL_BEGIN(db, "Adding dirty entries recursively",
		  "SELECT filename FROM file WHERE filename = '%s' %s",
		  db_encoded, where_rec)
	{
	    char *filename = strdup(db_decode(SQL_V(0)));
	    csync_mark(db, filename, 0, active_peerlist, OP_MOD,
		       NULL, NULL, NULL, 0);
	    free(filename);
	} SQL_END;
	free(where_rec);
    }
    //db->free(db, db_encoded);
}

void db_sql_list_hint(db_conn_p db)
{
    SQL_BEGIN(db, "DB Dump - Hint",
	      "SELECT recursive, filename FROM hint ORDER BY filename")
    {
	printf("%s\t%s\n", (char*)SQL_V(0), db_decode(SQL_V(1)));
    } SQL_END;
}

void db_sql_list_files(db_conn_p db)
{
    SQL_BEGIN(db, "DB Dump - File",
	      "SELECT checktxt, filename FROM file ORDER BY filename")
    {
	if (csync_find_next(0, db_decode(SQL_V(1)))) {
	    printf("%s\t%s\n", db_decode(SQL_V(0)), db_decode(SQL_V(1)));
	}
    } SQL_END;
}

textlist_p db_sql_list_file(db_conn_p db, filename_p filename, const char *myname, peername_p peername, int recursive)
{
    csync_debug(2, "db_sql_list_file %s <-> %s %s\n", myname, peername, filename);

    int len = strlen(filename); 
    char where_sql[2*len + 50];
    where_sql[0] = 0;
    textlist_p tl = 0;
    int limit_by_file = strcmp("-", filename);
    if (limit_by_file) {
	char recursive_str[len + 30];
	recursive_str[0] = 0;

	const char *file_enc = db_escape(db, filename);
	if (recursive)
	    sprintf(recursive_str, "or filename like '%s/%%'", file_enc);
	sprintf(where_sql, "WHERE filename like '%s' %s", file_enc, recursive_str);
    }
    SQL_BEGIN(db, "DB Dump - Files for sync pair",
	      "SELECT checktxt, filename FROM file %s ORDER BY filename",
	      where_sql)
    {
	if ( csync_match_file_host(db_decode(SQL_V(1)), 
				   myname, peername, 0) ) {
	    textlist_add2( &tl, SQL_V(0), SQL_V(1), 0);
	    csync_debug(2, "db_sql_list_file  %s:%s\n", peername, filename);
	}
    } SQL_END;

    return tl;
}

int db_sql_move_file(db_conn_p db, filename_p filename, const char *newname) {
/*    
    char *update_sql = 0;
    filename_p filename_encoded = db_escape(db, filename);
    const char *newname_encoded  = db_escape(db, newname);
    int filename_length = strlen(filename_encoded);
    int newname_length  = strlen(filename_encoded);
*/
    //  ASPRINTF(&update_sql, "")
    //csync_debug(1, "SQL UPDATE PATH: %s\n", update_sql);
    /*
      SQL(db, "Update moved files in DB ", "UPDATE file set filename = concat('%s',substring(filename,%d)) where filename = '%s' or filename like '%s/%%'",
      newname_encoded, filename_length+1, filename_encoded, filename_encoded);
    */
    //  free(update_sql);
    csync_debug(0, "NOT IMPLEMENTED: csync_db_update_path (update DB recursive)");
    return 0;
}

void db_sql_list_sync(db_conn_p db, const char *myname, const char *peername)
{
    SQL_BEGIN(db, "DB Dump - File",
	      "SELECT checktxt, filename FROM file ORDER BY filename")
    {
	if ( csync_match_file_host(db_decode(SQL_V(1)), myname, peername, 0) ) {
	    printf("%s\t%s\n", db_decode(SQL_V(0)), db_decode(SQL_V(1)));
	}
    } SQL_END;
}

textlist_p db_sql_get_commands(db_conn_p db)
{
    textlist_p tl = 0;
    SQL_BEGIN(db, "Checking for scheduled commands",
	      "SELECT command, logfile FROM action GROUP BY command, logfile")
    {
	textlist_add2(&tl, SQL_V(0), SQL_V(1), 0);
    } SQL_END;
    return tl;
}

textlist_p db_sql_get_command_filename(db_conn_p db, const char *command, const char *logfile)
{
    textlist_p tl = 0;
    SQL_BEGIN(db,
	      "Checking for removed files",
	      "SELECT filename from action WHERE command = '%s' "
	      "and logfile = '%s'", command, logfile)
    {
	textlist_add(&tl, SQL_V(0), 0);
    } SQL_END;
    return tl;
}

int db_sql_dir_count(db_conn_p db, const char *dirname)
{
    int count = 0;
    SQL_BEGIN(db, "Check if directory count",
	      "SELECT count(*) FROM file WHERE filename like '%s/%%'",
	      db_escape(db, dirname))
    {
	count = (SQL_V(0) ? atoi(SQL_V(0)) : 0);
    } SQL_FIN {
	csync_debug(2, "%d files within directory '%s': \n", count, dirname);
    } SQL_END;
    return count; 
}


void db_sql_add_hint(db_conn_p db, const char *file, int recursive)
{
    SQL(db, "Adding Hint",
	"INSERT INTO hint (filename, recursive) "
	"VALUES ('%s', %d)", db_escape(db, file), recursive);
}

void db_sql_remove_dirty(db_conn_p db, peername_p peername,
			 filename_p filename, int recursive_NOT_IMPLEMENTED)
{
    SQL(db, "Deleting old dirty file entries",
	"DELETE FROM dirty WHERE filename = '%s' AND peername like '%s'",
	db_escape(db, filename), db_escape(db, peername));
}

textlist_p db_sql_find_dirty(db_conn_p db, int (*filter) (filename_p filename, const char *localname, peername_p peername))
{
    textlist_p tl = 0;
    SQL_BEGIN(db, "Query dirty DB",
	      "SELECT filename, myname, peername FROM dirty") {
	filename_p filename   = db_decode(SQL_V(0));
	const char *localname = db_decode(SQL_V(1));
	peername_p peername  = db_decode(SQL_V(2));
	if (!filter(filename, localname, peername)) {
	    csync_debug(1, "Remove '%s:%s' from dirty. No longer in configuration", peername, filename);
	    textlist_add2(&tl, filename, peername, 0);
	}
    } SQL_END;

    return tl; 
}

textlist_p db_sql_find_file(db_conn_p db, filename_p pattern,
			    int (*filter_file) (filename_p filename))
{
    textlist_p tl = 0;    
    SQL_BEGIN(db, "Query file DB",
	      "SELECT filename FROM file where filename like '%s%%' ",
	      pattern) {
	filename_p filename  = db_decode(SQL_V(0));
	if (!filter_file(filename)) {
	    textlist_add(&tl, filename, 0);
	}
    } SQL_END;
    return tl;
}

/*
textlist_p db_sql_get_file_info_by_name(db_conn_p db, filename_p filename, const char *checktxt, const char *digest,
					int (*check_file_info) (textlist_p *p_tl, const char *checktxt, filename_p filename, const char *digest))
{
    textlist_p p_tl = 0;    
    SQL_BEGIN(db, "DB Dump - File",
	      "SELECT checktxt, filename, digest FROM file %s%s%s ORDER BY filename",
	      filename ? "WHERE filename = '" : "",
	      filename ? db_escape(db, filename) : "",
	      filename ? "'" : "")
    {
	const char *l_file     = db_decode(SQL_V(1)),
	    *l_checktxt = db_decode(SQL_V(0)),
	    *l_digest   = db_decode(SQL_V(2));
	check_file_info(&p_tl, checktxt, filename, digest);
    } SQL_END;

    return p_tl;
}
*/
	
void db_sql_remove_file(db_conn_p db, filename_p filename, int recursive)
{
    if (recursive)
	csync_debug(0, "ERROR: Recursive delete on file is NOT IMPLEMENTED");
    SQL(db, "Remove old file from file db",
	"DELETE FROM file WHERE filename = '%s'", db_escape(db, filename));
}

void db_sql_add_dirty_simple(db_conn_p db, const char *myname, peername_p peername, filename_p filename)
{
    SQL(db, "Add operation",
	"INSERT INTO dirty (myname, peername, filename) values ('%s', '%s', '%s')",
	db_escape(db, myname), db_escape(db, peername), db_escape(db, filename));
}

void db_sql_clear_operation(db_conn_p db, const char *myname, peername_p peername, filename_p filename)
{
    SQL(db, "Clear operation",
	"UPDATE dirty set operation = '-' where myname = '%s' and peername = '%s' and filename = '%s'",
	db_escape(db, myname), db_escape(db, peername), db_escape(db, filename));
}

textlist_p db_sql_get_dirty_by_peer_match(db_conn_p db, const char *myname, peername_p peername, int recursive, const char *patlist[], int numpat,
				    int (*get_dirty_by_peer) (filename_p filename, const char *pattern, int recursive))
{
    textlist_p tl = 0;
    SQL_BEGIN(db, "Get files for host from dirty table",
	      "SELECT filename, operation, op, other, checktxt, digest, forced  FROM dirty WHERE peername = '%s' AND myname = '%s' "
	      "ORDER by op DESC, filename DESC",
	      db_escape(db, peername), db_escape(db, myname));
    {
	filename_p filename  = db_decode(SQL_V(0));
	const char *op_str    = db_decode(SQL_V(1));
	operation_t operation = (SQL_V(2) ? atoi(SQL_V(2)) : 0);
	const char *other     = db_decode(SQL_V(3));
	const char *checktxt  = db_decode(SQL_V(4));
	const char *digest    = db_decode(SQL_V(5));
	const char *forced_str= db_decode(SQL_V(6));
	int forced = forced_str ? atoi(forced_str) : 0;
	int found = 0;
	for (int i = 0 ; i < numpat && !found; i++) {
	    csync_debug(3, "compare file with pattern %s\n", patlist[i]);
	    if (get_dirty_by_peer == NULL || get_dirty_by_peer(filename, patlist[i], recursive)) {
		textlist_add5(&tl, filename, op_str, other, checktxt, digest, forced, operation);
		found = 1;
	    }
	}
	csync_debug(3, "dirty: %s:%s %d\n", peername, filename, found);
    } SQL_END;

    return tl;
}

textlist_p db_sql_get_dirty_by_peer(db_conn_p db, const char *myname, peername_p peername) {
    const char *patlist = "/";
    return db_sql_get_dirty_by_peer_match(db, myname, peername, 1, &patlist, 1, NULL);
}


textlist_p db_sql_get_old_operation(db_conn_p db, const char *checktxt,
				    peername_p peername, filename_p filename, 
				    const char *device, const char *ino,
				    BUF_P buffer)
{
    textlist_p tl = 0;
    SQL_BEGIN(db, "Checking old opertion(s) on dirty",
	      "SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE "
	      "(checktxt = '%s' OR filename = '%s') AND device = %s AND inode  = %s AND peername = '%s' "
	      "ORDER BY timestamp ",
	      db_escape(db, checktxt),
	      db_escape(db, filename),
	      db_escape(db, device),
	      db_escape(db, ino),
	      db_escape(db, peername)
	)
    {
	// TODO remove usage of string operation
	operation_t old_operation = csync_operation(SQL_V(0));
	const char *old_filename = db_decode(SQL_V(1));
	const char *old_other    = db_decode(SQL_V(2));
	const char *old_checktxt = SQL_V(3);
	const char *old_digest   = SQL_V(4);
	operation_t op = SQL_V(5) ? atoi(SQL_V(5)) : 0;
	if (op != old_operation)
	    csync_debug(0, "ERROR: operation differs: %s != %d %s\n", SQL_V(0), op, csync_operation_str(op));
	textlist_add4(&tl, old_filename, old_other, old_checktxt, old_digest, old_operation);
	break; 
    } SQL_FIN {
    } SQL_END;

    return tl;
}


int db_sql_add_dirty(db_conn_p db, const char *file_new,
		     int new_force,
		     const char *myname, peername_p peername,
		     const char *operation, const char *checktxt,
		     const char *dev, const char *ino, const char *result_other,
		     operation_t op, int mode)
{
    BUF_P buf = buffer_init();
    const char *result_enc = buffer_quote(buf, db_escape(db, result_other));
    SQL(db,
	"Marking File Dirty",
	"INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode) "
	"VALUES ('%s', %s, '%s', '%s', '%s', '%s', %s, %s, %s, %d, %d)",
	db_escape(db, file_new),
	new_force ? "1" : "0",
	db_escape(db, myname),
	db_escape(db, peername),
	csync_mode_op_str(mode, op),
	db_escape(db, checktxt),
	(dev ? dev : "NULL"),
	(ino ? ino : "NULL"),
	result_enc,
	op,
	mode
	);
    //db->free(db, encoded);
    buffer_destroy(buf);
    return 0;
};

unsigned long long fstat_dev(struct stat *file_stat) {
    return (file_stat->st_dev != 0 ? file_stat->st_dev : file_stat->st_rdev);
}

int db_sql_update_file(db_conn_p db, filename_p encoded, const char *checktxt_encoded, struct stat *file_stat,
		       const char *digest)
{
    BUF_P buf = buffer_init();
    SQL(db,
	"Update file entry",
	"UPDATE file set checktxt='%s', device=%lu, inode=%llu, "
	"                digest=%s, mode=%u, mtime=%lu, size=%lu where filename = '%s'",
	checktxt_encoded, fstat_dev(file_stat), file_stat->st_ino, buffer_quote(buf, digest),
	(07777777 & file_stat->st_mode), file_stat->st_mtime, file_stat->st_size, encoded);

    buffer_destroy(buf);
    return 0;
}
		       
int db_sql_insert_file(db_conn_p db, filename_p encoded, const char *checktxt_encoded, struct stat *file_stat,
		       const char *digest)
{
    BUF_P buf = buffer_init();
    SQL(db,
	"Adding new file entry",
	"INSERT INTO file (filename, checktxt, device, inode, digest, mode, size, mtime) "
	"VALUES ('%s', '%s', %lu, %llu, %s, %u, %lu, %lu)",
	encoded,
	checktxt_encoded,
	fstat_dev(file_stat),
	file_stat->st_ino,
	buffer_quote(buf, digest),
	file_stat->st_mode,
	file_stat->st_size,
	file_stat->st_mtime
	);
    buffer_destroy(buf);
    return 0;
}

void csync_generate_recursive_sql(const char *file_encoded, int recursive, char **where_rec) {
  if ( recursive ) {
    if ( !strcmp(file_encoded, "/") )
      ASPRINTF(where_rec, "OR 1=1");
    else {
      ASPRINTF(where_rec, "OR filename > '%s/' and filename < '%s0'",
	       file_encoded, file_encoded);
    }
  }
}

int db_sql_check_delete(db_conn_p db, const char *file, int recursive, int init_run)
{
    char *where_rec = "";
    textlist_p tl = 0, t;
    struct stat st;
    const char *SELECT_SQL = "SELECT filename, checktxt, device, inode, mode from file ";
    csync_debug(1, "Checking for deleted files %s%s\n", file, (recursive ? " recursive." : "."));
    const char *file_encoded = db_escape(db, file);
    csync_debug(3,"file %s encoded %s \n", file, file_encoded);

    csync_generate_recursive_sql(file_encoded, recursive, &where_rec);

    SQL_BEGIN(db, "Checking for removed files",
	      "%s where (filename = '%s' %s) ORDER BY filename",
	      SELECT_SQL, db_escape(db, file), where_rec)
    {
	filename_p filename  = db_decode(SQL_V(0));
	const char *checktxt = db_decode(SQL_V(1));
	const char *device   = db_decode(SQL_V(2));
	const char *inode    = db_decode(SQL_V(3));
	int mode    = (SQL_V(4) ? atoi(SQL_V(4)) : 0);
     
	if (!csync_match_file(filename))
	    continue;

	// Not found
	if ( lstat_strict(filename, &st) != 0 || csync_check_pure(filename))
	    textlist_add4(&tl, filename, checktxt, device, inode, mode);
    } SQL_END;
    int count_deletes = 0;
    for (t = tl; t != 0; t = t->next) {
	if (!init_run) {
	    //csync_debug(0, "check_dirty (rm): before mark (all) \n");
	    csync_mark(db, t->value, 0, 0, OP_RM, t->value2, t->value3, t->value4, t->intvalue);
	    count_deletes++;
	}
	SQL(db,
	    "Delete file from DB. It isn't with us anymore.",
	    "delete from file WHERE filename = '%s'",
	    db_escape(db, t->value));
    }

    textlist_free(tl);
 
    if ( recursive )
    	free(where_rec);
    return count_deletes;
}

int db_sql_add_action(db_conn_p db, filename_p filename, const char *prefix_cmd, const char *logfile)
{
    SQL(db,
	"Add action to database",
	"INSERT INTO action (filename, command, logfile) "
	"VALUES ('%s', '%s', '%s')", db_escape(db, filename),
	db_escape(db, prefix_cmd), db_escape(db, prefixsubst(logfile)));
    return 0;
}

int db_sql_del_action(db_conn_p db, filename_p filename, const char *prefix_cmd)
{
    SQL(db,
	"Del action before insert",
	"DELETE FROM action WHERE filename='%s' AND command='%s' ",
	db_escape(db, filename), db_escape(db, prefix_cmd));
    return 0;
}
    
int db_sql_remove_action_entry(db_conn_p db, filename_p filename, const char *command, const char *logfile)
{
    SQL(db, "Remove action entry",
	"DELETE FROM action WHERE command = '%s' "
	"and logfile = '%s' and filename = '%s'",
	command, logfile, db_escape(db, filename));
    return 0;
}    
    
textlist_p db_sql_check_file_same_dev_inode(db_conn_p db, filename_p filename, const char *checktxt, const char *digest, struct stat *st)
{
    textlist_p tl = 0;
    const char *sql =
	" SELECT filename, checktxt, digest FROM file "
	" WHERE "
	    " device = %lu "
	" AND inode = %llu "
	" AND filename != '%s' "
	" AND checktxt  = '%s' "
	" AND digest    = '%s' ";

    SQL_BEGIN(db, "check_file_same_dev_inode",
	      sql,
	      st->st_dev, st->st_ino, db_escape(db, filename), checktxt, digest) {
	const char *db_filename = db_decode(SQL_V(0));
	const char *db_checktxt = db_decode(SQL_V(1));
	const char *db_digest   = db_decode(SQL_V(2));
	operation_t operation = OP_HARDLINK;
	struct stat st;
	if (lstat_strict(db_filename, &st) != 0) {
	    operation = OP_RM;
	}
	if (!digest || !db_digest || !strcmp(digest, db_digest)) {
	    textlist_add_new2(&tl, db_filename, db_checktxt, operation);
	}
	else {
	    csync_debug(1, "Different digest for %s %s ", digest, db_digest);
	}
    } SQL_FIN {
	csync_debug(2, "%d files with same dev:inode (%lu:%llu) as file: %s\n",
		    SQL_COUNT, (unsigned long long) st->st_dev, (unsigned long long) st->st_ino, filename);
    } SQL_END;
    return tl;
}

textlist_p db_sql_check_dirty_file_same_dev_inode(db_conn_p db,
						  peername_p peername,
						  filename_p filename,
						  const char *checktxt,
						  const char *digest,
						  struct stat *st)
{
    char *peername_enc = strdup(db_escape(db, peername));
    char *filename_enc = strdup(db_escape(db, filename));
    const char *sqls[] = { " SELECT filename, checktxt, digest, operation FROM dirty "
			   " WHERE device = %lu and inode = %llu and filename != '%s' and peername = '%s' " ,
			   " SELECT filename, checktxt, digest, NULL FROM file "
			   " WHERE device = %lu AND inode = %llu AND filename != '%s' ",
    };
    textlist_p tl = 0;
    
    for (int index = 0; index < 2; index++) {
	SQL_BEGIN(db, "check_dirty_file_same_dev_inode (not checktxt, digest)",
		  sqls[index],
		  st->st_dev, st->st_ino, filename_enc, peername_enc) {
	    const char *db_filename = db_decode(SQL_V(0));
	    const char *db_checktxt = db_decode(SQL_V(1));
	    const char *db_digest   = db_decode(SQL_V(2));
	    const char *db_operation= db_decode(SQL_V(3));
	
	    if (!digest || !db_digest || !strcmp(digest, db_digest)) {
		textlist_add_new3(&tl, db_filename, db_checktxt, db_operation);
	    }
	    else {
		csync_debug(1, "Different digest for %s %s ", digest, db_digest);
	    }
	} SQL_FIN {
	    csync_debug(2, "%d files with same dev:inode (%lu:%llu) as file: %s\n",
			SQL_COUNT, (unsigned long long) st->st_dev, (unsigned long long) st->st_ino, filename);
	} SQL_END;
    }
    free(filename_enc);
    free(peername_enc);
    return tl;
}

int  db_sql_init(db_conn_p conn) {
    // SQL statements, using common SQL layer
    conn->mark       = db_sql_mark;
    conn->list_dirty = db_sql_list_dirty;
    conn->list_hint  = db_sql_list_hint;
    conn->get_hints  = db_sql_get_hints;
    conn->list_files = db_sql_list_files;
    conn->list_file  = db_sql_list_file;
    conn->list_sync  = db_sql_list_sync;
    conn->is_dirty   = db_sql_is_dirty;
    conn->force      =  db_sql_force;
    conn->upgrade_db = db_sql_upgrade_db;
    conn->add_hint   = db_sql_add_hint;
    conn->remove_hint= db_sql_remove_hint;
    conn->remove_file= db_sql_remove_file;
    conn->get_old_operation = db_sql_get_old_operation;
    conn->delete_file= db_sql_remove_file;
    conn->find_dirty = db_sql_find_dirty;
    conn->find_file = db_sql_find_file;
    conn->add_dirty  = db_sql_add_dirty;
    conn->remove_dirty  = db_sql_remove_dirty;
//    conn->get_dirty_by_peer = db_sql_get_dirty_by_peer;
    conn->get_dirty_by_peer_match  = db_sql_get_dirty_by_peer_match;
//    conn->clear_dirty = db_sql_clear_dirty;
//    conn->clear_operation = db_sql_clear_operation;
    conn->get_commands = db_sql_get_commands;
    conn->get_command_filename = db_sql_get_command_filename;
    conn->update_file = db_sql_update_file;
    conn->insert_file = db_sql_insert_file;
    conn->check_delete  = db_sql_check_delete;
    conn->add_action = db_sql_add_action;
    conn->del_action = db_sql_del_action;
    conn->remove_action_entry = db_sql_remove_action_entry;
    conn->check_file = db_sql_check_file;
    conn->check_file_same_dev_inode = db_sql_check_file_same_dev_inode;
    conn->check_dirty_file_same_dev_inode = db_sql_check_dirty_file_same_dev_inode;
    conn->non_dirty_files_match = db_sql_non_dirty_files_match;
    conn->get_dirty_hosts = db_sql_get_dirty_hosts;
    conn->dir_count = db_sql_dir_count;
    conn->move_file = db_sql_move_file;
    return 0; 
};

