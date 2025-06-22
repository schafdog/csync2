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

#include "database_sqlite.hpp"
#include <sstream>
#include <algorithm>

namespace csync2 {

// SQLiteStatement implementation
SQLiteStatement::SQLiteStatement(sqlite3_stmt* stmt) 
    : stmt_(stmt), executed_(false), affected_rows_(0) {
}

SQLiteStatement::~SQLiteStatement() {
    if (stmt_) {
        sqlite3_finalize(stmt_);
    }
}

DatabaseResult SQLiteStatement::execute() {
    if (!stmt_) return DatabaseResult::ERROR;
    
    int result = sqlite3_step(stmt_);
    executed_ = true;
    
    if (result == SQLITE_ROW) {
        return DatabaseResult::ROW;
    } else if (result == SQLITE_DONE) {
        affected_rows_ = sqlite3_changes(sqlite3_db_handle(stmt_));
        return DatabaseResult::DONE;
    } else {
        return DatabaseResult::ERROR;
    }
}

DatabaseResult SQLiteStatement::next() {
    if (!stmt_ || !executed_) return DatabaseResult::ERROR;
    
    int result = sqlite3_step(stmt_);
    if (result == SQLITE_ROW) {
        return DatabaseResult::ROW;
    } else if (result == SQLITE_DONE) {
        return DatabaseResult::DONE;
    } else {
        return DatabaseResult::ERROR;
    }
}

void SQLiteStatement::reset() {
    if (stmt_) {
        sqlite3_reset(stmt_);
        executed_ = false;
    }
}

void SQLiteStatement::bind(int index, const std::string& value) {
    if (stmt_) {
        sqlite3_bind_text(stmt_, index, value.c_str(), -1, SQLITE_TRANSIENT);
    }
}

void SQLiteStatement::bind(int index, int value) {
    if (stmt_) {
        sqlite3_bind_int(stmt_, index, value);
    }
}

void SQLiteStatement::bind(int index, int64_t value) {
    if (stmt_) {
        sqlite3_bind_int64(stmt_, index, value);
    }
}

void SQLiteStatement::bind(int index, double value) {
    if (stmt_) {
        sqlite3_bind_double(stmt_, index, value);
    }
}

void SQLiteStatement::bind_null(int index) {
    if (stmt_) {
        sqlite3_bind_null(stmt_, index);
    }
}

std::string SQLiteStatement::get_column_text(int column) const {
    if (!stmt_) return "";
    
    const char* text = reinterpret_cast<const char*>(sqlite3_column_text(stmt_, column));
    return text ? std::string(text) : std::string();
}

const void* SQLiteStatement::get_column_blob(int column) const {
    if (!stmt_) return nullptr;
    return sqlite3_column_blob(stmt_, column);
}

int SQLiteStatement::get_column_int(int column) const {
    if (!stmt_) return 0;
    return sqlite3_column_int(stmt_, column);
}

int64_t SQLiteStatement::get_column_int64(int column) const {
    if (!stmt_) return 0;
    return sqlite3_column_int64(stmt_, column);
}

double SQLiteStatement::get_column_double(int column) const {
    if (!stmt_) return 0.0;
    return sqlite3_column_double(stmt_, column);
}

std::vector<uint8_t> SQLiteStatement::get_blob(int column) const {
    if (!stmt_) return {};
    
    const void* blob = sqlite3_column_blob(stmt_, column);
    int size = sqlite3_column_bytes(stmt_, column);
    
    if (!blob || size <= 0) return {};
    
    const uint8_t* data = static_cast<const uint8_t*>(blob);
    return std::vector<uint8_t>(data, data + size);
}

bool SQLiteStatement::is_null(int column) const {
    if (!stmt_) return true;
    return sqlite3_column_type(stmt_, column) == SQLITE_NULL;
}

int SQLiteStatement::column_count() const {
    if (!stmt_) return 0;
    return sqlite3_column_count(stmt_);
}

std::string SQLiteStatement::column_name(int column) const {
    if (!stmt_) return "";
    const char* name = sqlite3_column_name(stmt_, column);
    return name ? std::string(name) : std::string();
}

std::string SQLiteStatement::column_type(int column) const {
    if (!stmt_) return "";
    const char* type = sqlite3_column_decltype(stmt_, column);
    return type ? std::string(type) : std::string();
}

bool SQLiteStatement::next_legacy() {
    return next() == DatabaseResult::ROW;
}

void SQLiteStatement::close() {
    if (stmt_) {
        sqlite3_finalize(stmt_);
        stmt_ = nullptr;
    }
}

int SQLiteStatement::affected_rows() const {
    return affected_rows_;
}

// SQLiteConnection implementation
SQLiteConnection::SQLiteConnection() : db_(nullptr), last_error_code_(SQLITE_OK) {
}

SQLiteConnection::~SQLiteConnection() {
    close();
}

DatabaseResult SQLiteConnection::open(const std::string& connection_string) {
    if (db_) {
        close();
    }
    
    int result = sqlite3_open(connection_string.c_str(), &db_);
    if (result != SQLITE_OK) {
        update_error_info();
        return DatabaseResult::ERROR;
    }
    
    return DatabaseResult::OK;
}

void SQLiteConnection::close() {
    if (db_) {
        sqlite3_close(db_);
        db_ = nullptr;
    }
}

bool SQLiteConnection::is_open() const {
    return db_ != nullptr;
}

DatabaseResult SQLiteConnection::exec(const std::string& sql) {
    if (!db_) return DatabaseResult::NO_CONNECTION;
    
    char* error_msg = nullptr;
    int result = sqlite3_exec(db_, sql.c_str(), nullptr, nullptr, &error_msg);
    
    if (result != SQLITE_OK) {
        if (error_msg) {
            last_error_ = error_msg;
            sqlite3_free(error_msg);
        }
        last_error_code_ = result;
        return sqlite_result_to_database_result(result);
    }
    
    return DatabaseResult::OK;
}

std::unique_ptr<DatabaseStatement> SQLiteConnection::prepare(const std::string& statement) {
    if (!db_) return nullptr;
    
    sqlite3_stmt* stmt = nullptr;
    int result = sqlite3_prepare_v2(db_, statement.c_str(), -1, &stmt, nullptr);
    
    if (result != SQLITE_OK) {
        update_error_info();
        return nullptr;
    }
    
    return std::make_unique<SQLiteStatement>(stmt);
}

std::string SQLiteConnection::error_message() const {
    return last_error_;
}

std::string SQLiteConnection::escape(const std::string& input) const {
    // SQLite uses single quotes and doubles them for escaping
    std::string result;
    result.reserve(input.length() + 2);
    result += "'";
    
    for (char c : input) {
        if (c == '\'') {
            result += "''";
        } else {
            result += c;
        }
    }
    
    result += "'";
    return result;
}

DatabaseResult SQLiteConnection::begin_transaction() {
    return exec("BEGIN TRANSACTION");
}

DatabaseResult SQLiteConnection::commit() {
    return exec("COMMIT");
}

DatabaseResult SQLiteConnection::rollback() {
    return exec("ROLLBACK");
}

int64_t SQLiteConnection::last_insert_id() const {
    if (!db_) return 0;
    return sqlite3_last_insert_rowid(db_);
}

int SQLiteConnection::last_error_code() const {
    return last_error_code_;
}

DatabaseType SQLiteConnection::type() const {
    return DatabaseType::SQLITE3;
}

DatabaseResult SQLiteConnection::sqlite_result_to_database_result(int sqlite_result) {
    switch (sqlite_result) {
        case SQLITE_OK: return DatabaseResult::OK;
        case SQLITE_ROW: return DatabaseResult::ROW;
        case SQLITE_DONE: return DatabaseResult::DONE;
        case SQLITE_BUSY: return DatabaseResult::BUSY;
        default: return DatabaseResult::ERROR;
    }
}

void SQLiteConnection::update_error_info() {
    if (db_) {
        last_error_ = sqlite3_errmsg(db_);
        last_error_code_ = sqlite3_errcode(db_);
    }
}

// Placeholder implementations for csync2-specific operations
// These would need to be implemented based on the existing database schema

int SQLiteConnection::schema_version() {
    // Implementation would query schema version from database
    return 0;
}

DatabaseResult SQLiteConnection::upgrade_to_schema(int version) {
    // Implementation would perform schema upgrades
    return DatabaseResult::OK;
}

void SQLiteConnection::mark(const std::string& active_peerlist, const std::string& realname, bool recursive) {
    // Implementation would mark files for synchronization
}

int SQLiteConnection::list_dirty(const std::vector<std::string>& active_peers, const std::string& realname, bool recursive) {
    // Implementation would list dirty files
    return 0;
}

// File operations implementation
int SQLiteConnection::check_file(const std::string& file, const std::string& enc, std::string& other,
                                std::string& checktxt, struct stat* file_stat,
                                int& operation, std::string& digest, int flags, dev_t& old_no) {
    // Placeholder implementation
    return 0;
}

// Action operations implementation
int SQLiteConnection::del_action(const std::string& filename, const std::string& prefix_command) {
    // Placeholder implementation
    return 0;
}

int SQLiteConnection::add_action(const std::string& filename, const std::string& prefix_command,
                                const std::string& logfile) {
    // Placeholder implementation
    return 0;
}

int SQLiteConnection::remove_action_entry(const std::string& filename, const std::string& command,
                                         const std::string& logfile) {
    // Placeholder implementation
    return 0;
}

// Dirty file operations implementation
int SQLiteConnection::is_dirty(const std::string& filename, const std::string& peername, int& operation, int& mode) {
    // Placeholder implementation
    return 0;
}

void SQLiteConnection::force(const std::string& realname, bool recursive) {
    // Placeholder implementation
}

int SQLiteConnection::add_dirty(const std::string& file_new, bool csync_new_force, const std::string& myname,
                               const std::string& peername, const std::string& operation, const std::string& checktxt,
                               const std::string& dev, const std::string& ino, const std::string& result_other,
                               int op, int mode, int mtime) {
    // Placeholder implementation
    return 0;
}

void SQLiteConnection::remove_dirty(const std::string& peername, const std::string& filename, bool recursive) {
    // Placeholder implementation
}

// File management implementation
void SQLiteConnection::add_hint(const std::string& filename, bool recursive) {
    // Placeholder implementation
}

void SQLiteConnection::remove_hint(const std::string& filename, bool recursive) {
    // Placeholder implementation
}

void SQLiteConnection::remove_file(const std::string& filename, bool recursive) {
    // Placeholder implementation
}

void SQLiteConnection::delete_file(const std::string& filename, bool recursive) {
    // Placeholder implementation
}

int SQLiteConnection::update_file(const std::string& encoded, const std::string& checktxt_encoded,
                                 struct stat* file_stat, const std::string& digest) {
    // Placeholder implementation
    return 0;
}

int SQLiteConnection::insert_file(const std::string& encoded, const std::string& checktxt_encoded,
                                 struct stat* file_stat, const std::string& digest) {
    // Placeholder implementation
    return 0;
}

int SQLiteConnection::insert_update_file(const std::string& encoded, const std::string& checktxt_encoded,
                                        struct stat* file_stat, const std::string& digest) {
    // Placeholder implementation
    return 0;
}

// Query operations implementation
std::vector<DirtyRecord> SQLiteConnection::get_dirty_by_peer_match(const std::string& myname, const std::string& peername,
                                                                   bool recursive, const std::set<std::string>& patlist) {
    // Placeholder implementation
    return {};
}

std::shared_ptr<DirtyRecord> SQLiteConnection::get_dirty_by_peer_match(const std::string& myname, const std::string& peername,
                                                                   bool recursive, const std::set<std::string>& patlist) {
    // Placeholder implementation
    return std::make_shared<DirtyRecord>();
}

std::shared_ptr<DirtyRecord> SQLiteConnection::get_old_operation(const std::string& checktxt, const std::string& peername,
                                                             const std::string& filename, const std::string& device,
                                                             const std::string& ino) {
    // Placeholder implementation
    return std::make_shared<DirtyRecord>();
}

std::vector<FileRecord> SQLiteConnection::check_file_same_dev_inode(const std::string& filename, const std::string& checktxt,
                                                                     const std::string& digest, struct stat* st,
                                                                     const std::string& peername) {
    // Placeholder implementation
    return std::vector<FileRecord>();
}

std::vector<DirtyRecord> SQLiteConnection::check_dirty_file_same_dev_inode(const std::string& peername, const std::string& filename,
                                                                           const std::string& checktxt, const std::string& digest,
                                                                           struct stat* st) {
    // Placeholder implementation
    return std::vector<DirtyRecord>();
}

void SQLiteConnection::list_hint() {
    // Placeholder implementation
}

void SQLiteConnection::list_files(const std::string& filename) {
    // Placeholder implementation
}

std::vector<FileRecord> SQLiteConnection::list_file(const std::string& filename, const std::string& myname,
                                                     const std::string& peername, bool recursive) {
    // Placeholder implementation
    return std::vector<FileRecord>();
}

void SQLiteConnection::list_sync(const std::string& myname, const std::string& peername) {
    // Placeholder implementation
}

} // namespace csync2
