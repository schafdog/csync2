#include "database_mysql_v2.hpp"
#include <cstddef>
#include <dlfcn.h>
#include <iostream>
#include <map>
#include <stdexcept>
#include <variant>
#include <vector>
#include "error.hpp"

// Define function pointer types for the MySQL C API.
using mysql_init_t = decltype(&mysql_init);
using mysql_real_connect_t = decltype(&mysql_real_connect);
using mysql_close_t = decltype(&mysql_close);
using mysql_error_t = decltype(&mysql_error);
using mysql_query_t = decltype(&mysql_query);
using mysql_stmt_init_t = decltype(&mysql_stmt_init);
using mysql_stmt_prepare_t = decltype(&mysql_stmt_prepare);
using mysql_stmt_param_count_t = decltype(&mysql_stmt_param_count);
using mysql_stmt_bind_param_t = decltype(&mysql_stmt_bind_param);
using mysql_stmt_execute_t = decltype(&mysql_stmt_execute);
using mysql_stmt_affected_rows_t = decltype(&mysql_stmt_affected_rows);
using mysql_stmt_store_result_t = decltype(&mysql_stmt_store_result);
using mysql_stmt_result_metadata_t = decltype(&mysql_stmt_result_metadata);
using mysql_num_fields_t = decltype(&mysql_num_fields);
using mysql_fetch_fields_t = decltype(&mysql_fetch_fields);
using mysql_fetch_field_direct_t = decltype(&mysql_fetch_field_direct);
using mysql_stmt_bind_result_t = decltype(&mysql_stmt_bind_result);
using mysql_stmt_fetch_t = decltype(&mysql_stmt_fetch);
using mysql_free_result_t = decltype(&mysql_free_result);
using mysql_stmt_close_t = decltype(&mysql_stmt_close);
using mysql_stmt_error_t = decltype(&mysql_stmt_error);

std::vector<const char*> get_mysql_library_names() {
#if defined(_WIN32) || defined(_WIN64)
    return {"libmysql.dll", "libmariadb.dll"};
#elif defined(__APPLE__)
    return {"libmariadb.3.dylib", "libmariadb.dylib", "libmysqlclient.dylib"};
#else
    return {"libmysqlclient.so", "libmariadb.so"};
#endif
}

struct MySQLAPI {
    void* handle_;
    mysql_init_t mysql_init;
    mysql_real_connect_t mysql_real_connect;
    mysql_close_t mysql_close;
    mysql_error_t mysql_error;
    mysql_query_t mysql_query;
    mysql_stmt_init_t mysql_stmt_init;
    mysql_stmt_prepare_t mysql_stmt_prepare;
    mysql_stmt_param_count_t mysql_stmt_param_count;
    mysql_stmt_bind_param_t mysql_stmt_bind_param;
    mysql_stmt_execute_t mysql_stmt_execute;
    mysql_stmt_affected_rows_t mysql_stmt_affected_rows;
    mysql_stmt_store_result_t mysql_stmt_store_result;
    mysql_stmt_result_metadata_t mysql_stmt_result_metadata;
    mysql_num_fields_t mysql_num_fields;
    mysql_fetch_fields_t mysql_fetch_fields;
    mysql_fetch_field_direct_t mysql_fetch_field_direct;
    mysql_stmt_bind_result_t mysql_stmt_bind_result;
    mysql_stmt_fetch_t mysql_stmt_fetch;
    mysql_free_result_t mysql_free_result;
    mysql_stmt_close_t mysql_stmt_close;
    mysql_stmt_error_t mysql_stmt_error;

