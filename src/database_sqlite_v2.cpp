
#include "database_sqlite_v2.hpp"
#include <dlfcn.h>
#include <iostream>
#include <map>
#include <stdexcept>
#include <sqlite3.h>
#include <optional>
#include "modern_logging.hpp"
#include "error.hpp"

// Define function pointer types for the SQLite C API.
using sqlite3_open_t = decltype(&sqlite3_open);
using sqlite3_close_t = decltype(&sqlite3_close);
using sqlite3_exec_t = decltype(&sqlite3_exec);
using sqlite3_prepare_v2_t = decltype(&sqlite3_prepare_v2);
using sqlite3_finalize_t = decltype(&sqlite3_finalize);
using sqlite3_step_t = decltype(&sqlite3_step);
using sqlite3_reset_t = decltype(&sqlite3_reset);
using sqlite3_clear_bindings_t = decltype(&sqlite3_clear_bindings);
using sqlite3_bind_int_t = decltype(&sqlite3_bind_int);
using sqlite3_bind_int64_t = decltype(&sqlite3_bind_int64);
using sqlite3_bind_double_t = decltype(&sqlite3_bind_double);
using sqlite3_bind_text_t = decltype(&sqlite3_bind_text);
using sqlite3_bind_null_t = decltype(&sqlite3_bind_null);
using sqlite3_column_count_t = decltype(&sqlite3_column_count);
using sqlite3_column_name_t = decltype(&sqlite3_column_name);
using sqlite3_column_type_t = decltype(&sqlite3_column_type);
using sqlite3_column_int_t = decltype(&sqlite3_column_int);
using sqlite3_column_int64_t = decltype(&sqlite3_column_int64);
using sqlite3_column_double_t = decltype(&sqlite3_column_double);
using sqlite3_column_text_t = decltype(&sqlite3_column_text);
using sqlite3_errmsg_t = decltype(&sqlite3_errmsg);
using sqlite3_db_handle_t = decltype(&sqlite3_db_handle);
using sqlite3_changes_t = decltype(&sqlite3_changes);
using sqlite3_free_t = decltype(&sqlite3_free);
using sqlite3_shutdown_t = decltype(&sqlite3_shutdown);

const char* get_sqlite_library_name() {
#if defined(_WIN32) || defined(_WIN64)
    return "sqlite3.dll";
#elif defined(__APPLE__)
    return "libsqlite3.dylib";
#else
    return "libsqlite3.so";
#endif
}

struct SQLiteAPI {
    void* handle_;
    sqlite3_open_t sqlite3_open;
    sqlite3_close_t sqlite3_close;
    sqlite3_exec_t sqlite3_exec;
    sqlite3_prepare_v2_t sqlite3_prepare_v2;
    sqlite3_finalize_t sqlite3_finalize;
    sqlite3_step_t sqlite3_step;
    sqlite3_reset_t sqlite3_reset;
    sqlite3_clear_bindings_t sqlite3_clear_bindings;
    sqlite3_bind_int_t sqlite3_bind_int;
    sqlite3_bind_int64_t sqlite3_bind_int64;
    sqlite3_bind_double_t sqlite3_bind_double;
    sqlite3_bind_text_t sqlite3_bind_text;
    sqlite3_bind_null_t sqlite3_bind_null;
    sqlite3_column_count_t sqlite3_column_count;
    sqlite3_column_name_t sqlite3_column_name;
    sqlite3_column_type_t sqlite3_column_type;
    sqlite3_column_int_t sqlite3_column_int;
    sqlite3_column_int64_t sqlite3_column_int64;
    sqlite3_column_double_t sqlite3_column_double;
    sqlite3_column_text_t sqlite3_column_text;
    sqlite3_errmsg_t sqlite3_errmsg;
    sqlite3_db_handle_t sqlite3_db_handle;
    sqlite3_changes_t sqlite3_changes;
    sqlite3_free_t sqlite3_free;
    sqlite3_shutdown_t sqlite3_shutdown;

