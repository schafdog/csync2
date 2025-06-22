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
#include <set>
#include <sys/stat.h>
//#include "dirty_record.hpp"

// Forward declarations to avoid circular dependencies
struct buffer;
typedef struct buffer* BUF_P;

namespace csync2 {

// Forward declarations
class DatabaseConnection;
class DatabaseStatement;

// C++ type aliases (different from C-style typedefs)
using cpp_filename_p = const std::string&;
using cpp_peername_p = const std::string&;

// Operation type for C++ interface
using operation_t = int;

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

    // Additional database operations
    virtual DatabaseResult open(const std::string& connection_string) = 0;
    virtual bool is_open() const = 0;
    virtual DatabaseResult begin_transaction() = 0;
    virtual DatabaseResult commit() = 0;
    virtual DatabaseResult rollback() = 0;
    virtual int64_t last_insert_id() const = 0;
    virtual int last_error_code() const = 0;
    virtual DatabaseType type() const = 0;


protected:
    DatabaseConnection() = default;
};

// Abstract base class for database statements
class DatabaseStatement {
public:
    virtual ~DatabaseStatement() = default;

    // Execute and fetch results
    virtual DatabaseResult execute() = 0;
    virtual DatabaseResult next() = 0;
    virtual void reset() = 0;

    // Bind parameters
    virtual void bind(int index, const std::string& value) = 0;
    virtual void bind(int index, int value) = 0;
    virtual void bind(int index, int64_t value) = 0;
    virtual void bind(int index, double value) = 0;
    virtual void bind_null(int index) = 0;

    // Get column values
    virtual std::string get_column_text(int column) const = 0;
    virtual const void* get_column_blob(int column) const = 0;
    virtual int get_column_int(int column) const = 0;
    virtual int64_t get_column_int64(int column) const = 0;
    virtual double get_column_double(int column) const = 0;
    virtual std::vector<uint8_t> get_blob(int column) const = 0;
    virtual bool is_null(int column) const = 0;

    // Column information
    virtual int column_count() const = 0;
    virtual std::string column_name(int column) const = 0;
    virtual std::string column_type(int column) const = 0;

    // Legacy compatibility
    virtual bool next_legacy() = 0;
    virtual void close() = 0;

    // Affected rows
    virtual int affected_rows() const = 0;

protected:
    DatabaseStatement() = default;
};

// Database factory
class DatabaseFactory {
public:
    static std::unique_ptr<DatabaseConnection> create_from_url(const std::string& connection_string);
    static std::unique_ptr<DatabaseConnection> create(DatabaseType type);
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

#endif /* CSYNC2_DATABASE_HPP */
