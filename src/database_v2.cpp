/*  -*- c-file-style: "k&r"; c-basic-offset: 4; tab-width: 4; indent-tabs-mode: t -*- */
#include "database_v2.hpp"
#include "database_sqlite_v2.hpp"
#include "database_mysql_v2.hpp"
#include "database_postgres_v2.hpp"

#include <sstream>
#include <map>
#include <stdexcept>

std::string parse_sqllite(std::map<std::string, std::string>& params) {
    std::string filename = params.count("filename") > 0 ? params["filename"] : "";
    return filename;
}

std::unique_ptr<DatabaseConnection> create_connection(const std::string& conn_string) {
    std::map<std::string, std::string> params;
    std::stringstream ss(conn_string);
    std::string segment;
    std::string type_str;
    if (std::getline(ss, segment, ':')) {
        params["type"] = segment;
    } else {
        throw std::invalid_argument("Invalid connection string: " + conn_string);
    }
    ss.seekp(2);
    // Parse the entire connection string into a map
    if (std::getline(ss, segment, '@')) {
        size_t eq_pos = segment.find(':');
        if (eq_pos != std::string::npos) {
            std::string user = segment.substr(0, eq_pos);
            std::string password = segment.substr(eq_pos + 1);
            params["user"] = user;
            params["password"] = password;
        }
    }
    // now host[:port]
    if (std::getline(ss, segment, '/')) {
        size_t eq_pos = segment.find(':');
        if (eq_pos != std::string::npos) {
            std::string host = segment.substr(0, eq_pos);
            std::string port = segment.substr(eq_pos + 1);
            params["host"] = host;
            params["port"] = port;
        }
    }
    // now database
    if (std::getline(ss, segment)) {
        params["database"] = segment;
    }

    // Extract the 'type' parameter
    auto it_type = params.find("type");
    if (it_type == params.end()) {
        throw DatabaseError("Connection string must specify 'type' (e.g., type=SQLite;...)");
    }
    type_str = it_type->second;
    params.erase(it_type); // Remove 'type' from params

    // Reconstruct remaining connection string for SQLite and PostgreSQL
    std::stringstream remaining_ss;
    bool first_param = true;
    for (const auto& pair : params) {
        if (!first_param) {
            remaining_ss << ";";
        }
        remaining_ss << pair.first << "=" << pair.second;
        first_param = false;
    }
    std::string reconstructed_conn_string = remaining_ss.str();

    if (type_str == "SQLite") {
        return std::make_unique<SQLiteConnection>(parse_sqllite(params));
    } else if (type_str == "MySQL") {
        // For MySQL, use the parameters directly from the map
        std::string host = params.count("host") ? params["host"] : "";
        std::string user = params.count("user") ? params["user"] : "";
        std::string password = params.count("password") ? params["password"] : "";
        std::string database = params.count("database") ? params["database"] : "";
        unsigned int port = 3306; // Default MySQL port
        if (params.count("port")) {
            try {
                port = std::stoul(params["port"]);
            } catch (const std::exception& e) {
                throw DatabaseError("Invalid port format for MySQL: " + params["port"]);
            }
        }
        return std::make_unique<MySQLConnection>(host, user, password, database, port);
    } else if (type_str == "PostgreSQL") {
        return std::make_unique<PostgresConnection>(reconstructed_conn_string);
    } else {
        throw DatabaseError("Unknown database type: " + type_str);
    }
}
