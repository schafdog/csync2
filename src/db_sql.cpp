/* -*- c-file-style: "k&r"; c-basic-offset: 4; tab-width: 4; indent-tabs-mode: t - */

#include "csync2.hpp"
#include "check.hpp"
#include "urlencode.hpp"
#include "utils.hpp"
#include "checktxt.hpp"
#include "update.hpp"
#include <unistd.h>
#include <time.h>
#include "db_sql.hpp"
#include "db.hpp"

using namespace std;

int DbSql::schema_version()
{
	int version = -1;
	int rows = 0;
	if ((rows = csync_db_sql(this, NULL, // "Failed to update table file",
							 "update file set filename = NULL where filename = NULL ")) >= 0)
	{
		version = 1;
	}

	if (csync_db_sql(this, NULL, // "Failed to show table host",
					 "update host set host = NULL where host = NULL") >= 0)
	{
		version = 2;
	}
	return version;
}

int DbSql::check_file(const char *file, const char *encoded, char **other, char *checktxt,
							 struct stat *file_stat, BUF_P buffer, int *operation, char **digest, int ignore_flags, dev_t *old_no)
{
	int db_flags = 0;
	int db_version = this->version;
	SQL_BEGIN(this, "Checking File",
			  "SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = '%s' "
			  "AND filename = '%s' ",
			  g_myhostname, encoded)
	{
		db_version = csync_get_checktxt_version(SQL_V(0));
		if (db_version < 1 || db_version > 2)
		{
			csync_error(0, "Error extracting version from checktxt: %s", SQL_V(0));
		}
		const char *checktxt_db = db_decode(SQL_V(0));
		const char *checktxt_same_version = checktxt;
		const char *inode = SQL_V(1);
		const char *device = SQL_V(2);
		const char *digest_p = SQL_V(3);
		*digest = digest_p ? buffer_strdup(buffer, digest_p) : NULL;
		long mode;
		long size;
		long mtime;
		// Missing any value then upgrade
		db_flags |= (SQL_V_long(4, &mode) || SQL_V_long(5, &size) || SQL_V_long(6, &mtime) ? IS_UPGRADE : 0);

		int ug_flag = 0;
		if (strstr(checktxt_db, ":user=") != NULL)
			ug_flag |= SET_USER;
		if (strstr(checktxt_db, ":group=") != NULL)
			ug_flag |= SET_GROUP;
		struct stat old_stat;
		int dev_inode;
		if ((dev_inode = compare_dev_inode(file_stat, device, inode, &old_stat)))
		{
			csync_info(2, "File %s has changed device:inode %s:%s -> %llu:%llu %o \n",
					   file, device, inode, file_stat->st_dev, file_stat->st_ino, file_stat->st_mode);

			if (dev_inode == DEV_CHANGED)
			{
				db_flags |= DEV_CHANGE;
				csync_info(2, "File %s has only changed device %s -> %llu\n", file, device, file_stat->st_dev);
				*old_no = old_stat.st_dev;
			}
			else
				db_flags |= IS_UPGRADE;
		}
		if (!*digest && strstr(checktxt, "type=reg"))
		{
			db_flags |= CALC_DIGEST;
			db_flags |= IS_UPGRADE;
		}
		if (db_version != this->version || ug_flag != (SET_USER | SET_GROUP))
		{
			checktxt_same_version = csync_genchecktxt_version(file_stat, file, ug_flag, db_version);
			if (csync_cmpchecktxt(checktxt, checktxt_same_version))
				db_flags |= IS_UPGRADE;
		}
		if (csync_cmpchecktxt(checktxt_same_version, checktxt_db))
		{
			int file_mode = file_stat->st_mode & S_IFMT;
			int flag = OP_MOD;
			if (file_mode != (mode & S_IFMT))
			{
				csync_info(1, "File %s has changed mode %d => %d \n", file, (mode & S_IFMT), file_mode);
				flag = OP_MOD2;
				//*operation |= OP_SYNC;
				db_flags |= IS_UPGRADE;
			}
			if (S_ISDIR(file_mode))
				*operation = OP_MKDIR | flag;
			else
				*operation = OP_NEW | flag;

			csync_info(3, "%s has changed: \n    %s \nDB: %s %s\n",
					   file, checktxt_same_version, checktxt_db, csync_operation_str(*operation));
			csync_info(3, "ignore flags: %d\n", ignore_flags);
			if ((ignore_flags & FLAG_IGN_DIR) && file_stat && S_ISDIR(file_stat->st_mode))
				db_flags |= IS_UPGRADE;
			else
				db_flags |= IS_DIRTY;
		}
	}
	SQL_FIN
	{
		if (SQL_COUNT == 0)
		{
			csync_info(2, "New file: %s\n", file);
			*operation = OP_NEW;
			if (S_ISREG(file_stat->st_mode))
			{
				db_flags |= CALC_DIGEST;
			}
			else if (S_ISDIR(file_stat->st_mode))
			{
				*operation = OP_MKDIR;
			}
			else if (S_ISLNK(file_stat->st_mode))
			{
				// TODO get max path
				int max = 1024;
				char *target = static_cast<char *>(malloc(max));
				int len = readlink(file, target, max - 1);
				if (len > 0)
				{
					target[len] = 0;
					*other = buffer_strdup(buffer, target);
				}
				else
					csync_error(0, "Failed to read link on %s\n", file);
				free(target);
			}
			db_flags |= IS_DIRTY;
		}
	}
	SQL_END;
	return db_flags;
}

