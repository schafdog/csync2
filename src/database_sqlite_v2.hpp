#ifndef DATABASE_SQLITE_V2_HPP
#define DATABASE_SQLITE_V2_HPP

#include <string>
#include <memory>
#include <map>
#include "database_v2.hpp"

// Forward declare SQLite types to avoid including sqlite3.h in the header.
struct sqlite3;
struct sqlite3_stmt;

class SQLitePreparedStatement;

// A struct to hold the dynamically loaded SQLite API.
struct SQLiteAPI;

class SQLiteConnection : public DatabaseConnection {
public:
  SQLiteConnection(const std::string& db_path);
  ~SQLiteConnection() override;
  std::unique_ptr<PreparedStatement> prepare(const std::string& sql) override;
  std::shared_ptr<PreparedStatement> prepare(const std::string& name, const std::string& sql) override;

  void begin_transaction() override {
    query(begin_str);
  }

  void commit() override {
    query(commit_str);
  }

  void rollback() override {
    query(rollback_str);
  }

  void query(const std::string& sql) override;

  DBType getType() override { return DBType::SQLite; };

private:
  sqlite3* db_;
  std::shared_ptr<SQLiteAPI> sqlite_api_; // Holds the loaded library and function pointers.
  std::map<std::string, std::shared_ptr<PreparedStatement>> named_statements_;

  const std::string begin_str = "BEGIN TRANSACTION;";
  const std::string commit_str = "COMMIT;";
  const std::string rollback_str = "ROLLBACK;";
};

#endif
