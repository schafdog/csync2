/* -*- c-file-style: "k&r"; c-basic-offset: 4; tab-width: 4; indent-tabs-mode: t -*- */
#include "csync2.hpp"
#include "check.hpp"
#include "groups.hpp"
#include "urlencode.hpp"
#include "utils.hpp"
#include "checktxt.hpp"
#include "update.hpp"
#include <string>
#include <unistd.h>
#include <time.h>
#include "db_sql.hpp"
#include "db.hpp"


// C++20 std::format support
#if __cplusplus >= 202002L && __has_include(<format>)
    #include <format>
#endif

using namespace std;

struct FreeDeleter {
    void operator()(void* ptr) const noexcept {
        std::free(ptr);
    }
};

int DbSql::schema_version()
{
	int get_version = -1;
	try {
		if (conn_->execute_update("schema_check_file",
								  "update file set filename = NULL where filename = NULL ") >= 0)
		{
			get_version = 1;
		}
		if (conn_->execute_update("schema_host",
								  "update host set host = NULL where host = NULL") >= 0)
		{
			get_version = 2;
		}
	} catch (DatabaseError& e) {
	}
	return get_version;
}

int DbSql::check_file(filename_p filename, std::optional<std::string>& other, const std::string& checktxt,
					  struct stat *file_stat, int *operation, std::optional<std::string>& digest, int ignore_flags, dev_t *old_no)
{
    int db_flags = 0;
	auto rs = conn_->execute_query("check_file",
			  "SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = ? "
			  "AND filename = ? ",
			  g_myhostname, filename);
	int SQL_COUNT = 0;
	while (rs->next())
	{
	    const std::string checktxt_db = rs->get_string(1);
	    int db_version = csync_get_checktxt_version(checktxt_db.c_str());
		if (db_version < 1 || db_version > 2)
		{
			csync_error(0, "Error extracting version from checktxt: {}", checktxt_db.c_str());
		}
		std::string checktxt_same_version = checktxt;
		const std::string inode = rs->get_string(2);
		const std::string device = rs->get_string(3);
		digest = rs->get_string_optional(4);
		long mode = rs->get_long(5);
		long size = rs->get_long(6);
		long mtime = rs->get_long(7);
		// Missing any value then upgrade
		db_flags |= mode == 0 || size == 0 || mtime == 0 ? IS_UPGRADE : 0;

		int ug_flag = 0;
		if (strstr(checktxt_db.c_str(), ":user=") != NULL)
			ug_flag |= SET_USER;
		if (strstr(checktxt_db.c_str(), ":group=") != NULL)
			ug_flag |= SET_GROUP;
		struct stat old_stat;
		int dev_inode;
		if ((dev_inode = compare_dev_inode(file_stat, device, inode, &old_stat)))
		{
			csync_info(3, "File {} has changed device:inode {}:{} -> {}:{} {:o} \n",
					   filename.c_str(), device.c_str(), inode.c_str(), file_stat->st_dev, file_stat->st_ino, file_stat->st_mode);

			if (dev_inode == DEV_CHANGED)
			{
				db_flags |= DEV_CHANGE;
				csync_info(2, "File {} has only changed device {} -> {}}\n", filename, device, file_stat->st_dev);
				*old_no = old_stat.st_dev;
			}
			else
				db_flags |= IS_UPGRADE;
		}
		if (!digest.has_value() && strstr(checktxt.c_str(), "type=reg"))
		{
			db_flags |= CALC_DIGEST;
			db_flags |= IS_UPGRADE;
		}
		if (db_version != this->version || ug_flag != (SET_USER | SET_GROUP))
		{
			checktxt_same_version = csync_genchecktxt_version(file_stat, filename, ug_flag, db_version);
			if (csync_cmpchecktxt(checktxt, checktxt_same_version))
				db_flags |= IS_UPGRADE;
		}
		csync_debug(3, "File {} checktxt \n{}\n{}\n", filename, checktxt_same_version, checktxt_db);
		if (csync_cmpchecktxt(checktxt_same_version, checktxt_db))
		{
		csync_debug(3, "File {} CHANGES \n{}\n{}\n", filename, checktxt_same_version, checktxt_db);
			int file_mode = file_stat->st_mode & S_IFMT;
			int flag = OP_MOD;
			if (file_mode != (mode & S_IFMT))
			{
				csync_info(1, "File {} has changed mode {} => {} \n", filename, (mode & S_IFMT), file_mode);
				flag = OP_MOD2;
				//*operation |= OP_SYNC;
				db_flags |= IS_UPGRADE;
			}
			if (S_ISDIR(file_mode))
				*operation = OP_MKDIR | flag;
			else
				*operation = OP_NEW | flag;

			csync_info(3, "{} has changed: \n    {} \nDB: {} {}\n",
					   filename.c_str(), checktxt_same_version, checktxt_db.c_str(), csync_operation_str(*operation));
			csync_info(3, "ignore flags: {}\n", ignore_flags);
			if ((ignore_flags & FLAG_IGN_DIR) && file_stat && S_ISDIR(file_stat->st_mode))
				db_flags |= IS_UPGRADE;
			else
				db_flags |= IS_DIRTY;
		}
		SQL_COUNT++;
	}
	if (SQL_COUNT == 0)
	{
		csync_info(2, "New file: {}\n", filename);
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
			int len = readlink(filename.c_str(), target, max - 1);
			if (len > 0)
			{
				target[len] = 0;
				other = std::make_optional<std::string>(target);
			}
			else
				csync_error(0, "Failed to read link on {}\n", filename.c_str());
			free(target);
		}
		db_flags |= IS_DIRTY;
	}

	return db_flags;
}