int DbSql::is_dirty(peername_p str_peername, filename_p str_filename, int *operation, int *mode)
{
	int rc = 0;
	const char *peername = str_peername.c_str();
	const char *filename = str_filename.c_str();

	SQL_BEGIN(this, "Check if file is dirty",
			  "SELECT op, mode FROM dirty "
			  "WHERE filename = '%s' and peername = '%s' and myname = '%s' LIMIT 1",
			  escape(filename), escape(peername), escape(g_myhostname))
	{
		rc = 1;
		*operation = (SQL_V(0) ? atoi(SQL_V(0)) : 0);
		*mode = (SQL_V(1) ? atoi(SQL_V(1)) : 0);
		csync_info(3, "DbSql::is_dirty %s:%s %d %d\n", filename, peername, *operation, *mode);
	}
	SQL_END;
	return rc;
}

int DbSql::list_dirty(const std::set<std::string> &active_peers, const char *realname, int recursive)
{
	// unused
	(void)recursive;

	int retval = 0;
	char *where = strdup("");
	if (realname[0] != 0)
	{
		const char *db_encoded = escape(realname);
		ASPRINTF(&where, " (filename = '%s' OR "
						 "  filename LIKE '%s/%%') AND ",
				 db_encoded, db_encoded);
	}
	SQL_BEGIN(this, "DB Dump - Dirty",
			  "SELECT forced, myname, peername, filename, operation, op, (op & %u) AS type FROM dirty "
			  "WHERE %s peername not in (SELECT host FROM host WHERE status = 1) AND myname = '%s' "
			  "ORDER BY type, filename",
			  OP_FILTER, where, g_myhostname)
	{
		const char *force_str = SQL_V(0);
		const char *myname = db_decode(SQL_V(1));
		const char *peername = db_decode(SQL_V(2));
		const char *filename = db_decode(SQL_V(3));
		const char *op_str = db_decode(SQL_V(4));
		const char *op = db_decode(SQL_V(5));
		const char *type = db_decode(SQL_V(6));

		if (csync_find_next(0, filename, 0))
		{
			if (match_peer(active_peers, peername))
			{
				int force = 0;
				if (force_str)
					force = atoi(force_str);
				printf("%s%s\t%s\t%s\t%s\t%s\t%s\n",
					   (force ? "F " : "  "), op_str,
					   myname, peername, filename, (op ? op : "NULL"), type);
				retval++;
			}
		}
	}
	SQL_END;
	free(where);

	return retval;
}

textlist_p DbSql::non_dirty_files_match(filename_p pattern)
{
	textlist_p tl = 0;
	SQL_BEGIN(this, "Get non-dirty files from file table",
			  "SELECT filename, checktxt, digest FROM file WHERE hostname = '%s' AND filename like '%s%%' "
			  " AND filename not in (select filename from dirty where myname = '%s' AND filename like '%s%%')"
			  " ORDER by filename ASC",
			  g_myhostname, pattern.c_str(), g_myhostname, pattern.c_str())
	{
		filename_p filename = db_decode(SQL_V(0));
		const char *checktxt = db_decode(SQL_V(1));
		const char *digest = db_decode(SQL_V(2));
		if (compare_files(filename, pattern, 0 /*recursive*/))
		{
			textlist_add3(&tl, filename, checktxt, digest, 0);
		}
	}
	SQL_END;

	return tl;
}

textlist_p DbSql::get_dirty_hosts()
{
	textlist_p tl = 0;
	csync_debug(3, "get dirty host\n");
	SQL_BEGIN(this, "Get hosts from dirty table",
			  "SELECT peername FROM dirty WHERE myname = '%s' "
			  "AND peername NOT IN (SELECT host FROM host WHERE status = 1) GROUP BY peername",
			  g_myhostname)
	{
		textlist_add(&tl, db_decode(SQL_V(0)), 0);
		csync_debug(3, "dirty host %s \n", tl->value);
	}
	SQL_END;

	return tl;
}

int DbSql::upgrade_db()
{
	struct csync_prefix *p;
	csync_info(1, "Upgrade database.. \n");

	for (p = csync_prefix; p; p = p->next)
	{
		if (p->name && p->path)
		{
			int length = strlen(p->name) + 3;
			char *prefix = static_cast<char *>(malloc(length));
			prefix[0] = '%';
			strcpy(prefix + 1, p->name);
			strcpy(prefix + length - 2, "%");
			char *prefix_encoded = strdup(url_encode(prefix));
			const char *path_encoded = url_encode(p->path);

			csync_info(1, "Replace prefix %s with path %s (%s)", prefix_encoded, p->path, path_encoded);
			SQL(this, "upgrade database",
				"UPDATE file set filename=replace(filename,'%s', '%s') WHERE filename like '%s%%' ", prefix_encoded,
				path_encoded, prefix_encoded);
			free(prefix);
			free(prefix_encoded);
		}
	}
	exit(0);
	return 0;
}

