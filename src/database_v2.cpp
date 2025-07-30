/*  -*- c-file-style: "k&r"; c-basic-offset: 4; tab-width: 4; indent-tabs-mode: t -*- */
#include "database_v2.hpp"
#include "database_sqlite_v2.hpp"
#include "database_mysql_v2.hpp"
#include "database_postgres_v2.hpp"

#include <sstream>
#include <map>
#include <stdexcept>
#include <regex>

//const std::string DATABASE = "dbname";

std::string parse_sqllite(std::map<std::string, std::string>& params) {
    std::string filename = params.count("dbname") > 0 ? params["dbname"] : "";
    return filename;
}

std::unique_ptr<DatabaseConnection> create_connection(const std::string& conn_string) {
	std::regex combined_regex(R"(^(\w+)://(?:(\w+)(?::([^@/]*))?@)?([^:/?#]*)(?::(\d+))?/?([^?#]*)$)");
	std::smatch match;
	std::map<std::string, std::string> params;

	if (!std::regex_match(conn_string, match, combined_regex)) {
		throw DatabaseError("Connection string must specify 'type' [sqlite|mysql|pgsql]");
	}
    // Extract the 'type' parameter
    std::string type_str = match[1];

    // pgsql and others
     if (match[2].matched) params["user"] = match[2];
     if (match[3].matched) params["password"] = match[3];
     if (match[4].matched && !match[4].str().empty()) params["host"] = match[4];
     if (match[5].matched) params["port"] = match[5];

     params["dbname"] = match[6];

    // Reconstruct remaining connection string for SQLite and PostgreSQL
    std::stringstream remaining_ss;
    for (const auto& pair : params) {
        remaining_ss << pair.first << "='" << pair.second << "' ";
    }
    std::string pgsql_str = remaining_ss.str();
    std::cout << "DB string " << pgsql_str << std::endl;

    if (type_str == "sqlite") {
        return std::make_unique<SQLiteConnection>(parse_sqllite(params));
    } else if (type_str == "mysql") {
        // For MySQL, use the parameters directly from the map
        std::string host = params.count("host") ? params["host"] : "";
        std::string user = params.count("user") ? params["user"] : "";
        std::string password = params.count("password") ? params["password"] : "";
        std::string database = params.count("database") ? params["dbname"] : "";
        unsigned int port = 3306; // Default MySQL port
        if (params.count("port")) {
            try {
                port = std::stoul(params["port"]);
            } catch (const std::exception& e) {
                throw DatabaseError("Invalid port format for MySQL: " + params["port"]);
            }
        }
        return std::make_unique<MySQLConnection>(host, user, password, database, port);
    } else if (type_str == "pgsql") {
        return std::make_unique<PostgresConnection>(pgsql_str);
    } else {
        throw DatabaseError("Unknown database type: " + type_str);
    }
}