int DbSql::is_dirty(peername_p str_peername, filename_p str_filename, int *operation, int *mode)
{
	int rc = 0;
    try {
        auto rs = conn_->execute_query("is_dirty",
                                     "SELECT op, mode FROM dirty "
                                     "WHERE filename = ? and peername = ? and myname = ? LIMIT 1",
                                     str_filename, str_peername, g_myhostname);

        if (rs->next()) {
            rc = 1;
            *operation = rs->get_long(1);
            auto mode_str = rs->get_string_optional(2);
            if (mode_str.has_value() && !mode_str->empty()) {
                *mode = atoi(mode_str->c_str());
            } else {
                *mode = 0;
            }
            csync_info(3, "DbSql::is_dirty {}:{} {} {}\n", str_filename, str_peername, *operation, *mode);
        }
    } catch (const DatabaseError& e) {
        csync_error(0, "Failed to check if file is dirty: {}", e.what());
    }
	return rc;
}

int DbSql::list_dirty(const std::set<std::string> &active_peers, const char *realname, int recursive)
{
	// unused
	(void)recursive;

	int retval = 0;
    try {
        std::string sql = "SELECT forced, myname, peername, filename, operation, op, (op & ?) AS type FROM dirty WHERE ";
        if (realname[0] != 0) {
            sql += "(filename = ? OR filename LIKE ?) AND ";
        }
        sql += " peername not in (SELECT host FROM host WHERE status = 1) AND myname = ? ORDER BY type, filename";

        auto stmt = conn_->prepare("list_dirty", sql);
        int param_index = 1;
        stmt->bind(param_index++, OP_FILTER);
        if (realname[0] != 0) {
            stmt->bind(param_index++, realname);
            stmt->bind(param_index++, std::string(realname) + "/%");
        }
        stmt->bind(param_index++, g_myhostname);

        auto rs = stmt->execute_query();
        while (rs->next()) {
            auto force_str = rs->get_string_optional(1);
            std::string myname = rs->get_string(2);
            std::string peername = rs->get_string(3);
            std::string filename = rs->get_string(4);
            std::string op_str = rs->get_string(5);
            auto op = rs->get_int(6);
            auto type = rs->get_int(7);

            if (csync_find_next(0, filename.c_str(), 0))
            {
                if (match_peer(active_peers, peername.c_str()))
                {
                    int force = 0;
                    if (force_str.has_value() && !force_str->empty())
                        force = atoi(force_str->c_str());
                    printf("%s%s\t%s\t%s\t%s\t%d\t%d\n",
                           (force ? "F " : "  "), op_str.c_str(),
                           myname.c_str(), peername.c_str(), filename.c_str(), op, type);
                    retval++;
                }
            }
        }
    } catch (const DatabaseError& e) {
        csync_error(0, "Failed to list dirty files: {}", e.what());
    }

	return retval;
}

textlist_p DbSql::non_dirty_files_match(filename_p pattern)
{
	textlist_p tl = 0;
    try {
        std::string sql = "SELECT filename, checktxt, digest FROM file WHERE hostname = ? AND filename like ? "
                          " AND filename not in (select filename from dirty where myname = ? AND filename like ?)"
                          " ORDER by filename ASC";
        auto stmt = conn_->prepare("non_dirty_files_match", sql);
        stmt->bind(1, g_myhostname);
        stmt->bind(2, std::string(pattern) + "%");
        stmt->bind(3, g_myhostname);
        stmt->bind(4, std::string(pattern) + "%");

        auto rs = stmt->execute_query();
        while (rs->next()) {
            std::string filename = rs->get_string(1);
            std::string checktxt = rs->get_string(2);
            auto digest = rs->get_string_optional(3);
            if (compare_files(filename.c_str(), pattern, 0 /*recursive*/))
            {
                textlist_add3(&tl, filename.c_str(), checktxt.c_str(), digest.has_value() ? digest->c_str() : NULL, 0);
            }
        }
    } catch (const DatabaseError& e) {
        csync_error(0, "Failed to get non-dirty files: {}", e.what());
    }

	return tl;
}

textlist_p DbSql::get_dirty_hosts()
{
	textlist_p tl = 0;
	csync_debug(3, "get dirty host\n");
    try {
        auto rs = conn_->execute_query("get_dirty_hosts",
                                     "SELECT peername FROM dirty WHERE myname = ? "
                                     "AND peername NOT IN (SELECT host FROM host WHERE status = 1) GROUP BY peername",
                                     g_myhostname);

        while (rs->next()) {
            std::string peername = rs->get_string(1);
            textlist_add(&tl, peername.c_str(), 0);
            csync_debug(3, "dirty host {} \n", tl->value);
        }
    } catch (const DatabaseError& e) {
        csync_error(0, "Failed to get dirty hosts: {}", e.what());
    }

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
			UrlEncoder url_encode;
			const std::string prefix_encoded = url_encode(prefix);
			const std::string path_encoded = url_encode(p->path);

			csync_info(1, "Replace prefix {} with path {} ({})", prefix_encoded, p->path, path_encoded);
            conn_->execute_update("upgrade_db",
                                "UPDATE file set filename=replace(filename,?, ?) WHERE filename like ?", prefix_encoded,
				path_encoded, prefix_encoded);
		}
	}
	exit(0);
	return 0;
}

textlist_p DbSql::get_hints()
{
	textlist_p tl = NULL;
    try {
        auto rs = conn_->execute_query("get_hints",
                                     "SELECT filename, is_recursive FROM hint");

        while (rs->next()) {
            std::string filename = rs->get_string(1);
            textlist_add(&tl, filename.c_str(),
                         atoi(rs->get_string(2).c_str()));
        }
    } catch (const DatabaseError& e) {
        csync_error(0, "Failed to get hints: {}", e.what());
    }
	return tl;
};