textlist_p DbSql::get_hints()
{
	textlist_p tl = NULL;
	SQL_BEGIN(this, "Check all hints",
			  "SELECT filename, recursive FROM hint")
	{
		textlist_add(&tl, db_decode(SQL_V(0)),
					 atoi(SQL_V(1)));
	}
	SQL_END;
	return tl;
};

static char *csync_generate_recursive_sql(const char *file_encoded, int recursive, int prepend_where, int append_and)
{
	char *where_rec;
	const char *where = "WHERE";
	const char *and_str = " AND ";
	if (prepend_where == 0)
		where = "";
	if (append_and == 0)
		and_str = "";

	if (recursive)
	{
		if (file_encoded == NULL || !strcmp(file_encoded, "/"))
			ASPRINTF(&where_rec, "%s", "");
		else
		{
			ASPRINTF(&where_rec, "%s (filename = '%s' OR filename LIKE '%s/%%') %s", where, file_encoded, file_encoded,
					 and_str);
		}
	}
	else
	{
		if (file_encoded != NULL)
			ASPRINTF(&where_rec, "%s filename = '%s' %s", where, file_encoded, and_str);
		else
			// Also recursive
			ASPRINTF(&where_rec, "%s", "");
	}
	return where_rec;
}

// No longer in use
int DbSql::update_format_v1_v2(filename_p file, int recursive, int do_it)
{
	textlist_p tl = 0, t;

	int total = 0, found = 0;
	const char *file_enc = url_encode(file);
	char *where_rec = csync_generate_recursive_sql(file_enc, recursive, 0, 1);
	SQL_BEGIN(this, "Upgrade to v1-v2",
			  "SELECT filename, checktxt FROM file WHERE "
			  "%s"
			  "hostname = '%s' "
			  "ORDER BY filename",
			  where_rec, g_myhostname)
	{
		filename_p filename = url_decode(SQL_V(0));
		const char *checktxt = url_decode(SQL_V(1));
		const char *db_filename = escape(filename);
		// Differ then add
		if (strcmp(db_filename, SQL_V(0)))
		{
			csync_info(1, "URL encode %s => DB encode %s ", SQL_V(0), db_filename);
			textlist_add2(&tl, filename, checktxt, 0);
			found++;
		}
		// this->free(this, db_filename);
		total++;
	}
	SQL_END;
	printf("Found %d files out of %d to upgrade.\n", found, total);
	if (do_it)
		for (t = tl; t != 0; t = t->next)
		{
			const char *encoded = escape(t->value);
			SQL(this, "Updating url encoding to db encoding in file",
				"UPDATE file set filename='%s' WHERE filename = '%s'", encoded, url_encode(t->value));

			SQL(this, "Updating url encoding to db encoding in dirty",
				"UPDATE dirty set filename='%s' WHERE filename = '%s'", encoded, url_encode(t->value));
			// this->free(this, encoded);
			total--;
		}

	textlist_free(tl);
	free(where_rec);
	return 0;
};

void DbSql::remove_hint(filename_p filename, int recursive)
{
	SQL(this, "Remove processed hint.", "DELETE FROM hint WHERE filename = '%s' "
								  "and recursive = %d",
		escape(filename), recursive);
};

void DbSql::force(const char *realname, int recursive)
{
	char *where_rec = csync_generate_recursive_sql(escape(realname), recursive, 0, 1);
	SQL(this, "Mark file as to be forced", "UPDATE dirty SET forced = 1 WHERE %s myname = '%s'", where_rec, g_myhostname);

	free(where_rec);
}

void DbSql::mark(const std::set<std::string>& active_peerlist, const char *realname, int recursive)
{
	if (csync_check_usefullness(realname, recursive) == -1)
		return; // Skipping

	struct stat file_st;
	const char *db_encoded = escape(realname);
	int rc = stat(realname, &file_st);
	time_t mtime = time(NULL);
	char *checktxt = NULL;
	char *device = NULL;
	char *inode = NULL;
	int mode = 0;
	if (!rc)
	{
		mtime = file_st.st_mtime;
		mode = file_st.st_mode;
		// calc checktxt, device, inode
	}
	csync_mark(this, realname, "", active_peerlist, OP_MARK, checktxt, device, inode, mode, mtime);

	if (recursive)
	{
		textlist_p tl = 0;
		// Missing marking files only in FS
		char *where_rec = csync_generate_recursive_sql(db_encoded, recursive, 0, 1);

		SQL_BEGIN(this, "Adding dirty entries recursively",
				  "SELECT filename, mode, checktxt, digest, device, inode, mtime FROM file "
				  "WHERE %s hostname = '%s' ORDER BY filename DESC",
				  where_rec, g_myhostname)
		{
			const char *filename = SQL_V(0);
			int db_mode = (SQL_V(1) ? atoi(SQL_V(1)) : 0);
			const char *db_checktxt = SQL_V(2);
			// const char *digest   = SQL_V(3);
			const char *db_device = SQL_V(4);
			const char *db_inode = SQL_V(5);
			const char *db_mtime_str = SQL_V(6);
			int db_mtime = atoi(db_mtime_str);
			textlist_add5(&tl, filename, db_checktxt, db_device, db_inode, db_mtime_str, db_mode, db_mtime);
		}
		SQL_END;
		free(where_rec);
		textlist_p ptr = tl;
		while (tl != 0)
		{
			char *db_filename = tl->value;
			char *db_checktxt = tl->value2;
			char *db_device = tl->value3;
			char *db_inode = tl->value4;
			// char *mtime_str = tl->value5;
			int db_mode = tl->intvalue;
			int db_mtime = tl->operation;
			int rc_stat = stat(db_filename, &file_st);
			if (!rc_stat)
			{
				// file_st.st_dev;
				// file_st.st_ino;
				db_mode = file_st.st_mode;
				db_mtime = file_st.st_mtime;
			}
			csync_mark(this, db_filename, "", active_peerlist, OP_MARK, db_checktxt, db_device, db_inode, db_mode, db_mtime);
			tl = tl->next;
		}
		textlist_free(ptr);
	}
}

