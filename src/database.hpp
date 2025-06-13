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

#ifndef CSYNC2_DATABASE_HPP
#define CSYNC2_DATABASE_HPP 1

#include <string>
#include <memory>
#include <vector>
#include <functional>
#include "buffer.hpp"

namespace csync2 {

// Forward declarations
class DatabaseConnection;
class DatabaseStatement;
class TextList;

using filename_p = const char *;
using peername_p = const char *;

// Database types
enum class DatabaseType {
    SQLITE2 = 1,
    SQLITE3 = 2,
    MYSQL = 3,
    POSTGRESQL = 4
};

// Database result codes
enum class DatabaseResult {
    OK = 0,
    ERROR = -1,
    BUSY = -2,
    NO_CONNECTION = -3,
    NO_CONNECTION_REAL = -4,
    ROW = -100,
    DONE = -101
};

// Abstract base class for database connections
class DatabaseConnection {
public:
    virtual ~DatabaseConnection() = default;
    
    // Core database operations
    virtual DatabaseResult exec(const std::string& sql) = 0;
    virtual std::unique_ptr<DatabaseStatement> prepare(const std::string& statement) = 0;
    virtual void close() = 0;
    
    // Error handling
    virtual std::string error_message() const = 0;
    virtual std::string escape(const std::string& input) const = 0;
    
    // Schema operations
    virtual int schema_version() = 0;
    virtual DatabaseResult upgrade_to_schema(int version) = 0;
    
    // Csync2-specific operations
    virtual void mark(const std::string& active_peerlist, const std::string& realname, bool recursive) = 0;
    virtual int list_dirty(const std::vector<std::string>& active_peers, const std::string& realname, bool recursive) = 0;
    virtual void list_hint() = 0;
    virtual void list_files(const std::string& filename) = 0;
    virtual std::shared_ptr<TextList> list_file(const std::string& filename, const std::string& myname, 
                                               const std::string& peername, bool recursive) = 0;
    virtual void list_sync(const std::string& myname, const std::string& peername) = 0;
    
    // File operations
    virtual int check_file(const std::string& file, const std::string& enc, std::string& other, 
                          std::string& checktxt, struct stat* file_stat, Buffer& buffer, 
                          int& operation, std::string& digest, int flags, dev_t& old_no) = 0;
    
    // Action operations
    virtual int del_action(const std::string& filename, const std::string& prefix_command) = 0;
    virtual int add_action(const std::string& filename, const std::string& prefix_command, 
                          const std::string& logfile) = 0;
    virtual int remove_action_entry(const std::string& filename, const std::string& command, 
                                   const std::string& logfile) = 0;
    
    // Properties
    int version = 0;
    
protected:
    DatabaseConnection() = default;
};

// Abstract base class for database statements
class DatabaseStatement {
public:
    virtual ~DatabaseStatement() = default;
    
    virtual std::string get_column_text(int column) const = 0;
    virtual const void* get_column_blob(int column) const = 0;
    virtual int get_column_int(int column) const = 0;
    virtual bool next() = 0;
    virtual void close() = 0;
    
    int affected_rows = 0;
    
protected:
    DatabaseStatement() = default;
};

// Database factory
class DatabaseFactory {
public:
    static std::unique_ptr<DatabaseConnection> create(const std::string& connection_string);
    static std::unique_ptr<DatabaseConnection> create(const std::string& file, DatabaseType type);
};

// Database manager class
class DatabaseManager {
public:
    static DatabaseManager& instance();
    
    std::unique_ptr<DatabaseConnection> open(const std::string& connection_string);
    void close_all();
    
private:
    DatabaseManager() = default;
    std::vector<std::unique_ptr<DatabaseConnection>> connections_;
};

} // namespace csync2

// Legacy C-style interface for compatibility
extern "C" {
    // Include the original db_api.h definitions for compatibility
    #include "db_api.hpp"
    
    // Database functions
    db_conn_p csync_db_open(const char *file);
    void csync_db_close(db_conn_p db);
    int csync_db_exec(db_conn_p db, const char *sql);
    
    // Legacy functions that will be gradually replaced
    int db_open(const char *file, int type, db_conn_p *db);
    void db_close(void);
    void db_conn_close(db_conn_p conn);
    int db_exec(db_conn_p conn, const char *exec);
    int db_prepare_stmt(db_conn_p conn, const char *statement, db_stmt_p *stmt, const char **value);
    const char* db_stmt_get_column_text(db_stmt_p stmt, int column);
    int db_stmt_get_column_int(db_stmt_p stmt, int column);
    int db_stmt_next(db_stmt_p stmt);
    int db_stmt_close(db_stmt_p stmt);
    void db_set_logger(db_conn_p conn, void (*logger)(int priority, int lv, const char *fmt, ...));
    int db_schema_version(db_conn_p db);
    int db_upgrade_to_schema(db_conn_p db, int version);
    const char* db_errmsg(db_conn_p conn);
    const char* db_escape(db_conn_p conn, const char *string);
}

#endif /* CSYNC2_DATABASE_HPP */
