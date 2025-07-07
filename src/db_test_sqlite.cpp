#include "database_v2.hpp"
#include <iostream>
#include <memory>

void test_sqlite() {
    std::cout << "--- Testing SQLite ---" << std::endl;

    try {
        // 1. Connect
        const std::string conn_str = "type=SQLite;dbname=test_sqlite.db";
        auto conn = create_connection(conn_str);
        std::cout << "Connected to SQLite database: " << conn_str << std::endl;

        // 2. Create a table
        auto create_stmt = conn->prepare(
            "CREATE TABLE IF NOT EXISTS users (id INTEGER PRIMARY KEY, name TEXT NOT NULL, age INTEGER);"
        );
        create_stmt->execute_update();
        std::cout << "Table 'users' created or already exists." << std::endl;

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
            int age = rs->get_int("age");
            std::cout << id << "\t" << name << "\t" << age << std::endl;
        }
        std::cout << "--------------------" << std::endl;

    } catch (const std::exception& e) {
        std::cerr << "[ERROR] " << e.what() << std::endl;
    }
    std::cout << "--- SQLite Test Finished ---\n" << std::endl;
}

int main() {
    test_sqlite();
    return 0;
}