static std::string csync_generate_recursive_sql_placeholder(int recursive, int prepend_and) {
    std::string sql_recursive = "";
    if (prepend_and) {
        sql_recursive += " AND ";
    }
    if (recursive) {
        sql_recursive += " (filename = ? OR filename LIKE ?) ";
    } else {
       sql_recursive += " filename = ? ";
    };
    return sql_recursive;
}

void DbSql::force(const char *realname, int recursive)
{
    if (recursive) {
        std::string sql_query = "UPDATE dirty SET forced = 1 WHERE (filename = ? OR filename LIKE ?) AND myname = ?";
        std::string recursive_filename = std::string(realname) + "/%";
        conn_->execute_update("force_recursive", sql_query, realname, recursive_filename, g_myhostname);
    } else {
        std::string sql_query = "UPDATE dirty SET forced = 1 WHERE filename = ? AND myname = ?";
        conn_->execute_update("force", sql_query, realname, g_myhostname);
    }
}

void DbSql::mark(const std::set<std::string>& active_peerlist, const filename_p filename, int recursive)
{
	if (csync_check_usefullness(filename, recursive) == -1)
		return; // Skipping

	struct stat file_st;
	time_t mtime = time(NULL);
	const char *checktxt = "";
	const char *device = NULL;
	const char *inode = NULL;
	int mode = 0;
	std::string dev_str, inode_str;
	int rc = lstat(filename.c_str(), &file_st);
	if (!rc)
	{
		mtime = file_st.st_mtime;
		mode = file_st.st_mode;
		dev_str = std::format("{}", file_st.st_dev);
		device = dev_str.c_str();
		inode_str = std::format("{}", file_st.st_ino);
		inode = inode_str.c_str();
		// calc checktxt, digest
	}
	// Duplicate mark
	csync_mark(this, filename, "", active_peerlist, OP_MARK, checktxt, device, inode, mode, mtime);

	if (recursive)
	{
		textlist_p tl = 0;
		// Missing marking files only in FS
		std::string where_rec = csync_generate_recursive_sql_placeholder(recursive, 1);
		std::string sql = "SELECT filename, mode, checktxt, digest, device, inode, mtime FROM file "
                          "WHERE hostname = ? ";
        sql += where_rec + "ORDER BY filename DESC";
		csync_debug(3,"DbSql::mark {}", sql);
		auto rs  = conn_->execute_query("mark_recursive", sql, g_myhostname, filename, filename + "/%");

		while (rs->next())
		{
			const std::string db_filename = rs->get_string(1);
			int db_mode = rs->get_string_optional(2).has_value() ? atoi(rs->get_string_optional(2)->c_str()) : 0;
			const std::string db_checktxt = rs->get_string(3);
			// const char *digest   = rs->get_string(4);
			const std::string db_device = std::format("{}", rs->get_long(5));
			const std::string db_inode  = std::format("{}", rs->get_long(6));
			csync_debug(3, "DbSql::mark DB dev inode {} {}\n" , db_device, db_inode);
			const std::string db_mtime_str = rs->get_string(7);
			int db_mtime = atoi(db_mtime_str.c_str());
			textlist_add5(&tl, db_filename, db_checktxt, db_device, db_inode, db_mtime_str, db_mode, db_mtime);
		}
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
			csync_debug(3, "DbSql::mark DB dev inode {} {}\n" , db_device, db_inode);
			csync_mark(this, db_filename, "", active_peerlist, OP_MARK, db_checktxt, db_device, db_inode, db_mode, db_mtime);
			tl = tl->next;
		}
		textlist_free(ptr);
	}
}

void DbSql::list_hint()
{
	try {
		auto rs = conn_->execute_query("DB Dump - Hint",
					   "SELECT is_recursive, filename FROM hint ORDER BY filename");
		while (rs->next()) {
			printf("%s\t%s\n", rs->get_string(1).c_str(), rs->get_string(2).c_str());
		}
	} catch (const std::runtime_error& e) {
		csync_fatal("Failed to list hints: {}\n", e.what());
	}
}

void DbSql::list_files(filename_p realname)
{
    try {
        std::string sql = "SELECT checktxt, filename FROM file WHERE ";
        if (realname[0] != 0) {
            sql += "(filename = ? OR filename LIKE ?) AND ";
        }
        sql += " hostname = ? ORDER BY filename";

        auto stmt = conn_->prepare("list_files", sql);
        int param_index = 1;
        if (realname[0] != 0) {
            stmt->bind(param_index++, realname);
            stmt->bind(param_index++, std::string(realname) + "/%");
        }
        stmt->bind(param_index++, g_myhostname);

        auto rs = stmt->execute_query();
        while (rs->next()) {
            std::string filename = rs->get_string(2);
            if (csync_find_next(0, filename.c_str(), 0))
            {
                printf("%s\t%s\n", rs->get_string(1).c_str(), filename.c_str());
            }
        }
    } catch (const DatabaseError& e) {
        csync_error(0, "Failed to list files: {}", e.what());
    }
}

// Used by insynctest
textlist_p DbSql::list_file(filename_p str_filename, const char *myhostname, peername_p str_peername,
							   int recursive)
{
	const char *peername = str_peername.c_str();
	const char *filename = str_filename.c_str();
	csync_info(2, "DbSql::list_file {} <-> {} {}\n", myhostname, peername, filename);
	textlist_p tl = 0;
    try {
        std::string sql = "SELECT checktxt, filename FROM file WHERE ";
        if (filename[0] != 0) {
            sql += "(filename = ? OR filename LIKE ?) AND ";
        }
        sql += " hostname = ? ORDER BY filename";

        auto stmt = conn_->prepare("list_file", sql);
        int param_index = 1;
        if (filename[0] != 0) {
            stmt->bind(param_index++, filename);
            stmt->bind(param_index++, std::string(filename) + "/%");
        }
        stmt->bind(param_index++, myhostname);

        auto rs = stmt->execute_query();
        while (rs->next()) {
            std::string filename_str = rs->get_string(2);
            if (csync_match_file_host(filename_str.c_str(),
                                      myhostname, peername, 0))
            {
                textlist_add2(&tl, rs->get_string(1).c_str(), filename_str.c_str(), 0);
                csync_debug(2, "DbSql::list_file  {}:{}\n", peername, filename);
            }
        }
    } catch (const DatabaseError& e) {
        csync_error(0, "Failed to list file: {}", e.what());
    }
	return tl;
}