void DbSql::list_hint()
{
	SQL_BEGIN(this, "DB Dump - Hint",
			  "SELECT recursive, filename FROM hint ORDER BY filename")
	{
		printf("%s\t%s\n", SQL_V(0), db_decode(SQL_V(1)));
	}
	SQL_END;
}

void DbSql::list_files(filename_p realname)
{
	const char *db_encoded = escape(realname);
	char *where = csync_generate_recursive_sql(db_encoded, 1, 0, 1);

	SQL_BEGIN(this, "DB Dump - File",
			  "SELECT checktxt, filename FROM file WHERE %s hostname = '%s'"
			  " ORDER BY filename",
			  where, g_myhostname)
	{
		if (csync_find_next(0, db_decode(SQL_V(1)), 0))
		{
			printf("%s\t%s\n", db_decode(SQL_V(0)), db_decode(SQL_V(1)));
		}
	}
	SQL_END;

	if (where)
		free(where);
}

// Used by insynctest
textlist_p DbSql::list_file(filename_p str_filename, const char *myhostname, peername_p str_peername,
								   int recursive)
{
	const char *peername = str_peername.c_str();
	const char *filename = str_filename.c_str();
	csync_info(2, "DbSql::list_file %s <-> %s %s\n", myhostname, peername, filename);
	textlist_p tl = 0;
	const char *file_enc = escape(filename);
	char *where_sql = csync_generate_recursive_sql(file_enc, recursive, 0, 1);
	SQL_BEGIN(this, "DB Dump - Files for sync pair",
			  "SELECT checktxt, filename FROM file WHERE %s hostname = '%s' ORDER BY filename",
			  where_sql, myhostname)
	{
		if (csync_match_file_host(db_decode(SQL_V(1)),
							  myhostname, peername, 0))
		{
			textlist_add2(&tl, SQL_V(0), SQL_V(1), 0);
			csync_debug(2, "DbSql::list_file  %s:%s\n", peername, filename);
		}
	}
	SQL_END;

	return tl;
}

int DbSql::move_file(filename_p str_filename, filename_p newname)
{
	const char *filename = str_filename.c_str();
	char *update_sql = 0;
	const char *filename_encoded = escape(filename);
	const char *newname_encoded = escape(newname);
	int filename_length = strlen(filename_encoded);
	// int newname_length  = strlen(filename_encoded);
	const char *update_sql_format =
		"UPDATE file set filename = concat('%s',substring(filename,%d)) "
		"WHERE filename = '%s' or filename like '%s/%%'";
	ASPRINTF(&update_sql, update_sql_format,
			 newname_encoded, filename_length + 1, filename_encoded, filename_encoded);
	csync_debug(1, "SQL MOVE: %s\n", update_sql);
	SQL(this, "Update moved files in DB ", update_sql_format,
		newname_encoded, filename_length + 1, filename_encoded, filename_encoded);
	free(update_sql);
	// csync_warn(0, "NOT IMPLEMENTED: csync_db_update_path (update DB recursive)\n");
	return 0;
}

void DbSql::list_sync(peername_p myhostname, peername_p peername)
{
	SQL_BEGIN(this, "DB Dump - File",
			  "SELECT checktxt, filename FROM file ORDER BY filename")
	{
		if (csync_match_file_host(db_decode(SQL_V(1)), myhostname, peername.c_str(), 0))
		{
			printf("%s\t%s\n", db_decode(SQL_V(0)), db_decode(SQL_V(1)));
		}
	}
	SQL_END;
}

textlist_p DbSql::get_commands()
{
	textlist_p tl = 0;
	SQL_BEGIN(this, "Checking for scheduled commands",
			  "SELECT command, logfile FROM action")
	{
		textlist_add2(&tl, SQL_V(0), SQL_V(1), 0);
	}
	SQL_END;
	return tl;
}

textlist_p DbSql::get_command_filename(filename_p command, const char *logfile)
{
	textlist_p tl = 0;
	SQL_BEGIN(this,
			  "Checking for removed files in action",
			  "SELECT filename from action WHERE command = '%s' "
			  "and logfile = '%s'",
			  command.c_str(), logfile)
	{
		textlist_add(&tl, SQL_V(0), 0);
	}
	SQL_END;
	return tl;
}

int DbSql::dir_count(const char *dirname)
{
	int count = 0;
	SQL_BEGIN(this, "Check if directory count",
			  "SELECT count(*) FROM file WHERE filename like '%s/%%'",
			  escape(dirname))
	{
		count = (SQL_V(0) ? atoi(SQL_V(0)) : 0);
	}
	SQL_FIN
	{
		csync_info(2, "%d files within directory '%s': \n", count, dirname);
	}
	SQL_END;
	return count;
}