    SQLiteAPI() {
        const char* lib_name = get_sqlite_library_name();
        handle_ = dlopen(lib_name, RTLD_LAZY);
        if (!handle_) {
            throw DatabaseError("Cannot open " + std::string(lib_name));
        }

        sqlite3_open = reinterpret_cast<sqlite3_open_t>(dlsym(handle_, "sqlite3_open"));
        sqlite3_close = reinterpret_cast<sqlite3_close_t>(dlsym(handle_, "sqlite3_close"));
        sqlite3_exec = reinterpret_cast<sqlite3_exec_t>(dlsym(handle_, "sqlite3_exec"));
        sqlite3_prepare_v2 = reinterpret_cast<sqlite3_prepare_v2_t>(dlsym(handle_, "sqlite3_prepare_v2"));
        sqlite3_finalize = reinterpret_cast<sqlite3_finalize_t>(dlsym(handle_, "sqlite3_finalize"));
        sqlite3_step = reinterpret_cast<sqlite3_step_t>(dlsym(handle_, "sqlite3_step"));
        sqlite3_reset = reinterpret_cast<sqlite3_reset_t>(dlsym(handle_, "sqlite3_reset"));
        sqlite3_clear_bindings = reinterpret_cast<sqlite3_clear_bindings_t>(dlsym(handle_, "sqlite3_clear_bindings"));
        sqlite3_bind_int = reinterpret_cast<sqlite3_bind_int_t>(dlsym(handle_, "sqlite3_bind_int"));
        sqlite3_bind_int64 = reinterpret_cast<sqlite3_bind_int64_t>(dlsym(handle_, "sqlite3_bind_int64"));
        sqlite3_bind_double = reinterpret_cast<sqlite3_bind_double_t>(dlsym(handle_, "sqlite3_bind_double"));
        sqlite3_bind_text = reinterpret_cast<sqlite3_bind_text_t>(dlsym(handle_, "sqlite3_bind_text"));
        sqlite3_bind_null = reinterpret_cast<sqlite3_bind_null_t>(dlsym(handle_, "sqlite3_bind_null"));
        sqlite3_column_count = reinterpret_cast<sqlite3_column_count_t>(dlsym(handle_, "sqlite3_column_count"));
        sqlite3_column_name = reinterpret_cast<sqlite3_column_name_t>(dlsym(handle_, "sqlite3_column_name"));
        sqlite3_column_type = reinterpret_cast<sqlite3_column_type_t>(dlsym(handle_, "sqlite3_column_type"));
        sqlite3_column_int = reinterpret_cast<sqlite3_column_int_t>(dlsym(handle_, "sqlite3_column_int"));
        sqlite3_column_int64 = reinterpret_cast<sqlite3_column_int64_t>(dlsym(handle_, "sqlite3_column_int64"));
        sqlite3_column_double = reinterpret_cast<sqlite3_column_double_t>(dlsym(handle_, "sqlite3_column_double"));
        sqlite3_column_text = reinterpret_cast<sqlite3_column_text_t>(dlsym(handle_, "sqlite3_column_text"));
        sqlite3_errmsg = reinterpret_cast<sqlite3_errmsg_t>(dlsym(handle_, "sqlite3_errmsg"));
        sqlite3_db_handle = reinterpret_cast<sqlite3_db_handle_t>(dlsym(handle_, "sqlite3_db_handle"));
        sqlite3_changes = reinterpret_cast<sqlite3_changes_t>(dlsym(handle_, "sqlite3_changes"));
        sqlite3_free = reinterpret_cast<sqlite3_free_t>(dlsym(handle_, "sqlite3_free"));
        sqlite3_shutdown = reinterpret_cast<sqlite3_shutdown_t>(dlsym(handle_, "sqlite3_shutdown"));
    }

    ~SQLiteAPI() {
        if (handle_) {
	    sqlite3_shutdown();
            dlclose(handle_);
        }
    }
};

class SQLiteResultSet : public ResultSet {
public:
    explicit SQLiteResultSet(sqlite3_stmt* stmt, std::shared_ptr<SQLiteAPI> api)
        : stmt_(stmt), api_(api) {
        int col_count = api_->sqlite3_column_count(stmt_);
        for (int i = 0; i < col_count; ++i) {
            column_names_[api_->sqlite3_column_name(stmt_, i)] = i + 1;
        }
    }