int DbSql::move_file(filename_p filename, filename_p newname)
{
	const std::string update_sql_format =
		std::format("UPDATE file set filename = concat(?{},substring(filename,?)) "
		"WHERE (filename = ? or filename like ?) ", getTextType());
	csync_debug(3, "SQL MOVE: {}\n", update_sql_format);
	std::string recursive = filename + "/%";
	conn_->execute_update("move_file", update_sql_format, newname, static_cast<long long>(filename.size() + 1), filename, recursive);
	return 0;
}

void DbSql::list_sync(peername_p myhostname, peername_p peername)
{
    try {
        auto rs = conn_->execute_query("list_sync",
                                     "SELECT checktxt, filename FROM file ORDER BY filename");

        while (rs->next()) {
            std::string filename = rs->get_string(2);
            if (csync_match_file_host(filename.c_str(), myhostname, peername.c_str(), 0))
            {
                printf("%s\t%s\n", rs->get_string(1).c_str(), filename.c_str());
            }
        }
    } catch (const DatabaseError& e) {
        csync_error(0, "Failed to list sync: {}", e.what());
    }
}

textlist_p DbSql::get_commands()
{
    std::string name_sql = "get_commands";
    std::string sql = "SELECT command, logfile FROM action";
    auto stmt = conn_->prepare(name_sql, sql);

    auto resultset = stmt->execute_query();
    textlist_p tl = 0;
    while (resultset->next()) {
        textlist_add2(&tl, resultset->get_string(1).c_str(), resultset->get_string(2).c_str(), 0);
    }
	return tl;
}

textlist_p DbSql::get_command_filename(filename_p command, const char *logfile)
{
	std::string name_sql = "get_command_filename";
    std::string sql = "SELECT filename from action WHERE command = ? and logfile = ?";
  	auto stmt = conn_->prepare(name_sql, sql);
    stmt->bind(1, command);
    stmt->bind(2, logfile);

    auto resultset = stmt->execute_query();
    textlist_p tl = 0;
    while (resultset->next())
    {
		textlist_add(&tl, resultset->get_string(1).c_str(), 0);
	}
	return tl;
}

int DbSql::dir_count(const char *dirname)
{
	int count = 0;
	std::string name_sql = "dir_count";

    std::string sql = "SELECT count(*) FROM file WHERE filename like ?";
   	auto stmt = conn_->prepare(name_sql, sql);
    std::string dirname_recursive(dirname);
    dirname_recursive += "/%";
    stmt->bind(1, dirname_recursive);
    auto resultset = stmt->execute_query();
    if (resultset->next())
	{
		count = resultset->get_int(1);
	}
	csync_info(2, "{} files within directory '{}': \n", count, dirname);
	return count;
}

long long DbSql::add_hint(filename_p filename, int recursive)
{
    return conn_->execute_update("add_hint",
                                  "INSERT INTO hint (filename, is_recursive) VALUES (?,?)",
                                  filename, recursive);
}

long long DbSql::remove_hint(filename_p filename, int recursive)
{
    return conn_->execute_update("remove_hint", "DELETE FROM hint WHERE filename = ? AND is_recursive = ? ", filename, recursive);
};

int DbSql::remove_dirty(peername_p peername, filename_p filename, int recursive)
{
	std::string name_sql = "remove_dirty";
	std::string	rec_filename;
	if (recursive) {
		name_sql += "_recursive";
		rec_filename += filename + "/%";
	}
	std::string where_part = csync_generate_recursive_sql_placeholder(recursive, 1);
	std::string remove_dirty_sql("DELETE FROM dirty WHERE myname = ? AND peername LIKE ? ");
	remove_dirty_sql += where_part;
	csync_info(3, "remove_dirty_sql '{}' '{}' '{}' '{}' '{}'",
			   remove_dirty_sql, g_myhostname, peername, filename, rec_filename);
	auto stmt = conn_->prepare(name_sql, remove_dirty_sql);
	csync_info(3, "remove_dirty_sql prepared '{}' '{}' '{}' '{}' '{}'",
			   remove_dirty_sql, g_myhostname, peername, filename, rec_filename);
	stmt->bind(1, g_myhostname);
	stmt->bind(2, peername);
	stmt->bind(3, filename);
	if (recursive) {
		stmt->bind(4, rec_filename);
	}
	// std::cout << std::format("{} {} {} {} {}", remove_dirty_sql, file_enc,  g_myhostname, peername, recursive_str);
	int rc =  stmt->execute_update();
	csync_info(3, "remove_dirty_sql execute done");
	return rc;
}

