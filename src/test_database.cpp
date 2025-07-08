/*  -*- c-file-style: "k&r"; c-basic-offset: 4; tab-width: 4; indent-tabs-mode:
 * t -*- */
#include "check.hpp"
#include "database_api.hpp"
#include "db.hpp"
#include "db_api.hpp"
#include <iostream>
#include <memory>
#include "textlist.hpp"

void test_database(const std::string &conn_str) {
  std::cout << "--- Testing Database: " << conn_str << " --- " << std::endl;
  // Change this connection string to match your PostgreSQL server
  // configuration.
  // ----------------------

  try {
    // 1. Connect
    auto conn = create_connection(conn_str);
    std::cout << "Connected to TEST database: " << conn_str << " " << std::endl;

    // 2. Create a table
    conn->prepare("DROP TABLE IF EXISTS users;")->execute_update();
    conn->prepare("CREATE TABLE users (id SERIAL PRIMARY KEY, name TEXT NOT "
                  "NULL, age INT);")
        ->execute_update();

    std::cout << "Table 'users' created." << std::endl;

    // 3. Insert data in a transaction
    conn->begin_transaction();
    std::cout << "Transaction started." << std::endl;

    std::string names[] = {"Alice", "Bob", "Charlie"};
    int ages[] = {30, 42, -1};
    int index = 0;
    for (auto name : names) {
      auto insert_stmt = conn->prepare(
          "insert", "INSERT INTO users (name, age) VALUES (?, ?);");
            insert_stmt->bind(1, name);
            int age = ages[index];
            if (age > 0) {
                insert_stmt->bind(2, ages[index]);
            } else {
                insert_stmt->bind_null(2); // Age is NULL
            }
            insert_stmt->execute_update();
            index++;
        }
        conn->commit();
        std::cout << "Transaction committed." << std::endl;

        // 4. Query data
        auto query_stmt =
            conn->prepare("SELECT id, name, age FROM users ORDER BY id;");
        auto rs = query_stmt->execute_query();

        std::cout << "\nQuery Results:" << std::endl;
        std::cout << "ID\tName\tAge" << std::endl;
        std::cout << "--------------------" << std::endl;
        while (rs->next()) {
        int id = rs->get_int("id");
        std::string name = rs->get_string("name");
        // Check for NULL explicitly for age
        if (rs->get_string("age").empty()) { // A simple was_null check
            std::cout << id << "\t" << name << "\t" << "NULL" << std::endl;
        } else {
            int age = rs->get_int("age");
            std::cout << id << "\t" << name << "\t" << age << std::endl;
        }
        }
        std::cout << "--------------------" << std::endl;

    } catch (const std::exception &e) {
        std::cerr << "[ERROR] " << e.what() << std::endl;
        std::cerr << "Please ensure the PostgreSQL server is running and the "
                    "connection string is correct."
                << std::endl;
    }
    std::cout << "--- PostgreSQL Test Finished ---\n" << std::endl;
}

void test_db_api(const std::string &conn_str) {
    std::cout << "--- Testing API: " << conn_str << " --- " << std::endl;
    try {
        DbApi *api = csync_db_open(conn_str.c_str());
        api->upgrade_to_schema(2);
        std::string filename_str = "/some/valid/path/to/file";
        char *filename = const_cast<char *>(filename_str.c_str());
        std::string hostname_str = "hostname";
        char *hostname = const_cast<char *>(hostname_str.c_str());
        std::string peername_str = "peername";
        char *peername = const_cast<char *>(peername_str.c_str());
        struct stat filestat;
        filestat.st_mode = S_IFREG | S_IRUSR | S_IWUSR | S_IXUSR;
        filestat.st_size = 1024;
        filestat.st_mtime = time(NULL);
        filestat.st_ino = 12345;
        filestat.st_dev = 67890;
        // BUG 1
        strcpy(g_myhostname, hostname);
        int count =api->remove_dirty(peername, filename, 0);
        std::cout << "remove_dirty count (recursive): " << count << std::endl;
        count =api->remove_dirty(peername, filename, 1);
        std::cout << "remove_dirty count: " << count << std::endl;
        //assert(count == 1);
        count = api->remove_file(filename, 1);
        std::cout << "remove_file count: " << count << std::endl;
        count = api->remove_file(filename, 0);
        std::cout << "remove_file count (not recursive): " << count << std::endl;
        api->insert_file(filename, "checktxt_encoded", &filestat,
                        "digest");
        api->add_dirty(filename, 0, hostname, peername, "NEW",
                    "checktxt", "1234", "5678", NULL, csync_operation("NEW"), 666,
                    1234567890);
        std::set<std::string> patlist;
        textlist_p tl = api->get_dirty_by_peer_match(hostname, peername, 1, patlist, NULL);
        for (auto it = tl; it != NULL; it = it->next) {
            std::cout << "Dirty file: " << it->value << std::endl;
        }

        api->remove_dirty(peername, "/", 1);
        api->remove_file("/", 1);

    } catch (const std::exception &e) {
        std::cerr << "[ERROR] " << e.what() << std::endl;
        std::cerr << "Please ensure the PostgreSQL server is running and the "
                    "connection string is correct."
                    << std::endl;
    }
    std::cout << "--- PostgreSQL Test Finished ---\n" << std::endl;
}

static const char *csync_decode_v2(const char *value)
{
	return value;
}

int main(int argc, char *argv[]) {
  std::string conn_string = "pgsql://testuser:testpass@localhost:5432/testdb";
  csync_out_debug = stderr;
  csync_level_debug = 2;
  db_decode = csync_decode_v2;

  if (argc < 2) {
    std::cout << "Using hard coded connection string: " << conn_string << "\n";
  } else {
    conn_string = argv[1];
  }
  // test_database(conn_string);
  test_db_api(conn_string);

  return 0;
}
