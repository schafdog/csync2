#ifndef DATABASE_API_HPP
#define DATABASE_API_HPP

#include <string>
#include <memory>
#include <vector>
#include <set>
#include <sys/stat.h> // For struct stat, dev_t
#include "csync2.hpp"
#include "database_v2.hpp"
#include "buffer.hpp"

// Forward declarations
class DatabaseApi;

// Placeholder for csync2-specific types, replace with actual includes if available
// For now, using basic types or simple structs
// struct filename_p { std::string path; };
// struct peername_p { std::string name; };

// Assuming operation_t is an int or enum
typedef int operation_t;

// Assuming BUF_P is some kind of buffer, using std::string as a placeholder
//typedef std::string BUF_P;

/**
 * @brief C++ wrapper for database statements.
 * This class manages the lifecycle of a PreparedStatement and its ResultSet.
 */
class DatabaseStatement {
public:
    // Constructor for statements that return results (e.g., SELECT)
    explicit DatabaseStatement(std::unique_ptr<PreparedStatement> stmt);

    // Constructor for statements that don't return results (e.g., INSERT, UPDATE, DELETE)
    explicit DatabaseStatement(std::unique_ptr<PreparedStatement> stmt, bool is_update);

    ~DatabaseStatement();

    // Binding methods
    void bind(int index, int value);
    void bind(int index, long long value);
    void bind(int index, double value);
    void bind(int index, const std::string& value);
    void bind_null(int index);

    // Execution methods
    bool next(); // For queries
    long long execute_update(); // For updates

    // Column retrieval methods
    std::string get_column_text(int column);
    int get_column_int(int column);
    // Add other get_column_... methods as needed

private:
    std::unique_ptr<PreparedStatement> stmt_;
    std::unique_ptr<ResultSet> rs_;
    bool is_update_;
};

/**
 * @brief C++ wrapper for database connection and csync2-specific operations.
 * This class uses the DatabaseConnection (from database_v2.hpp) internally.
 */
class DatabaseApi {
public:
    explicit DatabaseApi(std::unique_ptr<DatabaseConnection> conn);
    ~DatabaseApi() = default;

    // Transaction management
    void begin_transaction();
    void commit();
    void rollback();

    // Error message (simplified, as DatabaseConnection doesn't expose it directly)
    const char* errmsg();

    // --- csync2-specific operations ---

    // Corresponds to db_conn_t::get_old_operation
    std::unique_ptr<DatabaseStatement> get_old_operation(const std::string& checktxt, const peername_p& peername, const filename_p& filename,
                                                         const std::string& device, const std::string& ino, const BUF_P& buffer);

    // Corresponds to db_conn_t::remove_dirty
    void remove_dirty(const peername_p& peername, const filename_p& filename, int recursive);

    // Corresponds to db_conn_t::add_dirty
    int add_dirty(const std::string& file_new, int csync_new_force, const std::string& myname, const peername_p& peername,
                  const std::string& operation, const std::string& checktxt, const std::string& dev, const std::string& ino,
                  const std::string& result_other, int op, int mode, int mtime);

    // Corresponds to db_conn_t::check_delete
    int check_delete(const filename_p& file, int flags, int init_run);

    // Corresponds to db_conn_t::check_file_same_dev_inode
    std::unique_ptr<DatabaseStatement> check_file_same_dev_inode(const filename_p& filename, const std::string& checktxt, const std::string& digest, struct stat* st, const peername_p& peername);

    // Corresponds to db_conn_t::check_dirty_file_same_dev_inode
    std::unique_ptr<DatabaseStatement> check_dirty_file_same_dev_inode(const peername_p& peername, const filename_p& filename,
                                                                       const std::string& checktxt, const std::string& digest, struct stat* st);

    // Corresponds to db_conn_t::update_dev_no
    int update_dev_no(const filename_p& encoded, int recursive, dev_t old_no, dev_t new_no);

    // Corresponds to db_conn_t::delete_file
    void delete_file(const filename_p& filename, int recursive);

