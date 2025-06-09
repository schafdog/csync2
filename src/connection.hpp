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

#ifndef CONNECTION_HPP
#define CONNECTION_HPP

#include "csync2_cpp.hpp"
#include <chrono>

namespace csync2 {

// Connection status enumeration
enum class ConnectionStatus {
    DISCONNECTED,
    CONNECTING,
    CONNECTED,
    SSL_HANDSHAKE,
    AUTHENTICATED,
    ERROR
};

// SSL configuration
struct SSLConfig {
    bool use_ssl = false;
    std::string cert_file;
    std::string key_file;
    std::string ca_file;
    bool verify_peer = true;
};

class Connection {
private:
    int socket_fd_;
    ConnectionStatus status_;
    std::string hostname_;
    std::string port_;
    SSLConfig ssl_config_;
    bool is_server_;
    std::chrono::steady_clock::time_point last_activity_;
    
public:
    // Constructor/Destructor
    Connection();
    explicit Connection(int socket_fd, bool is_server = false);
    ~Connection();
    
    // Delete copy semantics
    Connection(const Connection&) = delete;
    Connection& operator=(const Connection&) = delete;
    
    // Move semantics
    Connection(Connection&& other) noexcept;
    Connection& operator=(Connection&& other) noexcept;
    
    // Connection management
    bool connect(const std::string& hostname, const std::string& port, int ip_version = AF_UNSPEC);
    bool connect(const std::string& hostname, const std::string& port, 
                const SSLConfig& ssl_config, int ip_version = AF_UNSPEC);
    void disconnect();
    bool is_connected() const { return status_ == ConnectionStatus::CONNECTED || 
                                      status_ == ConnectionStatus::AUTHENTICATED; }
    
    // SSL operations
    bool activate_ssl(const SSLConfig& config);
    bool is_ssl_active() const;
    
    // Authentication
    bool authenticate(const std::string& hostname);
    bool send_hello(const std::string& hostname);
    bool send_config(const std::string& config_name);
    bool send_bye();
    
    // Data transmission
    ssize_t read(void* buffer, size_t size);
    ssize_t write(const void* buffer, size_t size);
    ssize_t read_line(std::string& line, size_t max_size = 4096);
    
    // Formatted output
    template<typename... Args>
    void printf(const std::string& format, Args&&... args) {
        auto formatted = format_string(format, std::forward<Args>(args)...);
        write(formatted.c_str(), formatted.length());
    }
    
    // File transfer
    bool send_file(const std::string& filename);
    bool receive_file(const std::string& filename);
    bool send_file_chunked(const std::string& filename);
    bool receive_file_chunked(const std::string& filename);
    
    // Status and information
    ConnectionStatus get_status() const { return status_; }
    std::string get_hostname() const { return hostname_; }
    std::string get_port() const { return port_; }
    int get_socket() const { return socket_fd_; }
    
    // Timeout management
    void set_timeout(std::chrono::milliseconds timeout);
    bool has_timed_out(std::chrono::milliseconds timeout) const;
    void update_activity();
    
    // Error handling
    std::string get_last_error() const;
    
private:
    void cleanup();
    bool setup_socket(int ip_version);
    bool perform_ssl_handshake();
    void set_status(ConnectionStatus status) { status_ = status; }
    
    // Helper for string formatting
    template<typename... Args>
    std::string format_string(const std::string& format, Args&&... args) {
        size_t size = std::snprintf(nullptr, 0, format.c_str(), args...) + 1;
        std::unique_ptr<char[]> buf(new char[size]);
        std::snprintf(buf.get(), size, format.c_str(), args...);
        return std::string(buf.get(), buf.get() + size - 1);
    }
};

// Connection manager for handling multiple connections
class ConnectionManager {
private:
    std::vector<UniquePtr<Connection>> connections_;
    std::mutex connections_mutex_;
    
public:
    ConnectionManager() = default;
    ~ConnectionManager();
    
    // Connection management
    UniquePtr<Connection> create_connection();
    UniquePtr<Connection> create_connection(const std::string& hostname, const std::string& port);
    void add_connection(UniquePtr<Connection> conn);
    void remove_connection(Connection* conn);
    
    // Server operations
    bool start_server(const std::string& port, int ip_version = AF_UNSPEC);
    void stop_server();
    UniquePtr<Connection> accept_connection();
    
    // Bulk operations
    void disconnect_all();
    size_t active_connections() const;
    
    // Connection pooling
    UniquePtr<Connection> get_pooled_connection(const std::string& hostname, const std::string& port);
    void return_to_pool(UniquePtr<Connection> conn);
    
private:
    int server_socket_;
    bool server_running_;
    std::thread server_thread_;
    
    void server_loop();
};

// Connection factory
class ConnectionFactory {
public:
    static UniquePtr<Connection> create_tcp_connection(const std::string& hostname, const std::string& port);
    static UniquePtr<Connection> create_ssl_connection(const std::string& hostname, const std::string& port,
                                                      const SSLConfig& ssl_config);
    static UniquePtr<Connection> create_server_connection(int client_socket);
};

} // namespace csync2

#endif // CONNECTION_HPP
