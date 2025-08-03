#include "db_sqlite.hpp"
#include "database_sqlite_v2.hpp"
#include <iostream>
#include <filesystem>

int main() {
    const char* test_db = "/tmp/test_schema.db";
    
    // Remove test database if it exists
    std::filesystem::remove(test_db);
    
    try {
        // Create a new database connection
        db_conn_p conn;
        int rc = db_sqlite_open_new(test_db, &conn);
        if (rc != 0) {
            std::cout << "FAIL: Could not open database" << std::endl;
            return 1;
        }
        
        DbSqlite* db = static_cast<DbSqlite*>(conn);
        
        // Test schema_version on empty database (should be -1)
        int version = db->schema_version();
        std::cout << "Schema version on empty database: " << version << std::endl;
        if (version != -1) {
            std::cout << "FAIL: Expected -1 for empty database, got " << version << std::endl;
            return 1;
        }
        
        // Upgrade to version 2
        rc = db->upgrade_to_schema(2);
        if (rc != 0) {
            std::cout << "FAIL: Could not upgrade schema" << std::endl;
            return 1;
        }
        
        // Test schema_version after upgrade (should be 2)
        version = db->schema_version();
        std::cout << "Schema version after upgrade: " << version << std::endl;
        if (version != 2) {
            std::cout << "FAIL: Expected 2 after upgrade, got " << version << std::endl;
            return 1;
        }
        
        delete db;
        std::cout << "PASS: SQLite schema_version working correctly!" << std::endl;
        
        // Clean up
        std::filesystem::remove(test_db);
        return 0;
        
    } catch (const std::exception& e) {
        std::cout << "FAIL: Exception: " << e.what() << std::endl;
        return 1;
    }
}