    ~SQLiteResultSet() override {
        if (stmt_) {
	    api_->sqlite3_reset(stmt_);
	    api_->sqlite3_clear_bindings(stmt_);
        }
    }

    int rows() const override {
        return api_->sqlite3_changes(api_->sqlite3_db_handle(stmt_));
    }

    bool next() override {
        int rc = api_->sqlite3_step(stmt_);
        if (rc == SQLITE_ROW) {
            return true;
        }
        if (rc == SQLITE_DONE) {
            return false;
        }
        throw DatabaseError("Failed to step through result set: rc=" + std::to_string(rc) + " " 
			    + std::string(api_->sqlite3_errmsg(api_->sqlite3_db_handle(stmt_))));
    }

    int get_int(int index) const override {
        return api_->sqlite3_column_int(stmt_, index - 1);
    }

    long long get_long(int index) const override {
        return api_->sqlite3_column_int64(stmt_, index - 1);
    }

    double get_double(int index) const override {
        return api_->sqlite3_column_double(stmt_, index - 1);
    }

    std::string get_string(int index) const override {
        const unsigned char* text = api_->sqlite3_column_text(stmt_, index - 1);
        return text ? reinterpret_cast<const char*>(text) : "";
    }

    std::optional<std::string> get_string_optional(int index) const override {
        return get_string(index);
    }

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

     std::optional<std::string> get_string_optional(const std::string& name) const override {
         return get_string(name);
     }

private:
    int get_column_index(const std::string& name) const {
        auto it = column_names_.find(name);
        if (it == column_names_.end()) {
            throw DatabaseError("Column not found: " + name);
        }
        return it->second;
    }

    sqlite3_stmt* stmt_;
    std::shared_ptr<SQLiteAPI> api_;
    std::map<std::string, int> column_names_;
};

class SQLitePreparedStatement : public PreparedStatement {
public:
    SQLitePreparedStatement(sqlite3* db, const std::string& sql, std::shared_ptr<SQLiteAPI> api)
        : db_(db), stmt_(nullptr), api_(api) {
	const char *errmsg = nullptr;
        int rc = api_->sqlite3_prepare_v2(db, sql.c_str(), -1, &stmt_, &errmsg);
        csync_debug_c(3, "SQLITE prepare %p %s %d errmsg %s\n", db, sql.c_str(), rc, errmsg);
	if (rc != SQLITE_OK) {
            throw DatabaseError("Failed to prepare statement: " + std::string(api_->sqlite3_errmsg(db)));
        }
    }

    ~SQLitePreparedStatement() override {
        if (stmt_) {
	    csync_debug(1, "SQLitePreparedStatement finalizing\n");
            api_->sqlite3_finalize(stmt_);
        }
    }

    void bind(int index, int value) override {
        int rc = api_->sqlite3_bind_int(stmt_, index, value);
        if (rc != SQLITE_OK) {
            throw DatabaseError("Failed to bind int: " + std::string(api_->sqlite3_errmsg(api_->sqlite3_db_handle(stmt_))));
        }
    }

    void bind(int index, long value) override {
        int rc = api_->sqlite3_bind_int64(stmt_, index, value);
        if (rc != SQLITE_OK) {
            throw DatabaseError("Failed to bind long: " + std::string(api_->sqlite3_errmsg(api_->sqlite3_db_handle(stmt_))));
        }
    }

    void bind(int index, long long value) override {
        int rc = api_->sqlite3_bind_int64(stmt_, index, value);
        if (rc != SQLITE_OK) {
            throw DatabaseError("Failed to bind long long: " + std::string(api_->sqlite3_errmsg(api_->sqlite3_db_handle(stmt_))));
        }
    }

    void bind(int index, double value) override {
        int rc = api_->sqlite3_bind_double(stmt_, index, value);
        if (rc != SQLITE_OK) {
            throw DatabaseError("Failed to bind double: " + std::string(api_->sqlite3_errmsg(api_->sqlite3_db_handle(stmt_))));
        }
    }

