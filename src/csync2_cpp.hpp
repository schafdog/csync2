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

#ifndef CSYNC2_CPP_HPP
#define CSYNC2_CPP_HPP

// C++ Standard Library includes
#include <iostream>
#include <string>
#include <vector>
#include <memory>
#include <unordered_map>
#include <functional>
#include <algorithm>
#include <exception>
#include <fstream>
#include <sstream>
#include <chrono>
#include <thread>
#include <mutex>
#include <condition_variable>

// C compatibility wrapper
extern "C" {
    #include "csync2.h"
}

namespace csync2 {

// Modern C++ type aliases
using String = std::string;
using StringVector = std::vector<std::string>;
using StringMap = std::unordered_map<std::string, std::string>;

// Forward declarations
class Database;
class Connection;
class FileInfo;
class Group;
class Configuration;

// Exception classes
class CsyncException : public std::exception {
private:
    std::string message_;
    
public:
    explicit CsyncException(const std::string& message) : message_(message) {}
    const char* what() const noexcept override { return message_.c_str(); }
};

class DatabaseException : public CsyncException {
public:
    explicit DatabaseException(const std::string& message) 
        : CsyncException("Database error: " + message) {}
};

class NetworkException : public CsyncException {
public:
    explicit NetworkException(const std::string& message) 
        : CsyncException("Network error: " + message) {}
};

class ConfigurationException : public CsyncException {
public:
    explicit ConfigurationException(const std::string& message) 
        : CsyncException("Configuration error: " + message) {}
};

// Smart pointer type aliases
template<typename T>
using UniquePtr = std::unique_ptr<T>;

template<typename T>
using SharedPtr = std::shared_ptr<T>;

template<typename T>
using WeakPtr = std::weak_ptr<T>;

// Factory functions for smart pointers
template<typename T, typename... Args>
UniquePtr<T> make_unique(Args&&... args) {
    return std::make_unique<T>(std::forward<Args>(args)...);
}

template<typename T, typename... Args>
SharedPtr<T> make_shared(Args&&... args) {
    return std::make_shared<T>(std::forward<Args>(args)...);
}

// Utility classes
class Logger {
public:
    enum class Level {
        DEBUG = 0,
        INFO = 1,
        WARNING = 2,
        ERROR = 3,
        FATAL = 4
    };
    
    static void log(Level level, const std::string& message);
    static void debug(const std::string& message) { log(Level::DEBUG, message); }
    static void info(const std::string& message) { log(Level::INFO, message); }
    static void warning(const std::string& message) { log(Level::WARNING, message); }
    static void error(const std::string& message) { log(Level::ERROR, message); }
    static void fatal(const std::string& message) { log(Level::FATAL, message); }
};

// RAII wrapper for C resources
template<typename T, typename Deleter>
class ResourceWrapper {
private:
    T* resource_;
    Deleter deleter_;
    
public:
    explicit ResourceWrapper(T* resource, Deleter deleter) 
        : resource_(resource), deleter_(deleter) {}
    
    ~ResourceWrapper() {
        if (resource_) {
            deleter_(resource_);
        }
    }
    
    // Move semantics
    ResourceWrapper(ResourceWrapper&& other) noexcept 
        : resource_(other.resource_), deleter_(std::move(other.deleter_)) {
        other.resource_ = nullptr;
    }
    
    ResourceWrapper& operator=(ResourceWrapper&& other) noexcept {
        if (this != &other) {
            if (resource_) {
                deleter_(resource_);
            }
            resource_ = other.resource_;
            deleter_ = std::move(other.deleter_);
            other.resource_ = nullptr;
        }
        return *this;
    }
    
    // Delete copy semantics
    ResourceWrapper(const ResourceWrapper&) = delete;
    ResourceWrapper& operator=(const ResourceWrapper&) = delete;
    
    T* get() const { return resource_; }
    T* release() {
        T* temp = resource_;
        resource_ = nullptr;
        return temp;
    }
    
    explicit operator bool() const { return resource_ != nullptr; }
};

// Type-safe enums
enum class OperationType : int {
    UNDEFINED = OP_UNDEF,
    MARK = OP_MARK,
    MKDIR = OP_MKDIR,
    NEW = OP_NEW,
    MKFIFO = OP_MKFIFO,
    MKCHR = OP_MKCHR,
    MOVE = OP_MOVE,
    HARDLINK = OP_HARDLINK,
    REMOVE = OP_RM,
    MODIFY = OP_MOD,
    MODIFY2 = OP_MOD2,
    SYNC = OP_SYNC
};

enum class Mode : long {
    NONE = MODE_NONE,
    HINT = MODE_HINT,
    CHECK = MODE_CHECK,
    UPDATE = MODE_UPDATE,
    CHECK_AND_UPDATE = MODE_CHECK_AND_UPDATE,
    INETD = MODE_INETD,
    SERVER = MODE_SERVER,
    SINGLE = MODE_SINGLE,
    NOFORK = MODE_NOFORK,
    STANDALONE = MODE_STANDALONE,
    DAEMON = MODE_DAEMON,
    FORCE = MODE_FORCE
};

// Utility functions
std::string operation_to_string(OperationType op);
OperationType string_to_operation(const std::string& str);

} // namespace csync2

#endif // CSYNC2_CPP_HPP