    MySQLAPI() {
        std::vector<const char*> lib_names = get_mysql_library_names();
        std::string error_msg = "Cannot open any of the MySQL/MariaDB libraries. Attempted:";
        for (const char* lib_name : lib_names) {
            handle_ = dlopen(lib_name, RTLD_LAZY);
            if (handle_) {
                break; // Successfully loaded
            }
            error_msg += " " + std::string(lib_name) + ": " + dlerror();
        }

        if (!handle_) {
            throw DatabaseError(error_msg);
        }

        mysql_init = reinterpret_cast<mysql_init_t>(dlsym(handle_, "mysql_init"));
        mysql_real_connect = reinterpret_cast<mysql_real_connect_t>(dlsym(handle_, "mysql_real_connect"));
        mysql_close = reinterpret_cast<mysql_close_t>(dlsym(handle_, "mysql_close"));
        mysql_error = reinterpret_cast<mysql_error_t>(dlsym(handle_, "mysql_error"));
        mysql_query = reinterpret_cast<mysql_query_t>(dlsym(handle_, "mysql_query"));
        mysql_stmt_init = reinterpret_cast<mysql_stmt_init_t>(dlsym(handle_, "mysql_stmt_init"));
        mysql_stmt_prepare = reinterpret_cast<mysql_stmt_prepare_t>(dlsym(handle_, "mysql_stmt_prepare"));
        mysql_stmt_param_count = reinterpret_cast<mysql_stmt_param_count_t>(dlsym(handle_, "mysql_stmt_param_count"));
        mysql_stmt_bind_param = reinterpret_cast<mysql_stmt_bind_param_t>(dlsym(handle_, "mysql_stmt_bind_param"));
        mysql_stmt_execute = reinterpret_cast<mysql_stmt_execute_t>(dlsym(handle_, "mysql_stmt_execute"));
        mysql_stmt_affected_rows = reinterpret_cast<mysql_stmt_affected_rows_t>(dlsym(handle_, "mysql_stmt_affected_rows"));
        mysql_stmt_store_result = reinterpret_cast<mysql_stmt_store_result_t>(dlsym(handle_, "mysql_stmt_store_result"));
        mysql_stmt_result_metadata = reinterpret_cast<mysql_stmt_result_metadata_t>(dlsym(handle_, "mysql_stmt_result_metadata"));
        mysql_num_fields = reinterpret_cast<mysql_num_fields_t>(dlsym(handle_, "mysql_num_fields"));
        mysql_fetch_fields = reinterpret_cast<mysql_fetch_fields_t>(dlsym(handle_, "mysql_fetch_fields"));
        mysql_fetch_field_direct = reinterpret_cast<mysql_fetch_field_direct_t>(dlsym(handle_, "mysql_fetch_field_direct"));
        mysql_stmt_bind_result = reinterpret_cast<mysql_stmt_bind_result_t>(dlsym(handle_, "mysql_stmt_bind_result"));
        mysql_stmt_fetch = reinterpret_cast<mysql_stmt_fetch_t>(dlsym(handle_, "mysql_stmt_fetch"));
        mysql_free_result = reinterpret_cast<mysql_free_result_t>(dlsym(handle_, "mysql_free_result"));
        mysql_stmt_close = reinterpret_cast<mysql_stmt_close_t>(dlsym(handle_, "mysql_stmt_close"));
        mysql_stmt_error = reinterpret_cast<mysql_stmt_error_t>(dlsym(handle_, "mysql_stmt_error"));
    }

    ~MySQLAPI() {
        if (handle_) {
            dlclose(handle_);
        }
    }
};

MySQLConnection::MySQLConnection(const std::string& host, const std::string& user, const std::string& passwd,
                                 const std::string& db, unsigned int port) {
    mysql_api_ = std::make_shared<MySQLAPI>();
    mysql_ = mysql_api_->mysql_init(nullptr);
    if (!mysql_) {
        throw DatabaseError("mysql_init failed");
    }

    if (!mysql_api_->mysql_real_connect(mysql_, host.c_str(), user.c_str(), passwd.c_str(), db.c_str(), port, nullptr, 0)) {
        throw DatabaseError("mysql_real_connect failed: " + std::string(mysql_api_->mysql_error(mysql_)));
    }
}

MySQLConnection::MySQLConnection(MYSQL* conn) {
    mysql_api_ = std::make_shared<MySQLAPI>();
    mysql_ = conn;
}


MySQLConnection::~MySQLConnection() {
    if (mysql_) {
        mysql_api_->mysql_close(mysql_);
    }
}

void MySQLConnection::query(const std::string& sql) {
    if (mysql_api_->mysql_query(mysql_, sql.c_str())) {
        throw DatabaseError("query failed: " + std::string(mysql_api_->mysql_error(mysql_)));
    }
}

std::unique_ptr<PreparedStatement> MySQLConnection::prepare(const std::string& sql) {
    return std::make_unique<MySQLPreparedStatement>(mysql_, sql, mysql_api_);
}

std::shared_ptr<PreparedStatement> MySQLConnection::prepare(const std::string& name, const std::string& sql) {
    if (named_statements_.find(name) == named_statements_.end()) {
        named_statements_[name] = std::make_shared<MySQLPreparedStatement>(mysql_, sql, mysql_api_);
    }
    return named_statements_[name];
}

