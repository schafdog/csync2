#include "database_sqlite_v2.hpp"
#include <iostream>
#include <cassert>

int main() {
    try {
        // Test 1: Invalid database file path
        try {
            SQLiteConnection conn("/invalid/path/to/database.db");
            std::cout << "ERROR: Should have thrown for invalid path\n";
            return 1;
        } catch (const DatabaseError& e) {
            std::cout << "PASS: Caught expected error for invalid path: " << e.what() << "\n";
        }

        // Test 2: Test bind parameter errors (invalid index)
        try {
            SQLiteConnection conn(":memory:");
            conn.query("CREATE TABLE test (id INTEGER, name TEXT)");
            
            auto stmt = conn.prepare("INSERT INTO test (id, name) VALUES (?, ?)");
            // Try to bind to invalid parameter index (should be 1-based)
            stmt->bind(0, 123);  // Invalid index 0
            stmt->execute_update();
            std::cout << "ERROR: Should have thrown for invalid bind index\n";
            return 1;
        } catch (const DatabaseError& e) {
            std::cout << "PASS: Caught expected bind error: " << e.what() << "\n";
        }

        // Test 3: Test invalid SQL preparation
        try {
            SQLiteConnection conn(":memory:");
            auto stmt = conn.prepare("INVALID SQL SYNTAX HERE");
            std::cout << "ERROR: Should have thrown for invalid SQL\n";
            return 1;
        } catch (const DatabaseError& e) {
            std::cout << "PASS: Caught expected SQL preparation error: " << e.what() << "\n";
        }

        // Test 4: Test SQL execution errors
        try {
            SQLiteConnection conn(":memory:");
            conn.query("INVALID SQL SYNTAX");
            std::cout << "ERROR: Should have thrown for invalid SQL execution\n";
            return 1;
        } catch (const DatabaseError& e) {
            std::cout << "PASS: Caught expected SQL execution error: " << e.what() << "\n";
        }

        std::cout << "All tests passed! SQLite error reporting is working correctly.\n";
        return 0;

    } catch (const std::exception& e) {
        std::cout << "Unexpected error: " << e.what() << "\n";
        return 1;
    }
}