textlist_p DbSql::find_dirty(
							int (*filter)(filename_p str_filename, peername_p localname, peername_p str_peername))
{
	textlist_p tl = 0;

    try {
        auto rs = conn_->execute_query("find_dirty",
									   "SELECT filename, myname, peername FROM dirty where myname = ? "
									   "AND peername not in (select host from host where status = 1) "
									   "ORDER by filename, peername",
                                     g_myhostname);

        while (rs->next()) {
            std::string filename_str = rs->get_string(1);
            std::string localname_str = rs->get_string(2);
            std::string peername_str = rs->get_string(3);
            csync_info(2, "Check '{}' with '{}:{}' from dirty.\n", localname_str, peername_str, filename_str);
            if (!filter(filename_str, localname_str, peername_str))
            {
                csync_info(1, "Remove '{}:{}' from dirty. No longer in configuration\n",
						   peername_str, filename_str);
                textlist_add2(&tl, filename_str.c_str(), peername_str.c_str(), 0);
            }
        }
    } catch (const DatabaseError& e) {
        csync_error(0, "Failed to find dirty files: {}", e.what());
    }

	return tl;
}

textlist_p DbSql::find_file(filename_p str_pattern, int (*filter_file)(filename_p filename))
{
	const char *pattern = str_pattern.c_str();
	textlist_p tl = 0;
    try {
        auto rs = conn_->execute_query("find_file",
                                     "SELECT filename, mode FROM file where hostname = ? AND (filename = ? or filename like ?)",
                                     g_myhostname, pattern, std::string(pattern) + "/%");

        while (rs->next()) {
            std::string filename = rs->get_string(1);
            int mode = (rs->get_string(2).empty() ? 0 : atoi(rs->get_string(2).c_str()));
            if (!filter_file || !filter_file(filename.c_str()))
            {
                textlist_add(&tl, filename.c_str(), mode);
            }
        }
    } catch (const DatabaseError& e) {
        csync_error(0, "Failed to find files: {}", e.what());
    }
	return tl;
}

 long long DbSql::delete_file(filename_p str_filename, int recursive) {
     return remove_file(str_filename, recursive);
 }

long long DbSql::remove_file(filename_p str_filename, int recursive)
{
	const char *filename = str_filename.c_str();
	std::string where_rec = csync_generate_recursive_sql_placeholder(recursive, 1);
	std::string sql_query = "DELETE FROM file WHERE hostname = ? " + where_rec;

	if (recursive) {
		std::string recursive_filename = std::string(filename) + "/%";
		csync_info(2, "remove_file SQL: {}, param1: {}, param2: {}, param3: {}\n", sql_query, filename, recursive_filename, g_myhostname);
		return conn_->execute_update("remove_file_recursive",
									  sql_query,
									  g_myhostname, filename, recursive_filename);
	} else {
		csync_info(2, "remove_file SQL: {}, param1: {}, param2: {}\n", sql_query, filename, g_myhostname);
		return conn_->execute_update("remove_file",
									  sql_query,
									  g_myhostname, filename);
	}
}

void DbSql::clear_operation(const char *myhostname, peername_p peername,
							   filename_p filename /* , int recursive */)
{
    conn_->execute_update("clear_operation",
                        "UPDATE dirty set operation = '-' where myname = ? and peername = ? and filename = ?",
                        myhostname, peername, filename);
}

textlist_p DbSql::get_dirty_by_peer_match(const char *myhostname, peername_p str_peername, int recursive,
								  const std::set<std::string> &patlist,
								  int (*get_dirty_by_peer)(filename_p fn, filename_p pattern, int recursive))
{
	const char *peername = str_peername.c_str();

	textlist_p tl = NULL;
	std::string named_statement = "get_dirty_by_peer_match";
	std::string SQL_SELECT = std::format(
	        "SELECT filename, operation, op, other, checktxt, digest, forced, (op & ?{}) as type "
			"FROM dirty WHERE "
			"peername = ? AND myname = ? "
			"AND peername NOT IN (SELECT host FROM host WHERE status = 1) "
			"ORDER by type DESC, filename DESC", getIntType());
	auto rs = conn_->execute_query(named_statement, SQL_SELECT, OP_FILTER, peername, myhostname);
	while (rs->next())
	{
		const std::string db_filename = rs->get_string(1);
		const std::string op_str = rs->get_string(2);
		operation_t operation = rs->get_int(3);
		auto other = rs->get_string_optional(4);
		const std::string checktxt = rs->get_string(5);
		// For some reason it is '' in the tests using postgres but correctly null on mysql
		// But seems to work (sometime) on db csync2. Doesnt make sense
		auto digest = rs->get_string_optional(6);
		const auto forced_str = rs->get_string_optional(7);
		csync_debug(3, "DIRTY LOOKUP: '{}' '{}'\n", db_filename, checktxt);
		int forced = forced_str.has_value() ? atoi(forced_str->c_str()) : 0;
		int found = 0;
		for (std::string pattern : patlist)
		{
			csync_debug(3, "compare file with pattern {}\n", pattern);
			if (get_dirty_by_peer == NULL || get_dirty_by_peer(db_filename.c_str(), pattern.c_str(), recursive))
			{
				textlist_add5(&tl, db_filename.c_str(), op_str.c_str(),
				                other.has_value() ? other->c_str() : NULL, checktxt.c_str(),
								digest.has_value() ? digest->c_str() : NULL, forced, operation);
				found = 1;
			}
		}
		if (found)
		{
			char *copy_checktxt = filter_mtime_copy(checktxt.c_str());
			csync_info(2, "dirty: {}:{} {} '{}'\n", peername, db_filename, copy_checktxt,
			            digest.has_value() ? digest->c_str() : "");
			free(copy_checktxt);
		}
	}
	return tl;
}

static textlist_p db_sql_get_dirty_by_peer(DbApi *db, const char *myhostname, peername_p peername)
{
	std::set<string> patlist;
	patlist.insert("/");
    	return db->get_dirty_by_peer_match(myhostname, peername, 1, patlist, NULL);
}

