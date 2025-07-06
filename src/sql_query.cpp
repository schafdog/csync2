#include "sql_query.hpp"
#include <cstdarg>

SqlQuery::SqlQuery(db_conn_p db, const char *err, const char *fmt, ...) {
    db_ = db;
    error_message_ = err;

    char *sql;
    va_list ap;
    va_start(ap, fmt);
    if (vasprintf(&sql, fmt, ap) < 0) {
        va_end(ap);
        throw std::runtime_error("Failed to format SQL query");
    }
    va_end(ap);

    stmt_handle_ = csync_db_begin(db_, error_message_, sql);
    free(sql);

    if (!stmt_handle_) {
        throw std::runtime_error("Failed to begin SQL query");
    }
    has_row_ = false;
    affected_rows_ = 0;
}

SqlQuery::~SqlQuery() {
    csync_db_fin(stmt_handle_, error_message_);
}

bool SqlQuery::next() {
    int pN;
    const char **pazValue, **pazColName;
    has_row_ = csync_db_next(stmt_handle_, error_message_, &pN, &pazValue, &pazColName);
    return has_row_;
}

const char* SqlQuery::getColumnText(int column) {
    if (!has_row_) {
        return nullptr;
    }
    return csync_db_colblob(stmt_handle_, column);
}

int SqlQuery::getColumnInt(int column) {
    if (!has_row_) {
        return 0;
    }
    const char* text = getColumnText(column);
    if (!text) {
        return 0;
    }
    return atoi(text);
}

long SqlQuery::getAffectedRows() {
    return affected_rows_;
}