void DbSql::add_hint(filename_p filename, int recursive)
{
	SQL(this, "Adding Hint", "INSERT INTO hint (filename, recursive) "
						   "VALUES ('%s', %d)",
		escape(filename), recursive);
}

void DbSql::remove_dirty(peername_p peername, filename_p filename, int recursive)
{
	const char *file_enc = escape(filename);
	char *sql = csync_generate_recursive_sql(file_enc, recursive, 0, 1);

	SQL(this, "Deleting old dirty file entries", "DELETE FROM dirty WHERE %s myname = '%s' AND peername like '%s'", sql,
		g_myhostname, escape(peername));

	free(sql);
}

textlist_p DbSql::find_dirty(
									int (*filter)(filename_p str_filename, const char *localname, peername_p str_peername))
{
	textlist_p tl = 0;

	SQL_BEGIN(this, "Query dirty DB",
			  "SELECT filename, myname, peername FROM dirty where myname = '%s' "
			  "AND peername not in (select host from host where status = 1) ",
			  g_myhostname)
	{
		const char *filename = db_decode(SQL_V(0));
		const char *localname = db_decode(SQL_V(1));
		const char *peername = db_decode(SQL_V(2));
		csync_info(2, "Check '%s' with '%s:%s' from dirty.\n", localname, peername, filename);
		if (!filter(filename, localname, peername))
		{
			csync_info(1, "Remove '%s:%s' from dirty. No longer in configuration\n", peername, filename);
			textlist_add2(&tl, filename, peername, 0);
		}
	}
	SQL_END;

	return tl;
}

textlist_p DbSql::find_file(filename_p str_pattern, int (*filter_file)(filename_p filename))
{
	const char *pattern = str_pattern.c_str();
	filename_p enc_pattern = escape(pattern);
	textlist_p tl = 0;
	SQL_BEGIN(this, "Query file DB",
			  "SELECT filename, mode FROM file where hostname = '%s' AND filename = '%s' or filename like '%s/%%' ",
			  g_myhostname, pattern, pattern)
	{
		const char *filename = db_decode(SQL_V(0));
		int mode = (SQL_V(1) ? atoi(SQL_V(1)) : 0);
		if (!filter_file || !filter_file(filename))
		{
			textlist_add(&tl, filename, mode);
		}
	}
	SQL_END;
	return tl;
}

/*
 textlist_p DbSql::get_file_info_by_name(filename_p filename, const char *checktxt, const char *digest,
 int (*check_file_info) (textlist_p *p_tl, const char *checktxt, filename_p filename, const char *digest))
 {
 textlist_p p_tl = 0;
 SQL_BEGIN(this, "DB Dump - File",
 "SELECT checktxt, filename, digest FROM file %s%s%s ORDER BY filename",
 filename ? "WHERE filename = '" : "",
 filename ? escape(filename) : "",
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

void DbSql::remove_file(filename_p str_filename, int recursive)
{
	const char *filename = str_filename.c_str();
	const char *file_enc = escape(filename);
	char *sql = csync_generate_recursive_sql(file_enc, recursive, 0, 1);

	SQL(this, "Remove old file from file db", "DELETE FROM file WHERE %s hostname = '%s'", sql, g_myhostname);
	free(sql);
}

static void db_sql_add_dirty_simple(DbApi *db, const char *myhostname, peername_p str_peername, filename_p str_filename)
{
	const char *peername = str_peername.c_str();
	const char *filename = str_filename.c_str();

	SQL(db, "Add operation", "INSERT INTO dirty (myname, peername, filename) values ('%s', '%s', '%s')",
		db->escape(myhostname), db->escape(peername), db->escape(filename));
}

void DbSql::clear_operation(const char *myhostname, peername_p peername,
								   filename_p filename /* , int recursive */)
{

	SQL(this, "Clear operation",
		"UPDATE dirty set operation = '-' where myname = '%s' and peername = '%s' and filename = '%s'",
		escape(myhostname), escape(peername.c_str()), escape(filename.c_str()));
}

