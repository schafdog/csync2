/*  -*- c++-file-style: "k&r"; c-basic-offset: 4; tab-width: 4; indent-tabs-mode: t -*-
 *  Csync2 - cluster synchronization tool, 2nd generation
 *  LINBIT Information Technologies GmbH <http://www.linbit.com>
 *  Copyright (C) 2004, 2005, 2006  Clifford Wolf <clifford@clifford.at>
 *
 *  This program is free software; you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation; either version 2 of the License, or
 *  (at your option) any later version.
 *
 *  This program is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License
 *  along with this program; if not, write to the Free Software
 *  Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

#ifndef DATABASE_HPP
#define DATABASE_HPP

#include "csync2_cpp.hpp"

namespace csync2 {

class Database {
private:
    db_conn_p db_handle_;
    bool is_open_;
    
public:
    // Constructor/Destructor
    explicit Database(const std::string& connection_string);
    ~Database();
    
    // Delete copy constructor and assignment operator
    Database(const Database&) = delete;
    Database& operator=(const Database&) = delete;
    
    // Move constructor and assignment operator
    Database(Database&& other) noexcept;
    Database& operator=(Database&& other) noexcept;
    
    // Database operations
    void open(const std::string& connection_string);
    void close();
    bool is_open() const { return is_open_; }
    
    // Query operations
    long execute_sql(const std::string& query);
    long execute_sql(const std::string& query, const StringVector& params);
    
    // Transaction support
    class Transaction {
    private:
        Database& db_;
        bool committed_;
        
    public:
        explicit Transaction(Database& db);
        ~Transaction();
        
        void commit();
        void rollback();
        
        // Delete copy/move semantics
        Transaction(const Transaction&) = delete;
        Transaction& operator=(const Transaction&) = delete;
        Transaction(Transaction&&) = delete;
        Transaction& operator=(Transaction&&) = delete;
    };
    
    // Result set handling
    class ResultSet {
    private:
        void* vm_handle_;
        Database& db_;
        bool has_data_;
        
    public:
        ResultSet(Database& db, void* vm_handle);
        ~ResultSet();
        
        // Iterator interface
        bool next();
        bool has_data() const { return has_data_; }
        
        // Data access
        std::string get_string(int column) const;
        long get_long(int column) const;
        const void* get_blob(int column) const;
        
        // Delete copy/move semantics for safety
        ResultSet(const ResultSet&) = delete;
        ResultSet& operator=(const ResultSet&) = delete;
        ResultSet(ResultSet&&) = delete;
        ResultSet& operator=(ResultSet&&) = delete;
    };
    
    // Query with result set
    UniquePtr<ResultSet> execute_query(const std::string& query);
    UniquePtr<ResultSet> execute_query(const std::string& query, const StringVector& params);
    
    // File operations
    void mark_dirty(const std::string& filename, const std::string& peer, OperationType operation);
    void remove_dirty(const std::string& filename, const std::string& peer);
    bool is_dirty(const std::string& filename, const std::string& peer) const;
    
    void insert_file(const std::string& filename, const std::string& checksum, 
                    const struct stat& file_stat);
    void update_file(const std::string& filename, const std::string& checksum, 
                    const struct stat& file_stat);
    void remove_file(const std::string& filename);
    
    // Utility methods
    std::string escape_string(const std::string& input) const;
    std::string quote_string(const std::string& input) const;
    
    // Get underlying C handle (for compatibility)
    db_conn_p get_handle() const { return db_handle_; }
    
private:
    void check_open() const;
    void cleanup();
};

// Database factory
class DatabaseFactory {
public:
    static UniquePtr<Database> create(const std::string& connection_string);
    static UniquePtr<Database> create_sqlite(const std::string& filename);
    static UniquePtr<Database> create_mysql(const std::string& host, const std::string& database,
                                           const std::string& username, const std::string& password);
    static UniquePtr<Database> create_postgresql(const std::string& host, const std::string& database,
                                                const std::string& username, const std::string& password);
};

// Database connection pool
class DatabasePool {
private:
    std::vector<UniquePtr<Database>> pool_;
    std::mutex pool_mutex_;
    std::string connection_string_;
    size_t max_connections_;
    
public:
    explicit DatabasePool(const std::string& connection_string, size_t max_connections = 10);
    ~DatabasePool();
    
    // Get a database connection from the pool
    UniquePtr<Database> get_connection();
    
    // Return a connection to the pool
    void return_connection(UniquePtr<Database> db);
    
    // Pool statistics
    size_t active_connections() const;
    size_t available_connections() const;
    
private:
    UniquePtr<Database> create_connection();
};

} // namespace csync2

#endif // DATABASE_HPP
