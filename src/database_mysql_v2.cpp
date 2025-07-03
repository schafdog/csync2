#include <stdexcept>
#include <variant>
#include <map>
#include "database_mysql_v2.hpp"
#include <mysql/mysql.h>

// --- MySQLConnection Implementation ---

MySQLConnection::MySQLConnection(const std::string& host, const std::string& user, const std::string& passwd,
				 const std::string& db, unsigned int port) {
    mysql_ = mysql_init(nullptr);
    if (!mysql_) {
        throw DatabaseError("mysql_init failed");
    }

    if (!mysql_real_connect(mysql_, host.c_str(), user.c_str(), passwd.c_str(), db.c_str(), port, nullptr, 0)) {
        throw DatabaseError("mysql_real_connect failed: " + std::string(mysql_error(mysql_)));
    }
}

MySQLConnection::~MySQLConnection() {
    if (mysql_) {
        mysql_close(mysql_);
    }
}

std::unique_ptr<PreparedStatement> MySQLConnection::prepare(const std::string& sql) {
    return std::make_unique<MySQLPreparedStatement>(mysql_, sql);
}

void MySQLConnection::begin_transaction() {
    if (mysql_query(mysql_, "START TRANSACTION")) {
        throw DatabaseError("Failed to start transaction: " + std::string(mysql_error(mysql_)));
    }
}

void MySQLConnection::commit() {
    if (mysql_query(mysql_, "COMMIT")) {
        throw DatabaseError("Failed to commit transaction: " + std::string(mysql_error(mysql_)));
    }
}

void MySQLConnection::rollback() {
    if (mysql_query(mysql_, "ROLLBACK")) {
        throw DatabaseError("Failed to rollback transaction: " + std::string(mysql_error(mysql_)));
    }
}


// --- MySQLPreparedStatement Implementation ---

MySQLPreparedStatement::MySQLPreparedStatement(MYSQL* mysql, const std::string& sql) : mysql_(mysql) {
    stmt_ = mysql_stmt_init(mysql_);
    if (!stmt_) {
        throw DatabaseError("mysql_stmt_init failed");
    }

    if (mysql_stmt_prepare(stmt_, sql.c_str(), sql.length())) {
        throw DatabaseError("mysql_stmt_prepare failed: " + std::string(mysql_stmt_error(stmt_)));
    }

    int param_count = mysql_stmt_param_count(stmt_);
    if (param_count > 0) {
        params_.resize(param_count);
        param_values_.resize(param_count);
    }
}

MySQLPreparedStatement::~MySQLPreparedStatement() {
    if (stmt_) {
        mysql_stmt_close(stmt_);
    }
}

void MySQLPreparedStatement::bind(int index, int value) {
    param_values_[index - 1] = value;
}
void MySQLPreparedStatement::bind(int index, long long value) {
    param_values_[index - 1] = value;
}
void MySQLPreparedStatement::bind(int index, double value) {
    param_values_[index - 1] = value;
}
void MySQLPreparedStatement::bind(int index, const std::string& value) {
    param_values_[index - 1] = value;
}
void MySQLPreparedStatement::bind_null(int index) {
    param_values_[index - 1] = std::monostate{};
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

    if (mysql_stmt_bind_param(stmt_, params_.data())) {
        throw DatabaseError("mysql_stmt_bind_param failed: " + std::string(mysql_stmt_error(stmt_)));
    }
}

std::unique_ptr<ResultSet> MySQLPreparedStatement::execute_query() {
    bind_param();
    if (mysql_stmt_execute(stmt_)) {
        throw DatabaseError("mysql_stmt_execute failed: " + std::string(mysql_stmt_error(stmt_)));
    }
    return std::make_unique<MySQLResultSet>(stmt_);
}

long long MySQLPreparedStatement::execute_update() {
    bind_param();
    if (mysql_stmt_execute(stmt_)) {
        throw DatabaseError("mysql_stmt_execute failed: " + std::string(mysql_stmt_error(stmt_)));
    }
    return mysql_stmt_affected_rows(stmt_);
}


// --- MySQLResultSet Implementation ---

MySQLResultSet::MySQLResultSet(MYSQL_STMT* stmt) : stmt_(stmt) {
    if (mysql_stmt_store_result(stmt_)) {
        throw DatabaseError("mysql_stmt_store_result failed: " + std::string(mysql_stmt_error(stmt_)));
    }
    bind_results();

    // Populate column name to index map
    if (meta_result_) {
        int num_fields = mysql_num_fields(meta_result_);
        for (int i = 0; i < num_fields; ++i) {
            MYSQL_FIELD* field = mysql_fetch_field_direct(meta_result_, i);
            column_names_[field->name] = i + 1; // 1-based index
        }
    }
}

MySQLResultSet::~MySQLResultSet() {
    if (meta_result_) {
        mysql_free_result(meta_result_);
    }
}

void MySQLResultSet::bind_results() {
    meta_result_ = mysql_stmt_result_metadata(stmt_);
    if (!meta_result_) {
        return; // Not a query that returns results
    }

    int num_fields = mysql_num_fields(meta_result_);
    results_.resize(num_fields);
    result_buffers_.resize(num_fields);
    is_null_.resize(num_fields);
    length_.resize(num_fields);

    for (int i = 0; i < num_fields; ++i) {
        MYSQL_FIELD* field = mysql_fetch_field_direct(meta_result_, i);
        results_[i] = {}; // Clear the struct
        results_[i].buffer_type = field->type;
        results_[i].is_null = &is_null_[i];
        results_[i].length = &length_[i];

        // A more sophisticated implementation would use a smarter buffer pool
        size_t buffer_size = (field->max_length > 0) ? field->max_length : 32;
        result_buffers_[i].resize(buffer_size);
        results_[i].buffer = result_buffers_[i].data();
        results_[i].buffer_length = result_buffers_[i].size();
    }

    if (mysql_stmt_bind_result(stmt_, results_.data())) {
        throw DatabaseError("mysql_stmt_bind_result failed: " + std::string(mysql_stmt_error(stmt_)));
    }
}

bool MySQLResultSet::next() {
    if (!meta_result_) return false;
    int rc = mysql_stmt_fetch(stmt_);
    if (rc == 0) {
        return true; // Success
    }
    if (rc == MYSQL_NO_DATA) {
        return false; // End of results
    }
    throw DatabaseError("mysql_stmt_fetch failed: " + std::string(mysql_stmt_error(stmt_)));
}

int MySQLResultSet::get_int(int index) const  {
    if (is_null_[index - 1]) return 0;
    return *reinterpret_cast<int*>(results_[index - 1].buffer);
}

long long MySQLResultSet::get_long(int index) const  {
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