textlist_p DbSql::get_dirty_by_peer_match(const char *myhostname, peername_p str_peername, int recursive,
												 const std::set<std::string> &patlist,
												 int (*get_dirty_by_peer)(filename_p str_filename, filename_p pattern, int recursive))
{
	const char *peername = str_peername.c_str();

	textlist_p tl = NULL;
	const char *filter_sql = "";
	char *where_rec = NULL;
	if (patlist.size() == 1)
	{
		const std::string first = *(patlist.begin());
		where_rec = csync_generate_recursive_sql(first.c_str(), recursive, 0, 1);
		filter_sql = where_rec;
	}
	SQL_BEGIN(this, "Get files for host from dirty table",
			  "SELECT filename, operation, op, other, checktxt, digest, forced, (op & %d) as type FROM dirty WHERE "
			  " %s "
			  "peername = '%s' AND myname = '%s' "
			  "AND peername NOT IN (SELECT host FROM host WHERE status = 1) "
			  "ORDER by type DESC, filename DESC",
			  OP_FILTER,
			  filter_sql,
			  escape(peername),
			  escape(myhostname));
	{
		const char *filename = db_decode(SQL_V(0));
		const char *op_str = db_decode(SQL_V(1));
		operation_t operation = (SQL_V(2) ? atoi(SQL_V(2)) : 0);
		const char *other = db_decode(SQL_V(3));
		const char *checktxt = db_decode(SQL_V(4));
		// For some reason it is¨'' in the tests using postgres but correctly null on mysql
		// But seems to work (sometime) on db csync2. Doesnt make sense
		const char *digest = db_decode(SQL_V(5));
		const char *forced_str = db_decode(SQL_V(6));
		csync_debug(3, "DIRTY LOOKUP: '%s' '%s'\n", filename, SQL_V(5));
		int forced = forced_str ? atoi(forced_str) : 0;
		int found = 0;
		for (std::string pattern : patlist)
		{
			csync_debug(3, "compare file with pattern %s\n", pattern.c_str());
			if (get_dirty_by_peer == NULL || get_dirty_by_peer(filename, pattern, recursive))
			{
				textlist_add5(&tl, filename, op_str, other, checktxt, digest, forced, operation);
				found = 1;
			}
		}
		if (found)
		{
			char *copy_checktxt = filter_mtime_copy(checktxt);
			csync_info(2, "dirty: %s:%s %s '%s'\n", peername, filename, copy_checktxt, digest);
			free(copy_checktxt);
		}
	}
	SQL_END;

	if (where_rec)
		free(where_rec);

	return tl;
}

static textlist_p db_sql_get_dirty_by_peer(DbApi *db, const char *myhostname, peername_p peername)
{
	std::set<string> patlist;
	patlist.insert("/");
	return db->get_dirty_by_peer_match(myhostname, peername, 1, patlist, NULL);
}

textlist_p DbSql::get_old_operation(const char *checktxt,
								   peername_p str_peername,
								   filename_p str_filename,
								   const char *device, const char *ino, BUF_P buffer)
{
	// unused
	(void)buffer;
	const char *peername = str_peername.c_str();
	const char *filename = str_filename.c_str();

	textlist_p tl = 0;
	SQL_BEGIN(this, "Checking old opertion(s) on dirty",
			  "SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = '%s' AND "
			  "(checktxt = '%s' AND device = %s AND inode = %s OR filename = '%s') AND peername = '%s' "
			  "ORDER BY timestamp ",
			  escape(g_myhostname),
			  escape(checktxt),
			  escape(device),
			  escape(ino),
			  escape(filename),
			  escape(peername))
	{
		operation_t old_operation = csync_operation(SQL_V(0));
		const char *old_filename = db_decode(SQL_V(1));
		const char *old_other = db_decode(SQL_V(2));
		const char *old_checktxt = SQL_V(3);
		const char *old_digest = SQL_V(4);
		operation_t op = SQL_V(5) ? atoi(SQL_V(5)) : 0;
		if (op != old_operation)
			csync_warn(0, "WARN: operation changed: %s(%d) => %s(%d)\n", SQL_V(0), old_operation, csync_operation_str(op), op);
		textlist_add4(&tl, old_filename, old_other, old_checktxt, old_digest, old_operation);
		break;
	}
	SQL_FIN
	{
	}
	SQL_END;

	return tl;
}

int DbSql::add_dirty(const char *file_new, int new_force,
							const char *myhostname, peername_p str_peername,
							const char *op_str, const char *checktxt, const char *dev, const char *ino,
							const char *result_other,
							operation_t op, int mode, int mtime)
{
	BUF_P buf = buffer_init();
	const char *peername = str_peername.c_str();
	const char *result_enc = buffer_quote(buf, escape(result_other));
	SQL(this, "Marking File Dirty",
		"INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) "
		"VALUES ('%s', %s, '%s', '%s', '%s', '%s', %s, %s, %s, %d, %d, %d, %d)",
		escape(file_new),
		new_force ? "1" : "0", escape(myhostname), escape(peername),
		op_str, // csync_mode_op_str(mode, op),
		escape(checktxt), (dev ? dev : "NULL"), (ino ? ino : "NULL"), result_enc, op, mode,
		get_file_type(mode), mtime);
	// this->free(this, encoded);
	buffer_destroy(buf);
	return 0;
};

dev_t fstat_dev(struct stat *file_stat)
{
	return (file_stat->st_dev != 0 ? file_stat->st_dev : file_stat->st_rdev);
}

int DbSql::update_dev_no(filename_p encoded, int recursive, dev_t old_no, dev_t new_no)
{
	char *where_rec = csync_generate_recursive_sql(encoded.c_str(), recursive, 0, 0);
	int count = SQL(this, "Update device no", "UPDATE file set device=%lu WHERE %s AND device = %lu", new_no, where_rec, old_no);
	free(where_rec);
	return count;
}

int DbSql::update_file(filename_p encoded, const char *checktxt_encoded, struct stat *file_stat,
							  const char *digest)
{
	BUF_P buf = buffer_init();
	int count = SQL(this,
					"Update file entry", "UPDATE file set checktxt='%s', device=%lu, inode=%llu, "
										 "                digest=%s, mode=%u, mtime=%lu, size=%lu, type=%u where filename = '%s'",
					checktxt_encoded,
					fstat_dev(file_stat), file_stat->st_ino, buffer_quote(buf, digest), (07777777 & file_stat->st_mode),
					file_stat->st_mtime, file_stat->st_size, get_file_type(file_stat->st_mode), encoded.c_str());

	buffer_destroy(buf);
	return count;
}

