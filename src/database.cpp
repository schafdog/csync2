/*  -*- c-file-style: "k&r"; c-basic-offset: 4; tab-width: 4; indent-tabs-mode: t -*-
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

#include "database.hpp"
#include "database_sqlite.hpp"
#include "database_mysql.hpp"
#include "database_postgres.hpp"

namespace csync2 {


// DatabaseFactory implementation
std::unique_ptr<DatabaseConnection> DatabaseFactory::create(DatabaseType type) {
    switch (type) {
        case DatabaseType::SQLITE3:
            return std::make_unique<SQLiteConnection>();
        case DatabaseType::MYSQL:
            // Would return MySQL implementation
            return std::make_unique<MySQLConnection>();
        case DatabaseType::POSTGRESQL:
            // Would return PostgreSQL implementation
            return std::make_unique<PostgresConnection>();
        default:
            return nullptr;
    }
}

std::unique_ptr<DatabaseConnection> DatabaseFactory::create_from_url(const std::string& url) {
    // Parse connection string to determine database type
    if (url.find("sqlite:") == 0) {
        auto conn = create(DatabaseType::SQLITE3);
        if (conn && conn->open(url.substr(7)) == DatabaseResult::OK) {
            return conn;
        }
    } else if (url.find("mysql:") == 0) {
        auto conn = create(DatabaseType::MYSQL);
        if (conn && conn->open(url.substr(6)) == DatabaseResult::OK) {
            return conn;
        }
    } else if (url.find("postgresql:") == 0) {
        auto conn = create(DatabaseType::POSTGRESQL);
        if (conn && conn->open(url.substr(11)) == DatabaseResult::OK) {
            return conn;
        }
    } else {
        // Default to SQLite3 for file paths
        auto conn = create(DatabaseType::SQLITE3);
        if (conn && conn->open(url) == DatabaseResult::OK) {
            return conn;
        }
    }
    return nullptr;
}

// DatabaseManager implementation
DatabaseManager& DatabaseManager::instance() {
    static DatabaseManager instance;
    return instance;
}

std::unique_ptr<DatabaseConnection> DatabaseManager::open(const std::string& connection_string) {
    auto connection = DatabaseFactory::create_from_url(connection_string);
    if (connection) {
        return connection;
    }
    return nullptr;
}

void DatabaseManager::close_all() {
    connections_.clear();
}

} // namespace csync2