    // Corresponds to db_conn_t::update_file
    int update_file(const filename_p& encoded, const std::string& checktxt_encoded, struct stat* file_stat, const std::string& digest);

    // Corresponds to db_conn_t::insert_update_file
    int insert_update_file(const filename_p& encoded, const std::string& checktxt_encoded, struct stat* file_stat, const std::string& digest);

    // Corresponds to db_conn_t::insert_file
    int insert_file(const filename_p& encoded, const std::string& checktxt_encoded, struct stat* file_stat, const std::string& digest);

    // Corresponds to db_conn_t::check_file
    int check_file(const std::string& file, std::string& enc, std::string* other, std::string& checktxt,
                   struct stat* file_stat, const BUF_P& buffer, int* operation, std::string* digest, int flags, dev_t* old_no);

    // Corresponds to db_conn_t::clear_operation
    void clear_operation(const std::string& myname, const peername_p& peername, const filename_p& filename);

    // Corresponds to db_conn_t::update_dirty_hardlinks
    void update_dirty_hardlinks(const peername_p& peername, const filename_p& newfile, struct stat* st);

    // Corresponds to db_conn_t::remove_file
    void remove_file(const filename_p& filename, int recursive);

    // Corresponds to db_conn_t::non_dirty_files_match
    std::unique_ptr<DatabaseStatement> non_dirty_files_match(const filename_p& pattern);

    // Corresponds to db_conn_t::get_dirty_hosts
    std::unique_ptr<DatabaseStatement> get_dirty_hosts();

    // Corresponds to db_conn_t::list_file
    std::unique_ptr<DatabaseStatement> list_file(const filename_p& filename, const std::string& myname, const peername_p& peername, int recursive);

    // Corresponds to db_conn_t::find_dirty
    std::unique_ptr<DatabaseStatement> find_dirty(int (*filter_dirty)(filename_p filename, const char *localname, peername_p peername));

    // Corresponds to db_conn_t::find_file
    std::unique_ptr<DatabaseStatement> find_file(const filename_p& pattern, int (*filter_file)(filename_p filename));

    // Corresponds to db_conn_t::dir_count
    int dir_count(const std::string& dirname);

    // Corresponds to db_conn_t::is_dirty
    int is_dirty(const peername_p& peername, const filename_p& filename, int* operation, int* mode);

    // Corresponds to db_conn_t::escape (assuming it's a generic escape for SQL strings)
    std::string escape(const std::string& input);

    // Corresponds to db_conn_t::move_file
    int move_file(const filename_p& oldfile, const filename_p& newfile);

    // Corresponds to db_conn_t::upgrade_db
    int upgrade_db();

    // Corresponds to db_conn_t::update_format_v1_v2
    int update_format_v1_v2(const filename_p& filename, int recursive, int do_it);

    // Corresponds to db_conn_t::add_hint
    long long add_hint(const filename_p& filename, int recursive);

    // Corresponds to db_conn_t::get_hints
    std::unique_ptr<DatabaseStatement> get_hints();

    // Corresponds to db_conn_t::remove_hint
    long long remove_hint(const filename_p& filename, int recursive);

    // Corresponds to db_conn_t::force
    void force(const std::string& realname, int recursive);

    // Corresponds to db_conn_t::mark
    void mark(const std::set<std::string>& active_peers, const std::string& realname, int recursive);

    // Corresponds to db_conn_t::list_hint
    void list_hint();

    // Corresponds to db_conn_t::list_files
    void list_files(const filename_p& filename);

    // Corresponds to db_conn_t::list_sync
    void list_sync(const peername_p& myname, const peername_p& peername);

    // Corresponds to db_conn_t::list_dirty (already implemented)
    std::unique_ptr<DatabaseStatement> list_dirty(const std::set<std::string>& active_peers, const std::string& realname, int recursive);

private:
    std::unique_ptr<DatabaseConnection> conn_;
};

#endif // DATABASE_API_HPP
