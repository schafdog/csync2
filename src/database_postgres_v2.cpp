#include "database_postgres_v2.hpp"
#include <stdexcept>
#include <algorithm> // For std::to_string
#include <map>

// --- Utility for executing simple commands ---
static void pg_exec(PGconn* conn, const char* sql) {
    PGresult* res = PQexec(conn, sql);
    if (PQresultStatus(res) != PGRES_COMMAND_OK) {
        std::string error = PQerrorMessage(conn);
        PQclear(res);
        throw DatabaseError("PostgreSQL command failed: " + error);
    }
    PQclear(res);
}

// --- PostgresConnection Implementation ---

PostgresConnection::PostgresConnection(const std::string& conn_string) {
    conn_ = PQconnectdb(conn_string.c_str());
    if (PQstatus(conn_) != CONNECTION_OK) {
        std::string error = PQerrorMessage(conn_);
        PQfinish(conn_);
        throw DatabaseError("PostgreSQL connection failed: " + error);
    }
}

PostgresConnection::~PostgresConnection() {
    if (conn_) {
        PQfinish(conn_);
    }
}

std::unique_ptr<PreparedStatement> PostgresConnection::prepare(const std::string& sql) {
    // PostgreSQL prepared statements are named and live for the session.
    // We generate a unique name for each prepared statement.
    std::string stmt_name = "csync2_stmt_" + std::to_string(++statement_counter_);
    return std::make_unique<PostgresPreparedStatement>(conn_, stmt_name, sql);
}

void PostgresConnection::begin_transaction() {
    pg_exec(conn_, "BEGIN");
}

void PostgresConnection::commit() {
    pg_exec(conn_, "COMMIT");
}

void PostgresConnection::rollback() {
    pg_exec(conn_, "ROLLBACK");
}

// --- PostgresPreparedStatement Implementation ---

PostgresPreparedStatement::PostgresPreparedStatement(PGconn* conn, const std::string& name, const std::string& sql)
    : conn_(conn), name_(name) {
    PGresult* res = PQprepare(conn_, name_.c_str(), sql.c_str(), 0, nullptr);
    if (PQresultStatus(res) != PGRES_COMMAND_OK) {
        std::string error = PQerrorMessage(conn_);
        PQclear(res);
        throw DatabaseError("PQprepare failed: " + error);
    }
    PQclear(res);

    // Get the number of parameters required by the prepared statement
    // This is a bit of a hack, as libpq doesn't have a direct way to get this.
    // We can count the $1, $2, etc. placeholders.
    int param_count = 0;
    for (char c : sql) {
        if (c == '$') {
            param_count++;
        }
    }
    param_values_.resize(param_count);
    param_pointers_.resize(param_count);
}

// For libpq, all parameters must be converted to strings.
void PostgresPreparedStatement::bind(int index, int value) {
    param_values_[index - 1] = std::to_string(value);
}

void PostgresPreparedStatement::bind(int index, long long value) {
    param_values_[index - 1] = std::to_string(value);
}

void PostgresPreparedStatement::bind(int index, double value) {
    param_values_[index - 1] = std::to_string(value);
}

void PostgresPreparedStatement::bind(int index, const std::string& value) {
    param_values_[index - 1] = value;
}

void PostgresPreparedStatement::bind_null(int index) {
    // For libpq, a NULL pointer in the param array signifies a NULL value.
    // We'll use a special string to signify this internally and set the pointer to null later.
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

    PGresult* res = PQexecPrepared(conn_, name_.c_str(), param_pointers_.size(), param_pointers_.data(), nullptr, nullptr, 0);

    if (PQresultStatus(res) != PGRES_TUPLES_OK) {
        std::string error = PQerrorMessage(conn_);
        PQclear(res);
        throw DatabaseError("PQexecPrepared query failed: " + error);
    }

    return std::make_unique<PostgresResultSet>(res);
}

long long PostgresPreparedStatement::execute_update() {
    for (size_t i = 0; i < param_values_.size(); ++i) {
        if (param_values_[i] == "<--CSYNC2_NULL_VALUE-->") {
            param_pointers_[i] = nullptr;
        } else {
            param_pointers_[i] = param_values_[i].c_str();
        }
    }

    PGresult* res = PQexecPrepared(conn_, name_.c_str(), param_pointers_.size(), param_pointers_.data(), nullptr, nullptr, 0);

    if (PQresultStatus(res) != PGRES_COMMAND_OK) {
        std::string error = PQerrorMessage(conn_);
        PQclear(res);
        throw DatabaseError("PQexecPrepared update failed: " + error);
    }

    long long affected_rows = 0;
    char* tuples = PQcmdTuples(res);
    if (tuples && *tuples) {
        affected_rows = std::stoll(tuples);
    }

    PQclear(res);
    return affected_rows;
}

// --- PostgresResultSet Implementation ---

PostgresResultSet::PostgresResultSet(PGresult* res) : res_(res) {
    if (res_) {
        num_rows_ = PQntuples(res_);
        int num_fields = PQnfields(res_);
        for (int i = 0; i < num_fields; ++i) {
            column_names_[PQfname(res_, i)] = i + 1; // 1-based index
        }
    }
}

PostgresResultSet::~PostgresResultSet() {
    if (res_) {
        PQclear(res_);
    }
}

bool PostgresResultSet::next() {
    if (!res_ || current_row_ + 1 >= num_rows_) {
        return false;
    }
    current_row_++;
    return true;
}

// Helper to check for NULLs
bool PostgresResultSet::is_null(int col_index) const {
    return PQgetisnull(res_, current_row_, col_index - 1);
}

int PostgresResultSet::get_int(int index) const {
    if (is_null(index)) return 0;
    return std::stoi(PQgetvalue(res_, current_row_, index - 1));
}

long long PostgresResultSet::get_long(int index) const {
    if (is_null(index)) return 0;
    return std::stoll(PQgetvalue(res_, current_row_, index - 1));
}

double PostgresResultSet::get_double(int index) const {
    if (is_null(index)) return 0.0;
    return std::stod(PQgetvalue(res_, current_row_, index - 1));
}

std::string PostgresResultSet::get_string(int index) const {
    if (is_null(index)) return "";
    return PQgetvalue(res_, current_row_, index - 1);
}

// New methods for column name lookup
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

int PostgresResultSet::get_column_index(const std::string& name) const {
    auto it = column_names_.find(name);
    if (it == column_names_.end()) {
        throw DatabaseError("Column not found: " + name);
    }
    return it->second;
}