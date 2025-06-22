/*  -*- c-file-style: "k&r"; c-basic-offset: 4; tab-width: 4; indent-tabs-mode: t -*-
 *  csync2 - cluster synchronization tool, 2nd generation
 *  Example usage of the modern C++ database layer
 */

#include "database.hpp"
#include "database_sqlite.hpp"
#include <iostream>
#include <memory>

using namespace csync2;

void example_basic_usage() {
    std::cout << "=== Basic Database Usage Example ===" << std::endl;
    
    // Create a database connection
    auto db = DatabaseFactory::create_from_url("sqlite:test.db");
    if (!db) {
        std::cerr << "Failed to create database connection" << std::endl;
        return;
    }
    
    // Create a table
    auto result = db->exec(R"(
        CREATE TABLE IF NOT EXISTS files (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            filename TEXT NOT NULL,
            checksum TEXT,
            size INTEGER,
            mtime INTEGER
        )
    )");
    
    if (result != DatabaseResult::OK) {
        std::cerr << "Failed to create table: " << db->error_message() << std::endl;
        return;
    }
    
    // Prepare a statement for inserting files
    auto stmt = db->prepare("INSERT INTO files (filename, checksum, size, mtime) VALUES (?, ?, ?, ?)");
    if (!stmt) {
        std::cerr << "Failed to prepare statement: " << db->error_message() << std::endl;
        return;
    }
    
    // Insert some test data
    stmt->bind(1, "/etc/passwd");
    stmt->bind(2, "abc123def456");
    stmt->bind(3, 1024);
    stmt->bind(4, 1640995200);
    
    if (stmt->execute() != DatabaseResult::DONE) {
        std::cerr << "Failed to insert data" << std::endl;
        return;
    }
    
    std::cout << "Inserted file with ID: " << db->last_insert_id() << std::endl;
    std::cout << "Affected rows: " << stmt->affected_rows() << std::endl;
}

void example_query_usage() {
    std::cout << "\n=== Query Usage Example ===" << std::endl;
    
    auto db = DatabaseFactory::create_from_url("sqlite:test.db");
    if (!db) {
        std::cerr << "Failed to create database connection" << std::endl;
        return;
    }
    
    // Query files
    auto stmt = db->prepare("SELECT id, filename, checksum, size FROM files WHERE size > ?");
    if (!stmt) {
        std::cerr << "Failed to prepare query: " << db->error_message() << std::endl;
        return;
    }
    
    stmt->bind(1, 500);  // Files larger than 500 bytes
    
    auto result = stmt->execute();
    if (result == DatabaseResult::ERROR) {
        std::cerr << "Failed to execute query" << std::endl;
        return;
    }
    
    std::cout << "Files larger than 500 bytes:" << std::endl;
    std::cout << "ID\tFilename\t\tChecksum\t\tSize" << std::endl;
    std::cout << "---\t--------\t\t--------\t\t----" << std::endl;
    
    while (result == DatabaseResult::ROW) {
        int id = stmt->get_column_int(0);
        std::string filename = stmt->get_column_text(1);
        std::string checksum = stmt->get_column_text(2);
        int size = stmt->get_column_int(3);
        
        std::cout << id << "\t" << filename << "\t\t" << checksum << "\t" << size << std::endl;
        
        result = stmt->next();
    }
}

void example_transaction_usage() {
    std::cout << "\n=== Transaction Usage Example ===" << std::endl;
    
    auto db = DatabaseFactory::create_from_url("sqlite:test.db");
    if (!db) {
        std::cerr << "Failed to create database connection" << std::endl;
        return;
    }
    
    // Begin a transaction
    if (db->begin_transaction() != DatabaseResult::OK) {
        std::cerr << "Failed to begin transaction" << std::endl;
        return;
    }
    
    try {
        // Insert multiple files in a transaction
        auto stmt = db->prepare("INSERT INTO files (filename, checksum, size, mtime) VALUES (?, ?, ?, ?)");
        
        std::vector<std::tuple<std::string, std::string, int, int>> files = {
            {"/etc/fstab", "fstab123", 512, 1640995300},
            {"/etc/group", "group456", 256, 1640995400},
            {"/etc/shadow", "shadow789", 128, 1640995500}
        };
        
        for (const auto& [filename, checksum, size, mtime] : files) {
            stmt->reset();
            stmt->bind(1, filename);
            stmt->bind(2, checksum);
            stmt->bind(3, size);
            stmt->bind(4, mtime);
            
            if (stmt->execute() != DatabaseResult::DONE) {
                throw std::runtime_error("Failed to insert file: " + filename);
            }
        }
        
        // Commit the transaction
        if (db->commit() != DatabaseResult::OK) {
            throw std::runtime_error("Failed to commit transaction");
        }
        
        std::cout << "Successfully inserted " << files.size() << " files in transaction" << std::endl;
        
    } catch (const std::exception& e) {
        std::cerr << "Transaction failed: " << e.what() << std::endl;
        db->rollback();
    }
}

int main() {
    std::cout << "C++ Database Layer Examples" << std::endl;
    std::cout << "============================" << std::endl;
    
    try {
        example_basic_usage();
        example_query_usage();
        example_transaction_usage();
        
        std::cout << "\nAll examples completed successfully!" << std::endl;
        
    } catch (const std::exception& e) {
        std::cerr << "Error: " << e.what() << std::endl;
        return 1;
    }
    
    return 0;
}