textlist_p DbSql::get_old_operation(const std::string& checktxt,
							   peername_p str_peername,
							   filename_p str_filename,
							   const char *device, const char *ino)
{
	const char *peername = str_peername.c_str();
	const char *filename = str_filename.c_str();

	textlist_p tl = 0;
	auto rs = conn_->execute_query("get_old_operation",
			  "SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = ? AND "
			  "(checktxt = ? AND device = ? AND inode = ? OR filename = ?) AND peername = ? "
			  "ORDER BY timestamp ",
			  g_myhostname,
			  checktxt,
			  device,
			  ino,
			  filename,
			  peername);

	while (rs->next()) {
		operation_t old_operation = csync_operation(rs->get_string(1).c_str());
		const std::string old_filename = rs->get_string(2);
		const auto old_other = rs->get_string_optional(3);
		const auto old_checktxt = rs->get_string_optional(4);
		const auto old_digest = rs->get_string_optional(5);
		const auto op = rs->get_int(6);
		if (op != old_operation)
			csync_warn(0, "WARN: operation - op mismatch: {}({}) <> {}({})\n",
			           rs->get_string(1).c_str(), old_operation, csync_operation_str(op), op);
		textlist_add4(&tl, old_filename.c_str(),
		              old_other.has_value()    ? (*old_other).c_str() : NULL,
		              old_checktxt.has_value() ? (*old_checktxt).c_str() : NULL,
		              old_digest.has_value()   ? (*old_digest).c_str() : NULL,
					  old_operation);
		break;
	}
	return tl;
}

const char *null(const char *value) {
	return value != NULL && value[0] != 0 ? value : "NULL";
}

int parse_long_long(const char *no_str, long long& no_ref, const char *field) {
	try {
		if (no_str) {
			no_ref = std::stoll(no_str);
			return 1;
		}
		return 0;
	} catch (const exception& e) {
		csync_debug(1, "Failed to parse {}: '{}'", field, no_str);
		return 0;
	}
}

int DbSql::add_dirty(const char *file_new, int new_force,
					const char *myhostname, peername_p str_peername,
					const char *op_str, const std::string& checktxt, const char *dev, const char *ino,
					const char *result_other,
					operation_t op, int mode, int mtime)
{
	std::string add_dirty_sql =
		"INSERT INTO dirty "
		"(filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) "
		"VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
	std::string sql_name = "add_dirty";
	csync_info(3, "add_dirty_sql '{}' '{}' '{}' '{}' '{}' '{}' '{}' '{}' '{}' '{}' '{}' '{}' '{}' '{}'",
			   add_dirty_sql, file_new, new_force, myhostname, str_peername,
			   null(op_str), checktxt, dev, ino, null(result_other), op, mode, get_file_type(mode), mtime);

	auto stmt = conn_->prepare(sql_name, add_dirty_sql);
	csync_info(3, "add_dirty_sql prepared {}\n", add_dirty_sql);
    stmt->bind(1, file_new);
    stmt->bind(2, new_force);
    stmt->bind(3, myhostname);
    stmt->bind(4, str_peername);
    stmt->bind(5, op_str);
    stmt->bind(6, checktxt);
	long long number;
    if (parse_long_long(dev, number, "dev")) {
			stmt->bind(7, number);
    } else {
        stmt->bind_null(7);
    }

	if (parse_long_long(ino, number, "ino")) {
        stmt->bind(8, std::stoll(ino));
    } else {
        stmt->bind_null(8);
    }
	if (result_other && result_other[0] != 0)
		stmt->bind(9, result_other);
	else
		stmt->bind_null(9);
    stmt->bind(10, static_cast<int>(op));
    stmt->bind(11, mode);
    stmt->bind(12, get_file_type(mode));
    stmt->bind(13, mtime);

	int rc = stmt->execute_update();
	csync_info(3, "add_dirty_sql executed {}\n", add_dirty_sql);
	return rc;
};

dev_t fstat_dev(struct stat *file_stat)
{
	return (file_stat->st_dev != 0 ? file_stat->st_dev : file_stat->st_rdev);
}

int DbSql::update_dev_no(filename_p filename, int recursive, dev_t old_no, dev_t new_no)
{
    if (recursive) {
        std::string sql_query = "UPDATE file set device=? WHERE (filename = ? OR filename LIKE ?) AND device = ?";
        std::string recursive_filename = std::string(filename) + "/%";
        return conn_->execute_update("update_dev_no_recursive", sql_query, new_no, filename, recursive_filename, old_no);
    } else {
        std::string sql_query = "UPDATE file set device=? WHERE filename = ? AND device = ?";
        return conn_->execute_update("update_dev_no", sql_query, new_no, filename, old_no);
    }
}

long long DbSql::update_file(filename_p filename, const std::string &checktxt, struct stat *file_stat,
                              const char *digest)
{
    return conn_->execute_update("update_file",
                                  "UPDATE file set checktxt=?, device=?, inode=?, "
                                  "digest=?, mode=?, mtime=?, size=?, type=? where filename = ?",
                                  checktxt,
                                  static_cast<long long>(fstat_dev(file_stat)), static_cast<long long>(file_stat->st_ino), digest, static_cast<int>(file_stat->st_mode),
                                  static_cast<long long>(file_stat->st_mtime), static_cast<long long>(file_stat->st_size), static_cast<int>(get_file_type(file_stat->st_mode)), filename);
}

long long DbSql::insert_file(filename_p filename, const std::string& checktxt, struct stat *file_stat,
                              const char *digest)
{
    return conn_->execute_update("insert_file",
                                  "INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) "
                                  "values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?) ",
                                  g_myhostname, filename,
                                  checktxt, static_cast<long long>(fstat_dev(file_stat)), static_cast<long long>(file_stat->st_ino), digest, static_cast<int>(file_stat->st_mode),
                                  static_cast<long long>(file_stat->st_mtime), static_cast<long long>(file_stat->st_size), static_cast<int>(get_file_type(file_stat->st_mode)));
}

