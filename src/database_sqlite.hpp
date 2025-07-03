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

#ifndef CSYNC2_DATABASE_SQLITE_HPP
#define CSYNC2_DATABASE_SQLITE_HPP 1

#include "database.hpp"
#include <sqlite3.h>
#include <memory>

// Forward declarations
struct buffer;
typedef struct buffer* BUF_P;

namespace csync2 {

// SQLite statement implementation
class SQLiteStatement : public DatabaseStatement {
public:
    explicit SQLiteStatement(sqlite3_stmt* stmt);
    ~SQLiteStatement() override;

    // Execute and fetch results
    DatabaseResult execute() override;
    DatabaseResult next() override;
    void reset() override;

    // Bind parameters
    void bind(int index, const std::string& value) override;
    void bind(int index, int value) override;
    void bind(int index, int64_t value) override;
    void bind(int index, double value) override;
    void bind_null(int index) override;

    // Get column values
    std::string get_column_text(int column) const override;
    const void* get_column_blob(int column) const override;
    int get_column_int(int column) const override;
    int64_t get_column_int64(int column) const override;
    double get_column_double(int column) const override;
    std::vector<uint8_t> get_blob(int column) const override;
    bool is_null(int column) const override;

    // Column information
    int column_count() const override;
    std::string column_name(int column) const override;
    std::string column_type(int column) const;

    // Legacy compatibility
    bool next_legacy() override;
    void close() override;

    // Affected rows
    int affected_rows() const override;

private:
    sqlite3_stmt* stmt_;
    bool executed_;
    int affected_rows_;
};

// SQLite connection implementation
class SQLiteConnection : public DatabaseConnection {
public:
    SQLiteConnection();
    ~SQLiteConnection() override;

    // Core database operations
    DatabaseResult exec(const std::string& sql) override;
    std::unique_ptr<DatabaseStatement> prepare(const std::string& statement) override;
    void close() override;

    // Error handling
    std::string error_message() const override;
    std::string escape(const std::string& input) const override;

    // Connection management
    DatabaseResult open(const std::string& connection_string) override;
    bool is_open() const override;
    DatabaseResult begin_transaction() override;
    DatabaseResult commit() override;
    DatabaseResult rollback() override;
    DatabaseType type() const;

private:
    sqlite3* db_;
    std::string last_error_;
    int last_error_code_;

    // Helper methods
    DatabaseResult sqlite_result_to_database_result(int sqlite_result);
    void update_error_info();
};

} // namespace csync2

#endif /* CSYNC2_DATABASE_SQLITE_HPP */
