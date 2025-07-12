/*  -*- c-file-style: "k&r"; c-basic-offset: 4; tab-width: 4; indent-tabs-mode:
 * t -*- */
#include "check.hpp"
#include "database_api.hpp"
#include "db.hpp"
#include "db_api.hpp"
#include <cassert>
#include <iostream>
#include <memory>
#include "textlist.hpp"
using namespace std;
void test_database(const std::string &conn_str) {
  std::cout << "--- Testing Database: " << conn_str << " --- " << std::endl;
  // Change this connection string to match your PostgreSQL server
  // configuration.
  // ----------------------

  try {
    // 1. Connect
    DbApi *api;
    auto rc = db_open(conn_str.c_str(), 0, &api);
    if (rc) {
      std::cout << "Failed to open db: " << conn_str << std::endl;
      exit(1);
    }
    auto conn = api->conn_;
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
    auto insert_stmt = conn->prepare("insert", "INSERT INTO users (name, age) VALUES (?, ?);");
    for (auto name : names) {
            insert_stmt->bind(1, name);
            int age = ages[index];
            if (age > 0) {
                insert_stmt->bind(2, ages[index]);
            } else {
                insert_stmt->bind_null(2); // Age is NULL
            }
            int count = insert_stmt->execute_update();
            std::cout << "Inserted " << count << " row(s)." << std::endl;
            index++;
        }
        conn->commit();
        std::cout << "Transaction committed." << std::endl;

        // 4. Query data
        auto query_stmt =
            conn->prepare("select", "SELECT id, name, age FROM users ORDER BY id;");
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

int print_textlist(textlist_p tl) {
    int count = 0;
    while (tl) {
        std::cout << "Item: " << tl->value << std::endl;
        tl = tl->next;
        count++;
    }
    return count;
}

void test_db_api(const std::string &conn_str) {
    std::cout << "--- Testing API: " << conn_str << " --- " << std::endl;
    try {
        DbApi *api = csync_db_open(conn_str.c_str());
        api->upgrade_to_schema(2);

        // Initial cleanup for all tables
        api->conn_->query("DROP TABLE IF EXISTS file;");
        api->conn_->query("DROP TABLE IF EXISTS hint;");
        api->conn_->query("DROP TABLE IF EXISTS dirty;");
        api->conn_->query("DROP TABLE IF EXISTS action;");
        api->conn_->query("DROP TABLE IF EXISTS host;");

        // Recreate tables (assuming upgrade_to_schema handles this, or add explicit CREATE TABLE statements if needed)
        // For now, relying on upgrade_to_schema to recreate them if they don't exist.
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
        int count = api->remove_dirty(peername, filename, 0);
        std::cout << "remove_dirty count (recursive): " << count << std::endl;
        count = api->remove_dirty(peername, filename, 1);
        std::cout << "remove_dirty count: " << count << std::endl;
        assert(count == 0);
        count = api->remove_file(filename, 1);
        std::cout << "remove_file count: " << count << std::endl;
        count = api->remove_file(filename, 0);
        std::cout << "remove_file count (not recursive): " << count << std::endl;
        long long insert_file_count = api->insert_file(filename, "checktxt_encoded", &filestat,
                        "digest");
        std::cout << "insert file count: " << insert_file_count << std::endl;
        assert(insert_file_count == 1);

        long long remove_file_count = api->remove_file(filename, 1);
        std::cout << "remove_file count: " << remove_file_count << std::endl;
        assert(remove_file_count == 1);

        // Re-insert for subsequent tests
        insert_file_count = api->insert_file(filename, "checktxt_encoded", &filestat,
                        "digest");
        std::cout << "re-insert file count: " << insert_file_count << std::endl;
        assert(insert_file_count == 1);

        count = api->add_dirty(filename, 0, hostname, peername, "NEW",
                    "checktxt", "1234", "5678", NULL, csync_operation("NEW"), 666,
                    1234567890);
        std::cout << "add_dirty count: " << count << std::endl;

        std::set<std::string> patlist ={"", ""};
        textlist_p tl = api->get_dirty_by_peer_match(hostname, peername, 1, patlist, NULL);
        count = print_textlist(tl);
        std::cout << "Dirty count: " << count << std::endl;
        assert(count == 1);

        count = api->dir_count("/");

        std::cout << "Directory count: " << count << std::endl;

        // Clean up hint table before test
        api->remove_hint("/", 1);

        long long add_hint_count = api->add_hint(filename, 1);
        std::cout << "add_hint count: " << add_hint_count << std::endl;
        assert(add_hint_count == 1);

        textlist_p hints = api->get_hints();
        int hint_count = print_textlist(hints);
        std::cout << "Hint count: " << hint_count << std::endl;
        assert(hint_count == 1);

        long long remove_hint_count = api->remove_hint(filename, 1);
        std::cout << "remove_hint count: " << remove_hint_count << std::endl;
        assert(remove_hint_count == 1);

        // Verify hint is removed
        hints = api->get_hints();
        hint_count = print_textlist(hints);
        std::cout << "Hint count after removal: " << hint_count << std::endl;
        assert(hint_count == 0);

        std::string command = "command";
        std::string logfile = "logfile";
        int insert_count = api->add_action( filename, command, logfile);
        int delete_count = api->del_action( filename, command);
        int remove_count = api->remove_action_entry(filename, command, logfile);
        cout << "ACTION add " << insert_count << " delete " << delete_count <<" remove entry " << remove_count << std::endl;

        api->update_dirty_hardlinks(filename, peername, &filestat);

        const char *checktxt = "checktxt";
        const char *digest = "digest";
        tl = api->check_file_same_dev_inode(filename, checktxt, digest, &filestat, peername);
        cout << "check_file_same_dev_inode count " << print_textlist(tl) << std::endl;
        tl = api->check_file_same_dev_inode(filename, checktxt, digest, &filestat, peername);
        cout << "check_file_same_dev_inode count " << print_textlist(tl) << std::endl;

        api->check_dirty_file_same_dev_inode(peername, filename, "checktxt", "digest", &filestat);
        api->clear_operation(hostname, peername, filename);
        api->check_delete(filename, 1, 0);
        api->update_dev_no(filename, 1, 123, 456);
        api->force(filename, 1);
        api->move_file(filename, "/some/other/path");
        int operation, mode;
        api->is_dirty(peername, filename, &operation, &mode);
        api->get_dirty_hosts();
        api->get_hints();
        api->list_dirty(std::set<std::string>{hostname}, filename, 1);
        api->list_file(filename, hostname, peername, 1);
        api->list_files(filename);
        api->list_hint();
        api->list_sync(hostname, peername);
        api->mark(std::set<std::string>{peername}, filename, 1);
        api->non_dirty_files_match(filename);
        api->escape(filename);
        //api->upgrade_db();
        // clean up
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

  if (argc < 2) {
    std::cout << "Using hard coded connection string: " << conn_string << "\n";
  } else {
    conn_string = argv[1];
  }
  test_database(conn_string);
  test_db_api(conn_string);

  return 0;
}
