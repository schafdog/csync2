/* -*- c-file-style: "k&r"; c-basic-offset: 4; tab-width: 4; indent-tabs-mode: t -*- */
#include "database_postgres_v2.hpp"
#include <dlfcn.h>
#include <iostream>
#include <map>
#include <stdexcept>
#include <algorithm> // For std::to_string
#include <libpq-fe.h>
#include <format>
#include <unistd.h>

// Define function pointer types for the PostgreSQL C API.
using PQconnectdb_t = decltype(&PQconnectdb);
using PQfinish_t = decltype(&PQfinish);
using PQstatus_t = decltype(&PQstatus);
using PQerrorMessage_t = decltype(&PQerrorMessage);
using PQexec_t = decltype(&PQexec);
using PQprepare_t = decltype(&PQprepare);
using PQexecPrepared_t = decltype(&PQexecPrepared);
using PQresultStatus_t = decltype(&PQresultStatus);
using PQclear_t = decltype(&PQclear);
using PQntuples_t = decltype(&PQntuples);
using PQnfields_t = decltype(&PQnfields);
using PQfname_t = decltype(&PQfname);
using PQgetisnull_t = decltype(&PQgetisnull);
using PQgetvalue_t = decltype(&PQgetvalue);
using PQcmdTuples_t = decltype(&PQcmdTuples);

const char* get_postgres_library_name() {
#if defined(_WIN32) || defined(_WIN64)
    return "libpq.dll";
#elif defined(__APPLE__)
    return "libpq.dylib";
#else
    return "libpq.so";
#endif
}

struct PostgresAPI {
    void* handle_;
    PQconnectdb_t PQconnectdb;
    PQfinish_t PQfinish;
    PQstatus_t PQstatus;
    PQerrorMessage_t PQerrorMessage;
    PQexec_t PQexec;
    PQprepare_t PQprepare;
    PQexecPrepared_t PQexecPrepared;
    PQresultStatus_t PQresultStatus;
    PQclear_t PQclear;
    PQntuples_t PQntuples;
    PQnfields_t PQnfields;
    PQfname_t PQfname;
    PQgetisnull_t PQgetisnull;
    PQgetvalue_t PQgetvalue;
    PQcmdTuples_t PQcmdTuples;

    PostgresAPI() {
        const char* lib_name = get_postgres_library_name();
        handle_ = dlopen(lib_name, RTLD_LAZY);
        if (!handle_) {
            throw DatabaseError("Cannot open " + std::string(lib_name));
        }

        PQconnectdb = reinterpret_cast<PQconnectdb_t>(dlsym(handle_, "PQconnectdb"));
        PQfinish = reinterpret_cast<PQfinish_t>(dlsym(handle_, "PQfinish"));
        PQstatus = reinterpret_cast<PQstatus_t>(dlsym(handle_, "PQstatus"));
        PQerrorMessage = reinterpret_cast<PQerrorMessage_t>(dlsym(handle_, "PQerrorMessage"));
        PQexec = reinterpret_cast<PQexec_t>(dlsym(handle_, "PQexec"));
        PQprepare = reinterpret_cast<PQprepare_t>(dlsym(handle_, "PQprepare"));
        PQexecPrepared = reinterpret_cast<PQexecPrepared_t>(dlsym(handle_, "PQexecPrepared"));
        PQresultStatus = reinterpret_cast<PQresultStatus_t>(dlsym(handle_, "PQresultStatus"));
        PQclear = reinterpret_cast<PQclear_t>(dlsym(handle_, "PQclear"));
        PQntuples = reinterpret_cast<PQntuples_t>(dlsym(handle_, "PQntuples"));
        PQnfields = reinterpret_cast<PQnfields_t>(dlsym(handle_, "PQnfields"));
        PQfname = reinterpret_cast<PQfname_t>(dlsym(handle_, "PQfname"));
        PQgetisnull = reinterpret_cast<PQgetisnull_t>(dlsym(handle_, "PQgetisnull"));
        PQgetvalue = reinterpret_cast<PQgetvalue_t>(dlsym(handle_, "PQgetvalue"));
        PQcmdTuples = reinterpret_cast<PQcmdTuples_t>(dlsym(handle_, "PQcmdTuples"));
    }

    ~PostgresAPI() {
        if (handle_) {
            dlclose(handle_);
        }
    }
};
using namespace std;
static void pg_exec(PGconn* conn, const char* sql, std::shared_ptr<PostgresAPI> api) {
    PGresult* res = api->PQexec(conn, sql);
    if (api->PQresultStatus(res) != PGRES_COMMAND_OK) {
        std::string error = api->PQerrorMessage(conn);
        api->PQclear(res);
        throw DatabaseError("PostgreSQL command failed: " + error);
    }
    api->PQclear(res);
}

