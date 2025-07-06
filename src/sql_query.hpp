#ifndef CSYNC2_SQL_QUERY_HPP
#define CSYNC2_SQL_QUERY_HPP

#include "db.hpp"
#include <string>
#include <vector>
#include <stdexcept>

class SqlQuery {
public:
    SqlQuery(db_conn_p db, const char *err, const char *fmt, ...);
    ~SqlQuery();

    bool next();

    const char* getColumnText(int column);
    int getColumnInt(int column);
    long getAffectedRows();

private:
    void* stmt_handle_;
    const char* error_message_;
    db_conn_p db_;
    bool has_row_;
    long affected_rows_;

    // Disable copy and assign
    SqlQuery(const SqlQuery&) = delete;
    SqlQuery& operator=(const SqlQuery&) = delete;
};

#endif // CSYNC2_SQL_QUERY_HPP
