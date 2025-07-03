#include "database_postgres_v2.hpp"
#include <iostream>
#include <memory>

void test_postgres(const std::string& conn_str) {
    std::cout << "--- Testing PostgreSQL ---" << std::endl;

    // Change this connection string to match your PostgreSQL server configuration.
    // ----------------------

    try {
        // 1. Connect
        auto conn = create_connection(conn_str);
        std::cout << "Connected to TEST database: " << conn_str << " " <<  std::endl;

        // 2. Create a table
        conn->prepare("DROP TABLE IF EXISTS users;")->execute_update();
        conn->prepare(
            "CREATE TABLE users (id SERIAL PRIMARY KEY, name TEXT NOT NULL, age INT);"
        )->execute_update();
        std::cout << "Table 'users' created." << std::endl;

        // 3. Insert data in a transaction
        conn->begin_transaction();
        std::cout << "Transaction started." << std::endl;

        auto insert_stmt = conn->prepare("INSERT INTO users (name, age) VALUES ($1, $2);");

        insert_stmt->bind(1, "Alice");
        insert_stmt->bind(2, 30);
        insert_stmt->execute_update();

        insert_stmt->bind(1, "Bob");
        insert_stmt->bind(2, 42);
        insert_stmt->execute_update();

        insert_stmt->bind(1, "Charlie");
        insert_stmt->bind_null(2); // Age is NULL
        insert_stmt->execute_update();

        conn->commit();
        std::cout << "Transaction committed." << std::endl;

        // 4. Query data
        auto query_stmt = conn->prepare("SELECT id, name, age FROM users ORDER BY id;");
        auto rs = query_stmt->execute_query();

        std::cout << "\nQuery Results:" << std::endl;
        std::cout << "ID\tName\tAge" << std::endl;
        std::cout << "--------------------" << std::endl;
        while (rs->next()) {
            int id = rs->get_int("id");
            std::string name = rs->get_string("name");
            // Check for NULL explicitly for age
            if (rs->get_string("age").empty()) { // A simple was_null check
                 std::cout << id << "\t" << name << "\t" << "NULL" << std::endl;
            } else {
                 int age = rs->get_int("age");
                 std::cout << id << "\t" << name << "\t" << age << std::endl;
            }
        }
        std::cout << "--------------------" << std::endl;

    } catch (const std::exception& e) {
        std::cerr << "[ERROR] " << e.what() << std::endl;
        std::cerr << "Please ensure the PostgreSQL server is running and the connection string is correct." << std::endl;
    }
    std::cout << "--- PostgreSQL Test Finished ---\n" << std::endl;

}


int main(int argc, char *argv[]) {
  std::string conn_string = "type=PostgreSQL;dbname=testdb user=testuser password=testpass hostaddr=127.0.0.1 port=5432";
 
  if (argc < 2) {
    std::cout << "Using hard coded connection string: " << conn_string << "\n";
  } else {
    conn_string = argv[1];
  }
  test_postgres(conn_string);

  return 0;
}
