#ifndef DATABASE_SQLITE_V2_HPP
#define DATABASE_SQLITE_V2_HPP

#include <string>
#include <sqlite3.h>
#include "database_v2.hpp"

class SQLitePreparedStatement;

class SQLiteConnection : public DatabaseConnection {
public:
  SQLiteConnection(const std::string& db_path);
  ~SQLiteConnection() override;
  std::unique_ptr<PreparedStatement> prepare(const std::string& sql) override;

  void begin_transaction() override {
    query(begin_str);
  }

    void commit() override {
      query(commit_str);
    }

    void rollback() override {
      query(rollback_str);
    }

private:
  void query(const std::string& sql);
  sqlite3* db_;
  const std::string begin_str = "BEGIN TRANSACTION;";
  const std::string commit_str = "COMMIT;";
  const std::string rollback_str = "ROLLBACK;";

};

#endif
