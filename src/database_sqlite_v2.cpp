#include "database_v2.hpp"
#include <sqlite3.h>
#include <map>
#include "database_sqlite_v2.hpp"

// --- Concrete Implementation for SQLite ---

class SQLiteResultSet : public ResultSet {
public:
    explicit SQLiteResultSet(sqlite3_stmt* stmt)
        : stmt_(stmt) {
        // Populate column name to index map
        int col_count = sqlite3_column_count(stmt_);
        for (int i = 0; i < col_count; ++i) {
            column_names_[sqlite3_column_name(stmt_, i)] = i + 1; // 1-based index
        }
    }

    ~SQLiteResultSet() override {
        if (stmt_) {
            sqlite3_finalize(stmt_);
        }
    }

    bool next() override {
        int rc = sqlite3_step(stmt_);
        if (rc == SQLITE_ROW) {
            return true;
        }
        if (rc == SQLITE_DONE) {
            return false;
        }
        throw DatabaseError("Failed to step through result set: " + std::string(sqlite3_errmsg(sqlite3_db_handle(stmt_))));
    }

    int get_int(int index) const override {
        return sqlite3_column_int(stmt_, index - 1);
    }

    long long get_long(int index) const override {
        return sqlite3_column_int64(stmt_, index - 1);
    }

    double get_double(int index) const override {
        return sqlite3_column_double(stmt_, index - 1);
    }

    std::string get_string(int index) const override {
        const unsigned char* text = sqlite3_column_text(stmt_, index - 1);
        return text ? reinterpret_cast<const char*>(text) : "";
    }

    // New methods for column name lookup
    int get_int(const std::string& name) const override {
        return get_int(get_column_index(name));
    }
    long long get_long(const std::string& name) const override {
        return get_long(get_column_index(name));
    }
    double get_double(const std::string& name) const override {
        return get_double(get_column_index(name));
    }
    std::string get_string(const std::string& name) const override {
        return get_string(get_column_index(name));
    }

private:
    int get_column_index(const std::string& name) const {
        auto it = column_names_.find(name);
        if (it == column_names_.end()) {
            throw DatabaseError("Column not found: " + name);
        }
        return it->second;
    }

    sqlite3_stmt* stmt_; // The raw C-style statement handle, now owned by ResultSet
    std::map<std::string, int> column_names_;
};

class SQLitePreparedStatement : public PreparedStatement {
public:
    SQLitePreparedStatement(sqlite3* db, const std::string& sql) : db_(db), stmt_(nullptr) {
        int rc = sqlite3_prepare_v2(db, sql.c_str(), -1, &stmt_, nullptr);
        if (rc != SQLITE_OK) {
            throw DatabaseError("Failed to prepare statement: " + std::string(sqlite3_errmsg(db)));
        }
    }

    ~SQLitePreparedStatement() override {
        if (stmt_) {
            sqlite3_finalize(stmt_);
        }
    }

    void bind(int index, int value) override {
        sqlite3_bind_int(stmt_, index, value);
    }

    void bind(int index, long long value) override {
        sqlite3_bind_int64(stmt_, index, value);
    }

    void bind(int index, double value) override {
        sqlite3_bind_double(stmt_, index, value);
    }

    void bind(int index, const std::string& value) override {
        sqlite3_bind_text(stmt_, index, value.c_str(), -1, SQLITE_TRANSIENT);
    }

    void bind_null(int index) override {
        sqlite3_bind_null(stmt_, index);
    }

    std::unique_ptr<ResultSet> execute_query() override {
        // Transfer ownership of the statement to the ResultSet
        std::unique_ptr<ResultSet> rs = std::make_unique<SQLiteResultSet>(stmt_);
        stmt_ = nullptr; // Release ownership from PreparedStatement
        return rs;
    }

    long long execute_update() override {
        int rc = sqlite3_step(stmt_);
        if (rc != SQLITE_DONE) {
            throw DatabaseError("Failed to execute update: " + std::string(sqlite3_errmsg(db_)));
        }
        sqlite3_reset(stmt_); // Reset for reuse
        sqlite3_clear_bindings(stmt_); // Clear bindings for reuse
        return sqlite3_changes(db_);
    }

private:
    sqlite3* db_;
    sqlite3_stmt* stmt_;
};

SQLiteConnection::SQLiteConnection(const std::string& db_path) : db_(nullptr) {
  int rc = sqlite3_open(db_path.c_str(), &db_);
  if (rc != SQLITE_OK) {
    throw DatabaseError("Cannot open database: " + std::string(sqlite3_errmsg(db_)));
  }
}

SQLiteConnection::~SQLiteConnection() {
  if (db_) {
    sqlite3_close(db_);
  }
}

void SQLiteConnection::query(const std::string& sql) {
  char* err_msg = nullptr;
  int rc = sqlite3_exec(db_, sql.c_str(), 0, 0, &err_msg);
  if (rc != SQLITE_OK) {
    std::string msg = "SQL error: " + std::string(err_msg);
    sqlite3_free(err_msg);
    throw DatabaseError(msg);
  }
}

std::unique_ptr<PreparedStatement> SQLiteConnection::prepare(const std::string& sql) {
  return std::make_unique<SQLitePreparedStatement>(db_, sql);
}
