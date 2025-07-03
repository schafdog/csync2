#ifndef DATABASE_MYSQL_V2_HPP
#define DATABASE_MYSQL_V2_HPP

#include <vector>
#include <map>
#include "database_v2.hpp"
#include <mysql.h>

// Forward declarations for the implementation
class MySQLPreparedStatement;
class MySQLResultSet;

class MySQLConnection : public DatabaseConnection {
public:
    MySQLConnection(const std::string& host, const std::string& user, const std::string& passwd, const std::string& db, unsigned int port);
    ~MySQLConnection() override;

    std::unique_ptr<PreparedStatement> prepare(const std::string& sql) override;

    void begin_transaction() override;
    void commit() override;
    void rollback() override;

private:
    friend class MySQLPreparedStatement;
    MYSQL* mysql_ = nullptr;  
};

class MySQLPreparedStatement : public PreparedStatement {
public:
    MySQLPreparedStatement(MYSQL* mysql, const std::string& sql);
    ~MySQLPreparedStatement() override;

    void bind(int index, int value) override;
    void bind(int index, long long value) override;
    void bind(int index, double value) override;
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
    // Holds the data for the MYSQL_BIND structs
    std::vector<std::variant<std::monostate, int, long long, double, std::string>> param_values_; 
};

class MySQLResultSet : public ResultSet {
public:
  MySQLResultSet(MYSQL_STMT* stmt);
  ~MySQLResultSet() override;

    bool next() override;

    int get_int(int index) const override;
    long long get_long(int index) const override;
    double get_double(int index) const override;
    std::string get_string(int index) const override;

      // New methods for column name lookup
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
    std::vector<std::vector<char>> result_buffers_; // Raw buffers for string/blob data
    std::vector<my_bool> is_null_; // To track NULL values
    std::vector<unsigned long> length_; // To track string lengths
    std::map<std::string, int> column_names_;
};

#endif // DATABASE_MYSQL_V2_HPP
