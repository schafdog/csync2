#include "database_mysql_v2.hpp"
#include <iostream>
#include <memory>

// This is the implementation for the factory function, which we need to link against.
// In a real build system, we would link against the object file containing this function.
std::unique_ptr<DatabaseConnection> create_mysql_connection(const std::string& host, const std::string& user, const std::string& passwd, const std::string& db, unsigned int port);

void test_mysql() {
    std::cout << "--- Testing MySQL ---" << std::endl;

    // Change these values to match your MySQL server configuration.
    const std::string conn_str = "type=MySQL;host=127.0.0.1;user=testuser;password=testpw;database=testdb;port=3306";
    // ----------------------

    try {
        // 1. Connect
        auto conn = create_connection(conn_str);
        std::cout << "Connected to MySQL database: " << conn_str << std::endl;

        // 2. Create a table
        conn->prepare("DROP TABLE IF EXISTS users;")->execute_update();
        conn->prepare(
            "CREATE TABLE users (id INT AUTO_INCREMENT PRIMARY KEY, name VARCHAR(255) NOT NULL, age INT);"
        )->execute_update();
        std::cout << "Table 'users' created." << std::endl;

        // 3. Insert data in a transaction
        conn->begin_transaction();
        std::cout << "Transaction started." << std::endl;

        auto insert_stmt = conn->prepare("INSERT INTO users (name, age) VALUES (?, ?);");

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
            }
            else {
                int age = rs->get_int("age");
                std::cout << id << "\t" << name << "\t" << age << std::endl;
            }
        }
        std::cout << "--------------------" << std::endl;

    } catch (const std::exception& e) {
        std::cerr << "[ERROR] " << e.what() << std::endl;
        std::cerr << "Please ensure the MySQL server is running and the connection details are correct." << std::endl;
    }
    std::cout << "--- MySQL Test Finished ---\n" << std::endl;
}



int main() {
    test_mysql();
    return 0;
}