    void bind(int index, const std::string& value) override {
        int rc = api_->sqlite3_bind_text(stmt_, index, value.c_str(), -1, SQLITE_TRANSIENT);
        if (rc != SQLITE_OK) {
            throw DatabaseError("Failed to bind string: " + std::string(api_->sqlite3_errmsg(api_->sqlite3_db_handle(stmt_))));
        }
    }

    void bind(int index, const char* value) override {
        int rc;
        if (value) {
            rc = api_->sqlite3_bind_text(stmt_, index, value, -1, SQLITE_TRANSIENT);
            if (rc != SQLITE_OK) {
                throw DatabaseError("Failed to bind char*: " + std::string(api_->sqlite3_errmsg(api_->sqlite3_db_handle(stmt_))));
            }
        } else {
            bind_null(index);
        }
    }

    void bind_null(int index) override {
        int rc = api_->sqlite3_bind_null(stmt_, index);
        if (rc != SQLITE_OK) {
            throw DatabaseError("Failed to bind null: " + std::string(api_->sqlite3_errmsg(api_->sqlite3_db_handle(stmt_))));
        }
    }

    std::unique_ptr<ResultSet> execute_query() override {
        std::unique_ptr<ResultSet> rs = std::make_unique<SQLiteResultSet>(stmt_, api_);
        return rs;
    }

    long long execute_update() override {
        int rc = api_->sqlite3_step(stmt_);
        if (rc != SQLITE_DONE) {
            throw DatabaseError("Failed to execute update: " + std::string(api_->sqlite3_errmsg(db_)));
        }
	rc = api_->sqlite3_changes(api_->sqlite3_db_handle(stmt_));
        api_->sqlite3_reset(stmt_);
        api_->sqlite3_clear_bindings(stmt_);
        return rc;
    }

private:
    sqlite3* db_;
    sqlite3_stmt* stmt_;
    std::shared_ptr<SQLiteAPI> api_;
};

SQLiteConnection::SQLiteConnection(const std::string& db_path) : db_(nullptr) {
    sqlite_api_ = std::make_shared<SQLiteAPI>();
    csync_debug(1, "SQLite open: %s\n", db_path.c_str());
    int rc = sqlite_api_->sqlite3_open(db_path.c_str(), &db_);
    if (rc != SQLITE_OK) {
        throw DatabaseError("Cannot open database: " + std::string(sqlite_api_->sqlite3_errmsg(db_)));
    }
}

SQLiteConnection::SQLiteConnection(sqlite3 *db) : db_(db) {
    sqlite_api_ = std::make_shared<SQLiteAPI>();
}

SQLiteConnection::~SQLiteConnection() {
    if (db_) {
        sqlite_api_->sqlite3_close(db_);
    }
}

void SQLiteConnection::query(const std::string& sql) {
    char* err_msg = nullptr;
    int rc = sqlite_api_->sqlite3_exec(db_, sql.c_str(), 0, 0, &err_msg);
    csync_debug_c(2, "SQLite query %s rc %d err %s\n", sql.c_str(), rc, err_msg ? err_msg : "");
    if (rc != SQLITE_OK) {
        std::string msg = "SQL error: " + std::string(err_msg);
        sqlite_api_->sqlite3_free(err_msg);
        throw DatabaseError(msg);
    }
}

std::unique_ptr<PreparedStatement> SQLiteConnection::prepare(const std::string& sql) {
    return std::make_unique<SQLitePreparedStatement>(db_, sql, sqlite_api_);
}

std::shared_ptr<PreparedStatement> SQLiteConnection::prepare(const std::string& name, const std::string& sql) {
    if (named_statements_.find(name) == named_statements_.end()) {
        named_statements_[name] = std::make_shared<SQLitePreparedStatement>(db_, sql, sqlite_api_);
    }
    return named_statements_[name];
}

template<typename... Args>
std::unique_ptr<ResultSet> SQLiteConnection::execute_query(const std::string& name, const std::string& sql, Args... args) {
    return DatabaseConnection::execute_query(name, sql, args...);
}

template<typename... Args>
long long SQLiteConnection::execute_update(const std::string& name, const std::string& sql, Args... args) {
    return DatabaseConnection::execute_update(name, sql, args...);
}