int DbSql::insert_update_file(filename_p filename, const std::string& checktxt, struct stat *file_stat,
									 const char *digest)
{
	int count = update_file(filename, checktxt, file_stat, digest);
	if (count <= 0)
		count = insert_file(filename, checktxt, file_stat, digest);
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
			csync_info(2, "Skipping child ({}) from deleted directory ({})\n", filename, *last_dir_del);
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

int DbSql::check_delete(filename_p filename, int recursive, int init_run)
{
    textlist_p tl = 0, t;
    struct stat st;
        csync_info(1, "Checking for deleted files {}{}\n", filename, (recursive ? " recursive." : "."));
	std::string where_rec = csync_generate_recursive_sql_placeholder(recursive, 1);

	std::string SQL_SELECT = "SELECT filename, checktxt, device, inode, mode FROM file WHERE hostname = ? ";
	SQL_SELECT += where_rec + " ORDER BY filename";
	std::string named_statement = "check_delete_select";
	std::string rec_filename = "";
	if (recursive) {
	    named_statement += "_recursive";
		rec_filename = filename + "/%";
	}
	csync_debug(3, "check_delete: prepare {} SQL: {}\n", named_statement, SQL_SELECT);
	auto stmt = conn_->prepare(named_statement, SQL_SELECT);
	csync_debug(3, "check_delete prepared SQL: {} {} \n", named_statement, SQL_SELECT);
	stmt->bind(1, g_myhostname);
	stmt->bind(2, filename);
	if (recursive) {
	    stmt->bind(3, rec_filename);
	}

	csync_debug(3, "check_delete execute SQL: {} {} {} {} {} \n",
				named_statement, SQL_SELECT, g_myhostname, filename, rec_filename);
	auto rs = stmt->execute_query();

	char *last_dir_deleted = NULL;
	while (rs->next())
	{
		const std::string db_filename = rs->get_string(1);
		const std::string checktxt = rs->get_string(2);
		const std::string device = std::format("{}", rs->get_long(3));
		const std::string inode = std::format("{}", rs->get_long(4));
		const auto mode = rs->get_string_optional(5);
		int mode_int = mode.has_value() ? atoi(mode->c_str()) : 0;
		const struct csync_group *g = NULL;
		if (!csync_match_file(db_filename, 0, &g))
			continue;

		// Not found
		if (lstat_strict(db_filename, &st) != 0 || csync_check_pure(db_filename))
		{
			if (!filter_child_to_deleted_dir(db_filename.c_str(), checktxt.c_str(), &last_dir_deleted))
			{
				textlist_add4(&tl, db_filename.c_str(), checktxt.c_str(), device.c_str(), inode.c_str(), mode_int);
			}
		}
	}
	int count_deletes = 0;
	time_t now = time(NULL);

	for (t = tl; t != 0; t = t->next)
	{
		if (!init_run)
		{
			std::set<string> peerlist;
			csync_debug_c(3, "check_dirty (rm): before mark (all) %s %s %s %s %d\n",
						  t->value, t->value2, t->value3, t->value4, t->intvalue);
			csync_mark(this, t->value, "", peerlist, OP_RM, t->value2, t->value3, t->value4, t->intvalue, now);
			count_deletes++;
		}
		std::string delete_file = "delete_file";
		std::string delete_file_sql = "delete from file WHERE hostname = ? AND filename = ?";
		csync_debug(3, "check_delete: execute_update {} {} {} {}\n", delete_file, delete_file_sql,  g_myhostname, t->value);
		conn_->execute_update(delete_file, delete_file_sql, g_myhostname, t->value);
		csync_debug(3, "check_delete: executed {} {}\n", delete_file, delete_file_sql);
	}

	textlist_free(tl);
	return count_deletes;
}

long long DbSql::db_sql_move_file_to_dirty(const char *file, int recursive, const char *peername)
{
	std::string where_rec = csync_generate_recursive_sql_placeholder(recursive, 0);
	conn_->execute_update("db_sql_move_file_to_dirty",
		"INSERT INTO dirty (filename, myname, peername, operation, op, device, inode) "
		"select filename, hostname, ?, 'RM', ?, device, inode where " + where_rec,
		peername, OP_RM);
	return 0;
}

int DbSql::add_action(filename_p filename, const std::string& prefix_cmd, const std::string& logfile)
{
    std::string name_sql = "add_action";
    std::string sql = R"(INSERT INTO action (filename, command, logfile)
                         VALUES (?, ?, ?))";
   	auto stmt = conn_->prepare(name_sql, sql);
	stmt->bind(1, filename);
	stmt->bind(2, prefix_cmd);
	stmt->bind(3, logfile);
	// stmt->bind(4, prefix_cmd);
	// stmt->bind(5, logfile);
	return stmt->execute_update();
}

int DbSql::del_action(filename_p filename, const std::string& prefix_cmd)
{
    std::string name_sql = "del_action";
    std::string sql = "DELETE FROM action WHERE filename=? AND command=? ";
   	auto stmt = conn_->prepare(name_sql, sql);
	stmt->bind(1, filename);
	stmt->bind(2, prefix_cmd);
	return stmt->execute_update();
}

int DbSql::remove_action_entry(filename_p filename, const std::string& command, const std::string& logfile)
{
    std::string name_sql = "remove_action_entry";
    std::string sql = R"(DELETE FROM action
                        WHERE filename = ? and command = ? and logfile = ?)";
   	auto stmt = conn_->prepare(name_sql, sql);
	stmt->bind(1, filename);
	stmt->bind(2, command);
	stmt->bind(3, logfile);
	return stmt->execute_update();
}

