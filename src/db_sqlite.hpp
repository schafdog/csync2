/* -*- c-file-style: "k&r"; c-basic-offset: 4; tab-width: 4; indent-tabs-mode: t -*- */
#ifndef DB_SQLITE_H
#define DB_SQLITE_H

#include "database_v2.hpp"
#include "db_sql.hpp"

class DbSqlite : public DbSql {
public:
    DbSqlite();
    DbSqlite(DatabaseConnection* conn) : DbSql(conn) {};
    ~DbSqlite() override;

    int exec(const char *sql) override;
    int prepare(const char *sql, DbStmt **stmt, const char **pptail) override;
    void close() override;
    const char* errmsg() override;
    int upgrade_to_schema(int version) override;
};

int db_sqlite_open(const char *file, db_conn_p *conn_p);

#endif