void MySQLConnection::begin_transaction() {
    if (mysql_api_->mysql_query(mysql_, "START TRANSACTION")) {
        throw DatabaseError("Failed to start transaction: " + std::string(mysql_api_->mysql_error(mysql_)));
    }
}

void MySQLConnection::commit() {
    if (mysql_api_->mysql_query(mysql_, "COMMIT")) {
        throw DatabaseError("Failed to commit transaction: " + std::string(mysql_api_->mysql_error(mysql_)));
    }
}

void MySQLConnection::rollback() {
    if (mysql_api_->mysql_query(mysql_, "ROLLBACK")) {
        throw DatabaseError("Failed to rollback transaction: " + std::string(mysql_api_->mysql_error(mysql_)));
    }
}

template<typename... Args>
std::unique_ptr<ResultSet> MySQLConnection::execute_query(const std::string& name, const std::string& sql, Args... args) {
    return DatabaseConnection::execute_query(name, sql, args...);
}

template<typename... Args>
long long MySQLConnection::execute_update(const std::string& name, const std::string& sql, Args... args) {
    return DatabaseConnection::execute_update(name, sql, args...);
}

MySQLPreparedStatement::MySQLPreparedStatement(MYSQL* mysql, const std::string& sql, std::shared_ptr<MySQLAPI> api)
    : mysql_(mysql), api_(api) {
    stmt_ = api_->mysql_stmt_init(mysql_);
    if (!stmt_) {
        throw DatabaseError("mysql_stmt_init failed");
    }

    if (api_->mysql_stmt_prepare(stmt_, sql.c_str(), sql.length())) {
        throw DatabaseError("mysql_stmt_prepare failed: " + std::string(api_->mysql_stmt_error(stmt_)));
    }

    unsigned long param_count = api_->mysql_stmt_param_count(stmt_);
    if (param_count > 0) {
        params_.resize(param_count);
        param_values_.resize(param_count);
    }
}

MySQLPreparedStatement::~MySQLPreparedStatement() {
    if (stmt_) {
        api_->mysql_stmt_close(stmt_);
    }
}

void MySQLPreparedStatement::bind(int index, int value) {
    param_values_[index - 1] = value;
}

void MySQLPreparedStatement::bind(int index, long value) {
    param_values_[index - 1] = static_cast<long long>(value);
}

void MySQLPreparedStatement::bind(int index, long long value) {
    param_values_[index - 1] = value;
}
void MySQLPreparedStatement::bind(int index, double value) {
    param_values_[index - 1] = value;
}
void MySQLPreparedStatement::bind_null(int index) {
    param_values_[index - 1] = std::monostate{};
}

void MySQLPreparedStatement::bind(int index, const std::string& value) {
    param_values_[index - 1] = value;
}

void MySQLPreparedStatement::bind(int index, const char* value) {
    if (value) {
        param_values_[index - 1] = std::string(value);
    } else {
        param_values_[index - 1] = std::monostate{};
    }
}

void MySQLPreparedStatement::bind_param() {
    if (params_.empty()) {
        return;
    }

    for (size_t i = 0; i < params_.size(); ++i) {
        params_[i] = {}; // Clear the struct
        std::visit([&, i](auto&& arg) {
            using T = std::decay_t<decltype(arg)>;
            if constexpr (std::is_same_v<T, int>) {
                params_[i].buffer_type = MYSQL_TYPE_LONG;
                params_[i].buffer = const_cast<int*>(&std::get<int>(param_values_[i]));
            } else if constexpr (std::is_same_v<T, long long>) {
                params_[i].buffer_type = MYSQL_TYPE_LONGLONG;
                params_[i].buffer = const_cast<long long*>(&std::get<long long>(param_values_[i]));
            } else if constexpr (std::is_same_v<T, double>) {
                params_[i].buffer_type = MYSQL_TYPE_DOUBLE;
                params_[i].buffer = const_cast<double*>(&std::get<double>(param_values_[i]));
            } else if constexpr (std::is_same_v<T, std::string>) {
                params_[i].buffer_type = MYSQL_TYPE_STRING;
                auto& s = std::get<std::string>(param_values_[i]);
                params_[i].buffer = const_cast<char*>(s.c_str());
                params_[i].buffer_length = s.length();
            } else { // std::monostate for NULL
                params_[i].buffer_type = MYSQL_TYPE_NULL;
            }
        }, param_values_[i]);
    }

    if (api_->mysql_stmt_bind_param(stmt_, params_.data())) {
        throw DatabaseError("mysql_stmt_bind_param failed: " + std::string(api_->mysql_stmt_error(stmt_)));
    }
}