int DbSql::insert_file(filename_p encoded, const char *checktxt_encoded, struct stat *file_stat,
							  const char *digest)
{
	BUF_P buf = buffer_init();
	int count = SQL(this, "Adding new file entry",
					"INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) "
					"values ('%s', '%s', '%s', %lu, %llu, %s, %u, %lu, %lu, %u) ",
					g_myhostname, encoded.c_str(),
					checktxt_encoded, fstat_dev(file_stat), file_stat->st_ino, buffer_quote(buf, digest), file_stat->st_mode,
					file_stat->st_size, file_stat->st_mtime, get_file_type(file_stat->st_mode), encoded.c_str());

	buffer_destroy(buf);
	return count;
}

int DbSql::insert_update_file(filename_p encoded, const char *checktxt_encoded, struct stat *file_stat,
									 const char *digest)
{
	int count = update_file(encoded, checktxt_encoded, file_stat, digest);
	if (count <= 0)
		count = insert_file(encoded, checktxt_encoded, file_stat, digest);
	return count;
}

static int filter_child_to_deleted_dir(const char *filename, const char *checktxt, char **last_dir_del)
{
	return 0;

	if (strstr(checktxt, "type=dir"))
	{
		if (*last_dir_del)
			free(*last_dir_del);
		size_t len = strlen(filename);
		*last_dir_del = static_cast<char *>(malloc(len + 1));
		strcpy(*last_dir_del, filename);
		strcpy(*last_dir_del + len, "/");
		return 0;
	}
	else
	{
		if (*last_dir_del != NULL && strstr(filename, *last_dir_del) == filename)
		{
			csync_info(2, "Skipping child (%s) from deleted directory (%s)\n", filename, *last_dir_del);
			return 1;
		}
		else
		{
			if (*last_dir_del)
			{
				free(*last_dir_del);
				*last_dir_del = NULL;
			}
		}
	}
	return 0;
}

int DbSql::check_delete(filename_p str_filename, int recursive, int init_run)
{
	const char *file = str_filename.c_str();
	textlist_p tl = 0, t;
	struct stat st;

	// const char *SELECT_SQL = "SELECT filename, checktxt, device, inode, mode FROM file ";
	csync_info(1, "Checking for deleted files %s%s\n", file, (recursive ? " recursive." : "."));
	const char *file_encoded = escape(file);
	char *where_rec = csync_generate_recursive_sql(file_encoded, recursive, 0, 1);
	csync_debug(3, "file %s encoded %s. Hostname: %s \n", file, file_encoded, g_myhostname);

	char *last_dir_deleted = NULL;
	SQL_BEGIN(this, "Checking for removed files - check_delete",
			  "SELECT filename, checktxt, device, inode, mode FROM file "
			  "WHERE %s hostname = '%s' ORDER BY filename",
			  where_rec, g_myhostname)
	{
		const char *filename = db_decode(SQL_V(0));
		const char *checktxt = db_decode(SQL_V(1));
		const char *device = db_decode(SQL_V(2));
		const char *inode = db_decode(SQL_V(3));
		int mode = (SQL_V(4) ? atoi(SQL_V(4)) : 0);
		const struct csync_group *g = NULL;
		if (!csync_match_file(filename, 0, &g))
			continue;

		// Not found
		if (lstat_strict(filename, &st) != 0 || csync_check_pure(filename))
		{
			if (!filter_child_to_deleted_dir(filename, checktxt, &last_dir_deleted))
			{
				textlist_add4(&tl, filename, checktxt, device, inode, mode);
			}
		}
	}
	SQL_END;
	int count_deletes = 0;
	time_t now = time(NULL);

	for (t = tl; t != 0; t = t->next)
	{
		if (!init_run)
		{
			std::set<string> peerlist;
			// csync_debug(0, "check_dirty (rm): before mark (all) \n");
			csync_mark(this, t->value, "", peerlist, OP_RM, t->value2, t->value3, t->value4, t->intvalue, now);
			count_deletes++;
		}
		SQL(this, "Delete file from DB. It isn't with us anymore.",
			"delete from file WHERE hostname = '%s' AND filename = '%s'", g_myhostname, escape(t->value));
	}

	textlist_free(tl);

	free(where_rec);
	return count_deletes;
}

static int db_sql_move_file_to_dirty(DbApi *db, const char *file, int recursive, const char *peername)
{
	const char *file_encoded = db->escape(file);
	char *where_rec = csync_generate_recursive_sql(file_encoded, recursive, 0, 1);
	SQL(db, "Move to dirty for removed files - move_file_to_dirty",
		"INSERT INTO dirty (filename, myname, peername, operation, op, device, inode) "
		"select filename, hostname, %s, 'RM', %d, device, inode where filename like '%s'",
		peername, OP_RM,
		where_rec);
	free(where_rec);
	return 0;
}

int DbSql::add_action(filename_p filename, const char *prefix_cmd, const char *logfile)
{
	SQL(this, "Add action to database", "INSERT INTO action (filename, command, logfile) "
								  "VALUES ('%s', '%s', '%s')",
		escape(filename.c_str()), escape(prefix_cmd),
		escape(prefixsubst(logfile)));
	return 0;
}

