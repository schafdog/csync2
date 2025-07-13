#ifndef DATABASE_MYSQL_V2_HPP
#define DATABASE_MYSQL_V2_HPP

#include <vector>
#include <map>
#include <memory>
#include "database_v2.hpp"
#include <mysql.h>
class MySQLPreparedStatement;
class MySQLResultSet;
struct MySQLAPI;

class MySQLConnection : public DatabaseConnection {
public:
    MySQLConnection(const std::string& host, const std::string& user, const std::string& passwd, const std::string& db, unsigned int port);
    MySQLConnection(MYSQL *conn);
    ~MySQLConnection() override;
    void query(const std::string& sql) override;
    std::unique_ptr<PreparedStatement> prepare(const std::string& sql) override;
    std::shared_ptr<PreparedStatement> prepare(const std::string& name, const std::string& sql) override;

    void begin_transaction() override;
    void commit() override;
    void rollback() override;

    DBType getType() override { return DBType::MySQL; };
    void *get_private_data() override { return mysql_; };

    template<typename... Args>
    std::unique_ptr<ResultSet> execute_query(const std::string& name, const std::string& sql, Args... args);

    template<typename... Args>
    long long execute_update(const std::string& name, const std::string& sql, Args... args);
private:
    friend class MySQLPreparedStatement;
    MYSQL* mysql_ = nullptr;
    std::shared_ptr<MySQLAPI> mysql_api_;
    std::map<std::string, std::shared_ptr<PreparedStatement>> named_statements_;
};

class MySQLPreparedStatement : public PreparedStatement {
public:
    MySQLPreparedStatement(MYSQL* mysql, const std::string& sql, std::shared_ptr<MySQLAPI> api);
    ~MySQLPreparedStatement() override;

    using PreparedStatement::bind; // Bring all base class bind methods into scope
    void bind(int index, int value) override;
    void bind(int index, long value) override;
    void bind(int index, long long value) override;
    void bind(int index, double value) override;
    void bind(int index, const char* value) override;
    void bind(int index, const std::string& value) override;
    void bind_null(int index) override;

    std::unique_ptr<ResultSet> execute_query() override;
    long long execute_update() override;

private:
    friend class MySQLResultSet;

    void bind_param(); // Helper to bind the parameter vector
    MYSQL* mysql_;
    MYSQL_STMT* stmt_ = nullptr;
    std::vector<MYSQL_BIND> params_;
    std::vector<std::variant<std::monostate, int, long long, double, std::string>> param_values_;
    std::shared_ptr<MySQLAPI> api_;
};

class MySQLResultSet : public ResultSet {
public:
  MySQLResultSet(MYSQL_STMT* stmt, std::shared_ptr<MySQLAPI> api);
  ~MySQLResultSet() override;

    int rows() const override;

    bool next() override;

    int get_int(int index) const override;
    long long get_long(int index) const override;
    double get_double(int index) const override;
    std::string get_string(int index) const override;
    std::optional<std::string> get_string_optional(int index) const override;

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
          return get_string_optional(get_column_index(name));
      }

private:
    int get_column_index(const std::string& name) const {
        auto it = column_names_.find(name);
        if (it == column_names_.end()) {
            throw DatabaseError("Column not found: " + name);
        }
        return it->second;
    }
    void bind_results();

    MYSQL_STMT* stmt_;
    MYSQL_RES* meta_result_ = nullptr;
    std::vector<MYSQL_BIND> results_;
    std::vector<std::vector<char>> result_buffers_;
    std::vector<my_bool> is_null_;
    std::vector<unsigned long> length_;
    std::map<std::string, int> column_names_;
    std::shared_ptr<MySQLAPI> api_;
};

#endif // DATABASE_MYSQL_V2_HPP
