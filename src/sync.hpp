/*  -*- c++-file-style: "k&r"; c-basic-offset: 4; tab-width: 4; indent-tabs-mode: t -*-
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

#ifndef CSYNC2_SYNC_HPP
#define CSYNC2_SYNC_HPP 1

#include <string>
#include <vector>
#include <memory>
#include <functional>
#include <sys/stat.h>

namespace csync2 {

// Forward declarations
class DatabaseConnection;
class TextList;
class Group;

using filename_p = const char *;
using peername_p = const char *;

// File operation types
enum class FileOperation {
    UNDEF = 0,
    MARK = 0,
    MKDIR = 1,
    NEW = 2,
    MKFIFO = 4,
    MKCHR = 8,
    MOVE = 16,
    HARDLINK = 32,
    RM = 64,
    MOD = 128,
    MOD2 = 256,
    SYNC = (MOD | MOD2)
};

// Check result flags
enum class CheckResult {
    DEV_INO_SAME = 0,
    DEV_CHANGED = 1,
    INO_CHANGED = 2,
    DEV_MISSING = 4,
    INO_MISSING = 8
};

// File synchronization engine
class SyncEngine {
public:
    SyncEngine(std::shared_ptr<DatabaseConnection> db);
    virtual ~SyncEngine() = default;
    
    // Core synchronization operations
    virtual int check(const std::string& filename, int flags);
    virtual int check_mod(const std::string& filename, int flags, int* count_dirty, const Group** group);
    virtual int check_del(const std::string& filename, int flags);
    virtual int update(const std::string& myname, const std::vector<std::string>& peers, 
                      const std::vector<std::string>& patterns, int ip_version, int flags);
    
    // File operations
    virtual int action(const std::string& filename, FileOperation operation);
    virtual int remove_old(const std::string& path = "");
    virtual int mark_dirty(const std::string& filename, bool recursive = false);
    
    // Comparison and analysis
    virtual int compare_files(const std::string& file1, const std::string& file2);
    virtual std::shared_ptr<TextList> get_dirty_files(const std::vector<std::string>& peers, 
                                                      const std::string& path, bool recursive);
    
    // Digest and checksums
    virtual std::string calculate_digest(const std::string& filename);
    virtual bool verify_digest(const std::string& filename, const std::string& expected_digest);
    
private:
    std::shared_ptr<DatabaseConnection> db_;
    
    // Internal helper methods
    int check_file_internal(const std::string& filename, struct stat* st, int flags);
    int update_file_internal(const std::string& filename, const std::string& peer, int flags);
};

// Update function type
using UpdateFunction = std::function<void(std::shared_ptr<DatabaseConnection>, const std::string&, 
                                         const std::vector<std::string>&, const std::vector<std::string>&, 
                                         int, int)>;

// Synchronization manager
class SyncManager {
public:
    static SyncManager& instance();
    
    void set_update_function(UpdateFunction func);
    void run_sync(std::shared_ptr<DatabaseConnection> db, const std::string& myname,
                  const std::vector<std::string>& peers, const std::vector<std::string>& patterns,
                  int ip_version, int flags);
    
private:
    SyncManager() = default;
    UpdateFunction update_func_;
};

// Action execution engine
class ActionEngine {
public:
    ActionEngine(std::shared_ptr<DatabaseConnection> db);
    virtual ~ActionEngine() = default;
    
    // Action management
    virtual int add_action(const std::string& filename, const std::string& command, 
                          const std::string& logfile = "");
    virtual int remove_action(const std::string& filename, const std::string& command);
    virtual int execute_actions();
    virtual void list_actions();
    
private:
    std::shared_ptr<DatabaseConnection> db_;
};

// Rsync integration
class RsyncEngine {
public:
    RsyncEngine() = default;
    virtual ~RsyncEngine() = default;
    
    // Rsync operations
    virtual int send_file(const std::string& filename, int conn_fd);
    virtual int receive_file(const std::string& filename, int conn_fd);
    virtual int generate_signature(const std::string& filename, int conn_fd);
    virtual int apply_delta(const std::string& filename, int conn_fd);
    
private:
    // Rsync implementation details
    int rsync_send_internal(const std::string& filename, int fd);
    int rsync_receive_internal(const std::string& filename, int fd);
};

} // namespace csync2

// Legacy C-style interface for compatibility
extern "C" {
    // Check functions
    int csync_check(db_conn_p db, const char *filename, int flags);
    int csync_check_mod(db_conn_p db, const char *filename, int flags, int *count_dirty, const struct csync_group **group);
    int csync_check_del(db_conn_p db, const char *filename, int flags);
    
    // Update functions
    void csync_update(db_conn_p db, const char *myname, char **active_peers, 
                     const char **patlist, int patnum, int ip_version, 
                     void (*update_func)(db_conn_p, const char *, const char *, const char **, int, int, int), 
                     int flags);
    
    // Action functions
    int csync_run_commands(db_conn_p db);
    
    // Rsync functions
    int csync_rs_check(const char *filename, int isreg);
    void csync_rs_sig(int fd);
    int csync_rs_delta(int fd);
    int csync_rs_patch(int fd);
    
    // Utility functions
    char *csync_genchecktxt(const struct stat *st, const char *filename, int flags);
    int csync_cmpchecktxt(const char *a, const char *b);
    void csync_remove_old(db_conn_p db, const char *path);
}

#endif /* CSYNC2_SYNC_HPP */