PostgresConnection::PostgresConnection(const std::string& conn_string) {
    pg_api_ = std::make_shared<PostgresAPI>();
    conn_ = pg_api_->PQconnectdb(conn_string.c_str());
    if (pg_api_->PQstatus(conn_) != CONNECTION_OK) {
        std::string error = pg_api_->PQerrorMessage(conn_);
        pg_api_->PQfinish(conn_);
        throw DatabaseError("PostgreSQL connection failed: " + error);
    }
}

PostgresConnection::PostgresConnection(PGconn* conn) {
    pg_api_ = std::make_shared<PostgresAPI>();
    conn_ = conn;
}

PostgresConnection::~PostgresConnection() {
    if (conn_) {
        pg_api_->PQfinish(conn_);
    }
}

std::unique_ptr<PreparedStatement> PostgresConnection::prepare(const std::string& sql) {
    std::string stmt_name = "csync2_stmt_" + std::to_string(++statement_counter_);
    return std::make_unique<PostgresPreparedStatement>(conn_, stmt_name, sql, pg_api_);
}

std::shared_ptr<PreparedStatement> PostgresConnection::prepare(const std::string& name, const std::string& sql) {
    if (named_statements_.find(name) == named_statements_.end()) {
        // cout << "Creating preparing statement: " << name << " with SQL: " << sql << std::endl;
        named_statements_[name] = std::make_shared<PostgresPreparedStatement>(conn_, name, sql, pg_api_);
    }
    return named_statements_[name];
}

void PostgresConnection::query(const std::string& sql) {
    pg_exec(conn_, sql.c_str(), pg_api_);
}

void PostgresConnection::begin_transaction() {
    pg_exec(conn_, "BEGIN", pg_api_);
}

void PostgresConnection::commit() {
    pg_exec(conn_, "COMMIT", pg_api_);
}

void PostgresConnection::rollback() {
    pg_exec(conn_, "ROLLBACK", pg_api_);
}

template<typename... Args>
std::unique_ptr<ResultSet> PostgresConnection::execute_query(const std::string& name, const std::string& sql, Args... args) {
    return DatabaseConnection::execute_query(name, sql, args...);
}

template<typename... Args>
long long PostgresConnection::execute_update(const std::string& name, const std::string& sql, Args... args) {
    return DatabaseConnection::execute_update(name, sql, args...);
}

PostgresPreparedStatement::PostgresPreparedStatement(PGconn* conn, const std::string& name, const std::string& sql, std::shared_ptr<PostgresAPI> api)
    : conn_(conn), name_(name), api_(api) {
    std::string converted_sql = convert_sql_placeholders(sql);
    PGresult* res = api_->PQprepare(conn_, name_.c_str(), converted_sql.c_str(), 0, nullptr);
    if (api_->PQresultStatus(res) != PGRES_COMMAND_OK) {
        std::string error = api_->PQerrorMessage(conn_);
        api_->PQclear(res);
        throw DatabaseError("PQprepare failed in " + name + ": " + error + " " + converted_sql);
    }
    api_->PQclear(res);

    int param_count = 0;
    for (char c : converted_sql) {
        if (c == '$') {
            param_count++;
        }
    }
    param_values_.resize(param_count);
    param_pointers_.resize(param_count);
	// std::cout << "SQL: " << converted_sql << " PARAMS: " << param_count << std::endl;
}

std::string PostgresPreparedStatement::convert_sql_placeholders(const std::string& sql) {
	std::string converted_sql;
	converted_sql.reserve(sql.length());
	int param_index = 1;
	for (char c : sql) {
		if (c == '?') {
			converted_sql += std::format("${}", param_index);
			param_index++;
		} else {
			converted_sql += c;
		}
	}
    return converted_sql;
}

void PostgresPreparedStatement::bind(int index, int value) {
    param_values_[index - 1] = std::to_string(value);
}

void PostgresPreparedStatement::bind(int index, long value) {
    param_values_[index - 1] = std::to_string(value);
}

void PostgresPreparedStatement::bind(int index, long long value) {
    param_values_[index - 1] = std::to_string(value);
}

void PostgresPreparedStatement::bind(int index, double value) {
    param_values_[index - 1] = std::to_string(value);
}

void PostgresPreparedStatement::bind(int index, const std::string& value) {
    // cout << "Binding string value: " << value << " at index: " << index << std::endl;
    param_values_[index - 1] = value;
}

void PostgresPreparedStatement::bind(int index, const char* value) {
    if (value) {
        param_values_[index - 1] = value;
    } else {
        bind_null(index);
    }
}

void PostgresPreparedStatement::bind_null(int index) {
    param_values_[index - 1] = "<--CSYNC2_NULL_VALUE-->";
}

