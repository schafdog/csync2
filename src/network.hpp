/*  -*- c++-file-style: "k&r"; c-basic-offset: 4; tab-width: 4; indent-tabs-mode: t -*-
 *  csync2 - cluster synchronization tool, 2nd generation
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

#ifndef CSYNC2_NETWORK_HPP
#define CSYNC2_NETWORK_HPP 1

#include <string>
#include <memory>
#include <vector>
#include <cstdio>
#include <sys/types.h>

namespace csync2 {

// Forward declarations
class DatabaseConnection;

using peername_p = const char *;

// Connection management class
class Connection {
public:
    Connection() = default;
    virtual ~Connection();
    
    // Connection lifecycle
    virtual int open(const std::string& myhostname, const std::string& peername, int ip_version);
    virtual int set(int infd, int outfd);
    virtual int activate_ssl(bool server_role, int in, int out);
    virtual int check_peer_cert(std::shared_ptr<DatabaseConnection> db, const std::string& peername, bool callfatal);
    virtual int close();
    
    // I/O operations
    virtual ssize_t read(char *buf, size_t count);
    virtual ssize_t read_get_content_length(size_t *size, int *type);
    virtual ssize_t write(const char *buf, size_t count);
    virtual ssize_t gets_newline(char *s, size_t size, bool remove_newline);
    virtual void printf(const char *fmt, ...);
    virtual int fgets(char *s, int size);
    virtual size_t gets(char *s, size_t size);
    
    // Chunked transfer
    virtual ssize_t read_chunk(char **buffer, size_t *n_bytes);
    virtual int write_chunk(const char *buffer, size_t n_bytes);
    virtual int read_file_chunked(FILE *file);
    virtual int send_file_chunked(FILE *file, size_t size);
    
    // Properties
    int fd_in() const { return fd_in_; }
    int fd_out() const { return fd_out_; }
    bool is_ssl() const { return ssl_active_; }
    
private:
    int fd_in_ = -1;
    int fd_out_ = -1;
    bool ssl_active_ = false;
    void* ssl_context_ = nullptr;  // SSL context (implementation specific)
};

// Server management class
class Server {
public:
    Server() = default;
    virtual ~Server() = default;
    
    // Server lifecycle
    virtual int bind(const std::string& port, int ip_version);
    virtual int accept_loop(int mode, int listenfd, int* conn);
    virtual void shutdown();
    
    // Daemon operations
    virtual int start_daemon(int mode, int flags);
    virtual void handle_client(std::shared_ptr<Connection> conn);
    
private:
    int listen_fd_ = -1;
    std::vector<std::shared_ptr<Connection>> active_connections_;
};

// Network utility functions
class NetworkUtils {
public:
    static std::string resolve_hostname(const std::string& hostname);
    static bool is_valid_ip(const std::string& ip, int ip_version);
    static std::string get_local_hostname();
    static int get_socket_error(int sockfd);
};

} // namespace csync2

// Legacy C-style interface for compatibility
extern "C" {
    // Connection management
    int conn_open(peername_p myhostname, peername_p peername, int ip_version);
    int conn_set(int infd, int outfd);
    int conn_activate_ssl(int server_role, int in, int out);
    int conn_check_peer_cert(db_conn_p db, peername_p peername, int callfatal);
    int conn_close(int conn);
    
    // I/O operations
    ssize_t conn_read(int fd, char *buf, size_t count);
    ssize_t conn_read_get_content_length(int fd, size_t *size, int *type);
    ssize_t conn_write(int fd, const char *buf, size_t count);
    ssize_t gets_newline(int filedesc, char *s, size_t size, int remove_newline);
    ssize_t conn_gets_newline(int filedesc, char *s, size_t size, int remove_newline);
    void conn_printf(int fd, const char *fmt, ...);
    int conn_fgets(int fd, char *s, int size);
    size_t conn_gets(int fd, char *s, size_t size);
    
    // Chunked transfer
    ssize_t conn_read_chunk(int fd, char **buffer, size_t *n_bytes);
    int conn_write_chunk(int fd, const char *buffer, size_t n_bytes);
    int conn_read_file_chunked(int sockfd, FILE *file);
    int conn_send_file_chunked(int sockfd, FILE *file, size_t size);
    
    // Server functions
    int csync_server_bind(const char *port, int ip_version);
    int csync_server_accept_loop(int mode, int listenfd, int *conn);
    
    // Daemon functions
    void csync_daemon_session(int conn_fd);
    int csync_daemon_startup(void);
}

#endif /* CSYNC2_NETWORK_HPP */