int DbSql::del_action(filename_p filename, const char *prefix_cmd)
{
	SQL(this, "Del action before insert", "DELETE FROM action WHERE filename='%s' AND command='%s' ",
		escape(filename), escape(prefix_cmd));
	return 0;
}

int DbSql::remove_action_entry(filename_p filename, const char *command, const char *logfile)
{
	SQL(this, "Remove action entry", "DELETE FROM action WHERE command = '%s' "
								   "and logfile = '%s' and filename = '%s'",
		command, logfile, escape(filename));
	return 0;
}

void DbSql::update_dirty_hardlinks(peername_p peername, filename_p filename, struct stat *st)
{

	const char *sql = " UPDATE dirty set other = '%s' WHERE "
					  " peername  = '%s' "
					  " AND device = %lu "
					  " AND inode = %llu "
					  " AND filename != '%s' ";
	const char *filename_esc = escape(filename);
	SQL(this, "Updating dirty hardlinks", sql, filename_esc, peername.c_str(), st->st_dev, st->st_ino, filename_esc);
}

textlist_p DbSql::check_file_same_dev_inode(filename_p str_filename, const char *checktxt, const char *digest,
										   struct stat *st, peername_p str_peername)
{
	(void)checktxt;

	const char *filename = str_filename.c_str();
	const char *peername = str_peername.c_str();

	textlist_p tl = 0;
	const char *sql =
		" SELECT filename, checktxt, digest FROM file f "
		" WHERE "
		" hostname = '%s' "
		" AND device = %lu "
		" AND inode = %llu "
		" AND filename != '%s'"
		" AND ('' = '%s' OR "
		"     filename NOT IN (SELECT filename FROM dirty WHERE peername = '%s' AND device = f.device AND inode = f.inode))"
		" ORDER BY filename;";
	//	" AND checktxt  = '%s' "
	//	" AND digest    = '%s' ";

	const char *escaped = escape(filename);
	SQL_BEGIN(this, "check_file_same_dev_inode, optional not dirty for peer",
			  sql, g_myhostname,
			  st->st_dev, st->st_ino, escaped, peername, peername)
	{
		const char *db_filename = db_decode(SQL_V(0));
		const char *db_checktxt = db_decode(SQL_V(1));
		const char *db_digest = db_decode(SQL_V(2));
		operation_t operation = OP_HARDLINK;
		struct stat st_db;
		if (lstat_strict(db_filename, &st_db) != 0)
		{
			operation = OP_RM;
		}
		if (!digest || !db_digest || !strcmp(digest, db_digest))
		{
			textlist_add_new2(&tl, db_filename, db_checktxt, operation);
		}
		else
		{
			csync_info(0, "Different digest\n%s: %s \n%s: %s\n", filename, digest, db_filename, db_digest);
		}
	}
	SQL_FIN
	{
		if (SQL_COUNT > 0)
		{
			csync_info(2, "%d files with same dev:inode (%llu:%llu) as file: %s\n",
					   SQL_COUNT,
					   static_cast<unsigned long long>(st->st_dev),
					   static_cast<unsigned long long>(csync_level_debug == 3 ? st->st_ino : 0l),
					   filename);
		}
	}
	SQL_END;
	return tl;
};

textlist_p DbSql::check_dirty_file_same_dev_inode(peername_p peername, filename_p filename,
												 const char *checktxt, const char *digest, struct stat *st)
{
	// unused
	(void)checktxt;

	char *peername_enc = strdup(escape(peername));
	char *filename_enc = strdup(escape(filename));
	const char *sqls[] = {" SELECT filename, checktxt, digest, operation FROM dirty WHERE myname = '%s'"
						  " AND device = %lu and inode = %llu and filename != '%s' and peername = '%s' ",
						  " SELECT filename, checktxt, digest, NULL FROM file WHERE hostname = '%s"
						  " AND device = %lu AND inode = %llu AND filename != '%s' "};
	textlist_p tl = 0;

	for (int index = 0; index < 2; index++)
	{
		SQL_BEGIN(this, "check_dirty_file_same_dev_inode (not checktxt, digest)",
				  sqls[index], g_myhostname,
				  st->st_dev, st->st_ino, filename_enc, peername_enc)
		{
			const char *db_filename = db_decode(SQL_V(0));
			const char *db_checktxt = db_decode(SQL_V(1));
			const char *db_digest = db_decode(SQL_V(2));
			const char *db_operation = db_decode(SQL_V(3));

			if (!digest || !db_digest || !strcmp(digest, db_digest))
			{
				textlist_add_new3(&tl, db_filename, db_checktxt, db_operation);
			}
			else
			{
				csync_info(1, "Different digest for %s %s ", digest, db_digest);
			}
		}
		SQL_FIN
		{
			csync_info(2, "%d files with same dev:inode (%lu:%llu) as file: %s\n",
					   SQL_COUNT,
					   static_cast<unsigned long long>(st->st_dev),
					   static_cast<unsigned long long>(st->st_ino), filename.c_str());
		}
		SQL_END;
	}
	free(filename_enc);
	free(peername_enc);
	return tl;
}
