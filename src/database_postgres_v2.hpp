#ifndef DATABASE_POSTGRES_V2_HPP
#define DATABASE_POSTGRES_V2_HPP

#include "database_v2.hpp"
#include <vector>
#include <string>
#include <map>
#include <memory>

// Forward declarations
struct pg_conn;
struct pg_result;
typedef struct pg_conn PGconn;
typedef struct pg_result PGresult;

class PostgresPreparedStatement;
struct PostgresAPI;

class PostgresConnection : public DatabaseConnection {
public:
    explicit PostgresConnection(const std::string& conn_string);
    explicit PostgresConnection(PGconn* conn);
    ~PostgresConnection() override;
    void query(const std::string& sql) override;
    std::unique_ptr<PreparedStatement> prepare(const std::string& sql) override;
    std::shared_ptr<PreparedStatement> prepare(const std::string& name, const std::string& sql) override;

    void begin_transaction() override;
    void commit() override;
    void rollback() override;

    DBType getType() override { return DBType::PostgreSQL; };
    void *get_private_data() override { return conn_; };
private:
    friend class PostgresPreparedStatement;
    PGconn* conn_ = nullptr;
    int statement_counter_ = 0; // To generate unique statement names
    std::shared_ptr<PostgresAPI> pg_api_;
    std::map<std::string, std::shared_ptr<PreparedStatement>> named_statements_;
};

class PostgresPreparedStatement : public PreparedStatement {
public:
    PostgresPreparedStatement(PGconn* conn, const std::string& name, const std::string& sql, std::shared_ptr<PostgresAPI> api);
    ~PostgresPreparedStatement() override = default; // Nothing to do, server cleans up

    void bind(int index, int value) override;
    void bind(int index, long long value) override;
    void bind(int index, double value) override;
    void bind(int index, const std::string& value) override;
    void bind_null(int index) override;

    std::unique_ptr<ResultSet> execute_query() override;
    long long execute_update() override;

private:
    std::string convert_sql_placeholders(const std::string& sql);

    PGconn* conn_;
    std::string name_;
    std::vector<std::string> param_values_;
    std::vector<const char*> param_pointers_;
    std::shared_ptr<PostgresAPI> api_;
};

class PostgresResultSet : public ResultSet {
public:
    explicit PostgresResultSet(PGresult* res, std::shared_ptr<PostgresAPI> api);
    ~PostgresResultSet() override;

    int rows() const override;
    bool next() override;

    // Helper to check for NULLs
    inline bool is_null(int col_index) const;

    int get_int(int index) const override;
    long long get_long(int index) const override;
    double get_double(int index) const override;
    std::string get_string(int index) const override;

    // New methods for column name lookup
    int get_int(const std::string& name) const override;
    long long get_long(const std::string& name) const override;
    double get_double(const std::string& name) const override;
    std::string get_string(const std::string& name) const override;

private:
    int get_column_index(const std::string& name) const;

    PGresult* res_;
    int current_row_ = -1;
    int num_rows_ = 0;
    std::map<std::string, int> column_names_;
    std::shared_ptr<PostgresAPI> api_;
};

#endif // DATABASE_POSTGRES_V2_HPP
