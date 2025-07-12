/* -*- c-file-style: "k&r"; c-basic-offset: 4; tab-width: 4; indent-tabs-mode: t -*- */
#ifndef DB_POSTGRES_H
#define DB_POSTGRES_H

#include "db_sql.hpp"

class DbPostgres : public DbSql {
public:
    DbPostgres();
    DbPostgres(DatabaseConnection* conn) : DbSql(conn) {};
    ~DbPostgres() override;

    int exec(const char *sql) override;
    int prepare(const char *sql, DbStmt **stmt, const char **pptail) override;
    void close() override;
    const char* errmsg() override;
    const char* escape(const char *string) override;
    int upgrade_to_schema(int version) override;
    int insert_update_file(filename_p filename, const char *checktxt, struct stat *file_stat,
                             const char *digest) override;
};

int db_postgres_open(const char *file, db_conn_p *conn_p);

#endif