std::unique_ptr<ResultSet> MySQLPreparedStatement::execute_query() {
    bind_param();
    if (api_->mysql_stmt_execute(stmt_)) {
        throw DatabaseError("mysql_stmt_execute failed: " + std::string(api_->mysql_stmt_error(stmt_)));
    }
    return std::make_unique<MySQLResultSet>(stmt_, api_);
}

long long MySQLPreparedStatement::execute_update() {
    bind_param();
    if (api_->mysql_stmt_execute(stmt_)) {
        throw DatabaseError("mysql_stmt_execute failed: " + std::string(api_->mysql_stmt_error(stmt_)));
    }
    return api_->mysql_stmt_affected_rows(stmt_);
}

MySQLResultSet::MySQLResultSet(MYSQL_STMT* stmt, std::shared_ptr<MySQLAPI> api) : stmt_(stmt), api_(api) {
    if (api_->mysql_stmt_store_result(stmt_)) {
        throw DatabaseError("mysql_stmt_store_result failed: " + std::string(api_->mysql_stmt_error(stmt_)));
    }
    bind_results();

    if (meta_result_) {
        unsigned int num_fields = api_->mysql_num_fields(meta_result_);
        for (unsigned int i = 0; i < num_fields; ++i) {
            MYSQL_FIELD* field = api_->mysql_fetch_field_direct(meta_result_, i);
            column_names_[field->name] = i + 1;
        }
    }
}

MySQLResultSet::~MySQLResultSet() {
    if (meta_result_) {
        api_->mysql_free_result(meta_result_);
    }
}

int MySQLResultSet::rows() const {
    return 0;
}

void MySQLResultSet::bind_results() {
    meta_result_ = api_->mysql_stmt_result_metadata(stmt_);
    if (!meta_result_) {
        return;
    }

    unsigned int num_fields = api_->mysql_num_fields(meta_result_);
    results_.resize(num_fields);
    result_buffers_.resize(num_fields);
    is_null_.resize(num_fields);
    length_.resize(num_fields);
//    MYSQL_FIELD *fields = api_->mysql_fetch_fields(meta_result_);

    for (unsigned int i = 0; i < num_fields; ++i) {
        MYSQL_FIELD* field = api_->mysql_fetch_field_direct(meta_result_, i);
        results_[i] = {};
        results_[i].buffer_type = field->type;
        results_[i].is_null = &is_null_[i];
        results_[i].length = &length_[i];
	csync_debug_c(3, "bind_result field: %s %d %d %d\n", field->name, field->type, field->max_length, field->length);
        size_t buffer_size = (field->max_length > 0) ? field->max_length : field->length;
        result_buffers_[i].resize(buffer_size);
        results_[i].buffer = result_buffers_[i].data();
        results_[i].buffer_length = result_buffers_[i].size();
    }

    if (api_->mysql_stmt_bind_result(stmt_, results_.data())) {
        throw DatabaseError("mysql_stmt_bind_result failed: " + std::string(api_->mysql_stmt_error(stmt_)));
    }
}

bool MySQLResultSet::next() {
    if (!meta_result_) return false;
    int rc = api_->mysql_stmt_fetch(stmt_);
    if (rc == 0) {
        return true;
    }
    if (rc == MYSQL_NO_DATA) {
        return false;
    }
	std::string error = std::format("mysql_stmt_fetch 2 failed: {} '{}'", rc, std::string(api_->mysql_stmt_error(stmt_)));
	// csync_debug(1, "MYSQL error: ", error);
    throw DatabaseError(error);
}

int MySQLResultSet::get_int(int index) const {
    if (is_null_[index - 1]) return 0;
    return *reinterpret_cast<int*>(results_[index - 1].buffer);
}

long long MySQLResultSet::get_long(int index) const {
    if (is_null_[index - 1]) return 0;
    return *reinterpret_cast<long long*>(results_[index - 1].buffer);
}

double MySQLResultSet::get_double(int index) const {
    if (is_null_[index - 1]) return 0.0;
    return *reinterpret_cast<double*>(results_[index - 1].buffer);
}

std::string MySQLResultSet::get_string(int index) const {
    if (is_null_[index - 1]) return "";
    return std::string(static_cast<char*>(results_[index - 1].buffer), length_[index - 1]);
}


std::optional<std::string> MySQLResultSet::get_string_optional(int index) const {
    if (is_null_[index - 1]) {
        return std::nullopt;
    }
    return std::string(static_cast<char*>(results_[index - 1].buffer), length_[index - 1]);
}