int DbSql::update_dirty_hardlinks(peername_p peername, filename_p filename, struct stat *st)
{
    std::string name_sql = "update_dirty_hardlinks";
    std::string sql = " UPDATE dirty set other = ? WHERE "
					  " peername  = ? "
					  " AND device = ? "
					  " AND inode = ? "
					  " AND filename != ? ";

   	auto stmt = conn_->prepare(name_sql, sql);
    stmt->bind(1, filename);
	stmt->bind(2, peername);
	stmt->bind(3, static_cast<long long>(st->st_dev));
	stmt->bind(4, static_cast<long long>(st->st_ino));
	stmt->bind(5, filename);
	return stmt->execute_update();
}

std::optional<std::string> create_optional(const char *filename)
{
    if (filename == nullptr) {
        return std::nullopt;
    }
    return std::string(filename);
}


textlist_p DbSql::check_file_same_dev_inode(filename_p filename, const std::string& checktxt, const char *digest,
							   struct stat *st, peername_p peername)
{
	(void)checktxt;
	textlist_p tl = 0;
	std::string name_sql = "check_file_same_dev_inode";
	const char *sql =
		" SELECT filename, checktxt, digest FROM file f "
		" WHERE "
		" hostname = ? "
		" AND device = ? "
		" AND inode = ? "
		" AND filename != ? "
		" AND ('' = ? OR "
		"     filename NOT IN (SELECT filename FROM dirty "
		                       "WHERE peername = ? AND device = f.device AND inode = f.inode))"
		" ORDER BY filename;";
	//	" AND checktxt  = '{}' "
	//	" AND digest    = '{}' ";

   	auto stmt = conn_->prepare(name_sql, sql);
    // g_myhostname, st->st_dev, st->st_ino, escaped, peername, peername
    stmt->bind(1, g_myhostname);
    stmt->bind(2, static_cast<long long>(st->st_dev));
    stmt->bind(3, static_cast<long long>(st->st_ino));
    stmt->bind(4, filename);
    stmt->bind(5, peername);
    stmt->bind(6, peername);

    auto rs = stmt->execute_query();
    int SQL_COUNT = 0;
    while (rs->next())
	{
		const std::string db_filename = rs->get_string(1);
		const std::string db_checktxt = rs->get_string(2);
		const std::optional<std::string> db_digest = rs->get_string_optional(3);
		operation_t operation = OP_HARDLINK;
		struct stat st_db;
		if (lstat_strict(db_filename, &st_db) != 0)
		{
			operation = OP_RM;
		}
		const std::optional<std::string> opt_digest = create_optional(digest);

		if (opt_digest->empty() || db_digest->empty() || *opt_digest == *db_digest)
		{
			textlist_add_new2(&tl, db_filename, db_checktxt, operation);
		}
		else
		{
			csync_info(0, "Different digest\n{}: {} \n{}: {}\n", filename, digest, db_filename, *db_digest);
		}
		SQL_COUNT++;
	}
	if (SQL_COUNT > 0)
    {
		csync_info(2, "{} files with same dev:inode ({}:{}) as file: {}\n",
				   SQL_COUNT,
				   static_cast<unsigned long long>(st->st_dev),
				   static_cast<unsigned long long>(csync_level_debug == 3 ? st->st_ino : 0l),
				   filename.c_str());
	}
	return tl;
};

// Use by csync_check_move, which isn't called. Error in seconds SQL fixed
textlist_p DbSql::check_dirty_file_same_dev_inode(peername_p peername, filename_p filename,
										 const std::string& checktxt, const char *digest, struct stat *st)
{
	// unused
	(void)checktxt;

	textlist_p tl = 0;

    try {
        auto rs = conn_->execute_query("check_dirty_file_same_dev_inode",
                                     "SELECT filename, checktxt, digest, operation FROM dirty WHERE myname = ?"
                                     " AND device = ? and inode = ? and filename != ? and peername = ?",
                                     g_myhostname, static_cast<long long>(st->st_dev), static_cast<long long>(st->st_ino), filename, peername);

        while (rs->next()) {
            std::string db_filename = rs->get_string(1);
            std::string db_checktxt = rs->get_string(2);
            auto db_digest = rs->get_string_optional(3);
            auto db_operation = rs->get_string_optional(4);

            if (!digest || !db_digest.has_value() || *db_digest == digest)
            {
                textlist_add_new3(&tl, db_filename.c_str(), db_checktxt.c_str(), db_operation.has_value() ? db_operation->c_str() : NULL);
            }
            else
            {
                csync_info(1, "Different digest for {} {} ", digest, db_digest->c_str());
            }
        }
    } catch (const DatabaseError& e) {
        csync_error(0, "Failed to check dirty file same dev inode: {}", e.what());
    }

    try {
        auto rs = conn_->execute_query("check_dirty_file_same_dev_inode2",
                                     "SELECT filename, checktxt, digest, NULL FROM file WHERE hostname = ?  "
                                     " AND device = ? AND inode = ? AND filename != ? ",
                                     g_myhostname, static_cast<long long>(st->st_dev), static_cast<long long>(st->st_ino), filename);

        while (rs->next()) {
            std::string db_filename = rs->get_string(1);
            std::string db_checktxt = rs->get_string(2);
            auto db_digest = rs->get_string_optional(3);
            auto db_operation = rs->get_string_optional(4);

            if (!digest || !db_digest.has_value() || *db_digest == digest)
            {
                textlist_add_new3(&tl, db_filename.c_str(), db_checktxt.c_str(), db_operation.has_value() ? db_operation->c_str() : NULL);
            }
            else
            {
                csync_info(1, "Different digest for {} {} ", digest, db_digest->c_str());
            }
        }
    } catch (const DatabaseError& e) {
        csync_error(0, "Failed to check dirty file same dev inode: {}", e.what());
    }

	return tl;
}