std::unique_ptr<ResultSet> PostgresPreparedStatement::execute_query() {
    for (size_t i = 0; i < param_values_.size(); ++i) {
        if (param_values_[i] == "<--CSYNC2_NULL_VALUE-->") {
            param_pointers_[i] = nullptr;
        } else {
            param_pointers_[i] = param_values_[i].c_str();
        }
    }

    PGresult* res = api_->PQexecPrepared(conn_, name_.c_str(), param_pointers_.size(), param_pointers_.data(), nullptr, nullptr, 0);

    if (api_->PQresultStatus(res) != PGRES_TUPLES_OK) {
        std::string error = api_->PQerrorMessage(conn_);
        api_->PQclear(res);
        throw DatabaseError("PQexecPrepared query failed: " + error);
    }
    return std::make_unique<PostgresResultSet>(res, api_);
}

long long PostgresPreparedStatement::execute_update() {
    for (size_t i = 0; i < param_values_.size(); ++i) {
        if (param_values_[i] == "<--CSYNC2_NULL_VALUE-->") {
            param_pointers_[i] = nullptr;
        } else {
            param_pointers_[i] = param_values_[i].c_str();
        }
    }
    // cout << "Executing update with parameters: ";
    // for (const auto& param : param_values_) {
    //     cout << param << " ";
    // }
    // cout << endl;
    PGresult* res = api_->PQexecPrepared(conn_, name_.c_str(), param_pointers_.size(), param_pointers_.data(), nullptr, nullptr, 0);

    if (api_->PQresultStatus(res) != PGRES_COMMAND_OK) {
        std::string error = api_->PQerrorMessage(conn_);
        api_->PQclear(res);
        throw DatabaseError("PQexecPrepared update failed: " + error);
    }

    long long affected_rows = 0;
    char* tuples = api_->PQcmdTuples(res);
    if (tuples && *tuples) {
        affected_rows = std::stoll(tuples);
    } else {
        affected_rows = api_->PQntuples(res);
    }

    api_->PQclear(res);
    return affected_rows;
}

PostgresResultSet::PostgresResultSet(PGresult* res, std::shared_ptr<PostgresAPI> api) : res_(res), api_(api) {
    if (res_) {
        num_rows_ = api_->PQntuples(res_);
        int num_fields = api_->PQnfields(res_);
        for (int i = 0; i < num_fields; ++i) {
            column_names_[api_->PQfname(res_, i)] = i + 1;
        }
    }
}

PostgresResultSet::~PostgresResultSet() {
    if (res_) {
        api_->PQclear(res_);
    }
}

int PostgresResultSet::rows() const {
    return  api_->PQntuples(res_);
};

bool PostgresResultSet::next() {
    if (!res_ || current_row_ + 1 >= num_rows_) {
        return false;
    }
    current_row_++;
    return true;
}

bool PostgresResultSet::is_null(int col_index) const {
    return api_->PQgetisnull(res_, current_row_, col_index - 1);
}

int PostgresResultSet::get_int(int index) const {
    if (is_null(index)) return 0;
    return std::stoi(api_->PQgetvalue(res_, current_row_, index - 1));
}

long long PostgresResultSet::get_long(int index) const {
    if (is_null(index)) return 0;
    return std::stoll(api_->PQgetvalue(res_, current_row_, index - 1));
}

double PostgresResultSet::get_double(int index) const {
    if (is_null(index)) return 0.0;
    return std::stod(api_->PQgetvalue(res_, current_row_, index - 1));
}

std::string PostgresResultSet::get_string(int index) const {
    if (is_null(index)) return "";
    return api_->PQgetvalue(res_, current_row_, index - 1);
}

std::optional<std::string> PostgresResultSet::get_string_optional(int index) const {
    if (is_null(index)) return "";
    if (api_->PQgetisnull(res_, current_row_, index - 1)) {
        return nullptr;
    }
    return api_->PQgetvalue(res_, current_row_, index - 1);
}

int PostgresResultSet::get_int(const std::string& name) const {
    return get_int(get_column_index(name));
}
long long PostgresResultSet::get_long(const std::string& name) const {
    return get_long(get_column_index(name));
}
double PostgresResultSet::get_double(const std::string& name) const {
    return get_double(get_column_index(name));
}

std::string PostgresResultSet::get_string(const std::string& name) const {
    return get_string(get_column_index(name));
}

std::optional<std::string> PostgresResultSet::get_string_optional(const std::string& name) const {
    return get_string_optional(get_column_index(name));
}

int PostgresResultSet::get_column_index(const std::string& name) const {
    auto it = column_names_.find(name);
    if (it == column_names_.end()) {
        throw DatabaseError("Column not found: " + name);
    }
    return it->second;
}
