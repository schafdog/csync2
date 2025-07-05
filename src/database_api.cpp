#include "database_api.hpp"
#include <stdexcept>
#include <sstream>
#include <algorithm>
#include <cstring> // For strcpy, strdup

// Placeholder for csync2 global variables and helper functions
// In a real refactoring, these would be properly integrated or passed as parameters.
extern char g_myhostname[]; // Assuming this is defined elsewhere
int get_file_type(int st_mode);


DatabaseStatement::DatabaseStatement(std::unique_ptr<PreparedStatement> stmt)
    : stmt_(std::move(stmt)), is_update_(false) {
    // For query statements, execute immediately and get the ResultSet
    rs_ = stmt_->execute_query();
}

DatabaseStatement::DatabaseStatement(std::unique_ptr<PreparedStatement> stmt, bool is_update)
    : stmt_(std::move(stmt)), is_update_(is_update) {
    // For update statements, don't execute immediately, just store the prepared statement
}

DatabaseStatement::~DatabaseStatement() {
    // stmt_ and rs_ unique_ptrs handle cleanup automatically
}

void DatabaseStatement::bind(int index, int value) {
    stmt_->bind(index, value);
}

void DatabaseStatement::bind(int index, long long value) {
    stmt_->bind(index, value);
}

void DatabaseStatement::bind(int index, double value) {
    stmt_->bind(index, value);
}

void DatabaseStatement::bind(int index, const std::string& value) {
    stmt_->bind(index, value);
}

void DatabaseStatement::bind_null(int index) {
    stmt_->bind_null(index);
}

bool DatabaseStatement::next() {
    if (!rs_) {
        throw DatabaseError("Cannot call next() on a non-query statement. Use execute_update() for updates.");
    }
    return rs_->next();
}

long long DatabaseStatement::execute_update() {
    if (!is_update_) {
        throw DatabaseError("Cannot call execute_update() on a query statement. Use next() for queries.");
    }
    return stmt_->execute_update();
}

std::string DatabaseStatement::get_column_text(int column) {
    if (!rs_) {
        throw DatabaseError("Cannot get column data from a non-query statement.");
    }
    return rs_->get_string(column);
}

int DatabaseStatement::get_column_int(int column) {
    if (!rs_) {
        throw DatabaseError("Cannot get column data from a non-query statement.");
    }
    return rs_->get_int(column);
}

// --- DatabaseApi Implementation ---

DatabaseApi::DatabaseApi(std::unique_ptr<DatabaseConnection> conn)
    : conn_(std::move(conn)) {
}

const char* DatabaseApi::errmsg() {
    return "Error message not directly available via DatabaseApi::errmsg. Check exceptions.";
}

void DatabaseApi::begin_transaction() {
    conn_->begin_transaction();
}

void DatabaseApi::commit() {
    conn_->commit();
}

void DatabaseApi::rollback() {
    conn_->rollback();
}

std::unique_ptr<DatabaseStatement> DatabaseApi::get_old_operation(const std::string& checktxt, const peername_p& peername, const filename_p& filename,
                                                         const std::string& device, const std::string& ino, const BUF_P& buffer) {
    const std::string sql = "SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = ? AND "
                              "(checktxt = ? AND device = ? AND inode = ? OR filename = ?) AND peername = ? "
                              "ORDER BY timestamp ";
    auto stmt = conn_->prepare(sql);
    stmt->bind(1, g_myhostname);
    stmt->bind(2, checktxt);
    stmt->bind(3, device);
    stmt->bind(4, ino);
    stmt->bind(5, filename.c_str());
    stmt->bind(6, peername.c_str());
    return std::make_unique<DatabaseStatement>(std::move(stmt));
}

void DatabaseApi::remove_dirty(const peername_p& peername, const filename_p& filename, int recursive) {
    std::string sql = "DELETE FROM dirty WHERE myname = ? AND peername = ? AND filename LIKE ?";
    auto stmt = conn_->prepare(sql);
    stmt->bind(1, g_myhostname);
    stmt->bind(2, peername.c_str());
    stmt->bind(3, (filename + (recursive ? "%" : "")).c_str());
    stmt->execute_update();
}

int DatabaseApi::add_dirty(const std::string& file_new, int csync_new_force, const std::string& myname, const peername_p& peername,
                  const std::string& operation, const std::string& checktxt, const std::string& dev, const std::string& ino,
                  const std::string& result_other, int op, int mode, int mtime) {
    const std::string sql = "INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) "
                            "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
    auto stmt = conn_->prepare(sql);

    stmt->bind(1, file_new);
    stmt->bind(2, csync_new_force ? 1 : 0);
    stmt->bind(3, myname);
    stmt->bind(4, peername.c_str());
    stmt->bind(5, operation);
    stmt->bind(6, checktxt);
    stmt->bind(7, dev);
    stmt->bind(8, ino);
    stmt->bind(9, result_other);
    stmt->bind(10, op);
    stmt->bind(11, mode);
    stmt->bind(12, get_file_type(mode));
    stmt->bind(13, mtime);

    return static_cast<int>(stmt->execute_update());
}

int DatabaseApi::check_delete(const filename_p& file, int recursive, int init_run) {
    const std::string sql = "SELECT COUNT(*) FROM file WHERE hostname = ? AND filename LIKE ?";
    auto stmt = conn_->prepare(sql);
    stmt->bind(1, g_myhostname);
    stmt->bind(2, (file + (recursive ? "%" : "")).c_str());
    auto rs = stmt->execute_query();
    if (rs->next()) {
        return rs->get_int(1);
    }
    return 0;
}

std::unique_ptr<DatabaseStatement> DatabaseApi::check_file_same_dev_inode(const filename_p& filename, const std::string& checktxt, const std::string& digest, struct stat* st, const peername_p& peername) {
    const std::string sql =
        " SELECT filename, checktxt, digest FROM file f "
        " WHERE "
        " hostname = ? "
        " AND device = ? "
        " AND inode = ? "
        " AND filename != ?"
        " AND (? = '' OR "
        "     filename NOT IN (SELECT filename FROM dirty WHERE peername = ? AND device = f.device AND inode = f.inode))"
        " ORDER BY filename;";

    auto stmt = conn_->prepare(sql);
    stmt->bind(1, g_myhostname);
    stmt->bind(2, static_cast<long long>(st->st_dev));
    stmt->bind(3, static_cast<long long>(st->st_ino));
    stmt->bind(4, filename.c_str());
    stmt->bind(5, peername.c_str());
    stmt->bind(6, peername.c_str());
    return std::make_unique<DatabaseStatement>(std::move(stmt));
}

std::unique_ptr<DatabaseStatement> DatabaseApi::check_dirty_file_same_dev_inode(const peername_p& peername, const filename_p& filename,
                                                                       const std::string& checktxt, const std::string& digest, struct stat* st) {
    const std::string sql_dirty = " SELECT filename, checktxt, digest, operation FROM dirty WHERE myname = ?"
                                  " AND device = ? AND inode = ? AND filename != ? AND peername = ? ";

    auto stmt = conn_->prepare(sql_dirty);
    stmt->bind(1, g_myhostname);
    stmt->bind(2, static_cast<long long>(st->st_dev));
    stmt->bind(3, static_cast<long long>(st->st_ino));
    stmt->bind(4, filename.c_str());
    stmt->bind(5, peername.c_str());
    return std::make_unique<DatabaseStatement>(std::move(stmt));
}

int DatabaseApi::update_dev_no(const filename_p& encoded, int recursive, dev_t old_no, dev_t new_no) {
    std::string sql = "UPDATE file set device=? WHERE hostname = ? AND filename LIKE ? AND device = ?";
    auto stmt = conn_->prepare(sql);
    stmt->bind(1, static_cast<long long>(new_no));
    stmt->bind(2, g_myhostname);
    stmt->bind(3, (encoded + (recursive ? "%" : "")).c_str());
    stmt->bind(4, static_cast<long long>(old_no));
    return static_cast<int>(stmt->execute_update());
}

void DatabaseApi::delete_file(const filename_p& filename, int recursive) {
    std::string sql = "DELETE FROM file WHERE hostname = ? AND filename LIKE ?";
    auto stmt = conn_->prepare(sql);
    stmt->bind(1, g_myhostname);
    stmt->bind(2, (filename + (recursive ? "%" : "")).c_str());
    stmt->execute_update();
}

int DatabaseApi::update_file(const filename_p& encoded, const std::string& checktxt_encoded, struct stat* file_stat, const std::string& digest) {
    const std::string sql = "UPDATE file set checktxt=?, device=?, inode=?, digest=?, mode=?, mtime=?, size=?, type=? WHERE hostname = ? AND filename = ?";
    auto stmt = conn_->prepare(sql);
    stmt->bind(1, checktxt_encoded);
    stmt->bind(2, static_cast<long long>(file_stat->st_dev));
    stmt->bind(3, static_cast<long long>(file_stat->st_ino));
    stmt->bind(4, digest);
    stmt->bind(5, static_cast<int>(file_stat->st_mode));
    stmt->bind(6, static_cast<long long> (file_stat->st_mtime));
    stmt->bind(7, static_cast<long long>(file_stat->st_size));
    stmt->bind(8, static_cast<int>(get_file_type(file_stat->st_mode)));
    stmt->bind(9, g_myhostname);
    stmt->bind(10, encoded.c_str());
    return static_cast<int>(stmt->execute_update());
}

int DatabaseApi::insert_file(const filename_p& encoded, const std::string& checktxt_encoded, struct stat* file_stat, const std::string& digest) {
    const std::string sql = "INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) "
                            "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
    auto stmt = conn_->prepare(sql);
    stmt->bind(1, g_myhostname);
    stmt->bind(2, encoded.c_str());
    stmt->bind(3, checktxt_encoded);
    stmt->bind(4, static_cast<long long>(file_stat->st_dev));
    stmt->bind(5, static_cast<long long>(file_stat->st_ino));
    stmt->bind(6, digest);
    stmt->bind(7, static_cast<int>(file_stat->st_mode));
    stmt->bind(8, static_cast<long long>(file_stat->st_size));
    stmt->bind(9, static_cast<long long>(file_stat->st_mtime));
    stmt->bind(10, get_file_type(file_stat->st_mode));
    return static_cast<int>(stmt->execute_update());
}

int DatabaseApi::insert_update_file(const filename_p& encoded, const std::string& checktxt_encoded, struct stat* file_stat, const std::string& digest) {
    int count = update_file(encoded, checktxt_encoded, file_stat, digest);
    if (count <= 0) {
        count = insert_file(encoded, checktxt_encoded, file_stat, digest);
    }
    return count;
}

int DatabaseApi::check_file(const std::string& file, std::string& enc, std::string* other, std::string& checktxt,
                   struct stat* file_stat, const BUF_P& buffer, int* operation, std::string* digest, int flags, dev_t* old_no) {
    const std::string sql = "SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = ? AND filename = ?";
    auto stmt = conn_->prepare(sql);
    stmt->bind(1, g_myhostname);
    stmt->bind(2, file);
    auto rs = stmt->execute_query();

    if (rs->next()) {
        checktxt = rs->get_string(1);
        std::string inode_str = rs->get_string(2);
        std::string device_str = rs->get_string(3);
        *digest = rs->get_string(4);
        file_stat->st_mode = rs->get_int(5);
        file_stat->st_size = rs->get_long(6);
        file_stat->st_mtime = rs->get_long(7);

        if (old_no) *old_no = static_cast<dev_t>(std::stoll(device_str));

        if (operation) *operation = 0;

        return 1;
    }
    return 0;
}

void DatabaseApi::clear_operation(const std::string& myname, const peername_p& peername, const filename_p& filename) {
    const std::string sql = "UPDATE dirty set operation = '-' where myname = ? and peername = ? and filename = ?";
    auto stmt = conn_->prepare(sql);
    stmt->bind(1, myname);
    stmt->bind(2, peername.c_str());
    stmt->bind(3, filename.c_str());
    stmt->execute_update();
}

void DatabaseApi::update_dirty_hardlinks(const peername_p& peername, const filename_p& newfile, struct stat* st) {
    const std::string sql = " UPDATE dirty set other = ? WHERE "
                            " peername  = ? "
                            " AND device = ? "
                            " AND inode = ? "
                            " AND filename != ? ";
    auto stmt = conn_->prepare(sql);
    stmt->bind(1, newfile.c_str());
    stmt->bind(2, peername.c_str());
    stmt->bind(3, static_cast<long long>(st->st_dev));
    stmt->bind(4, static_cast<long long>(st->st_ino));
    stmt->bind(5, newfile.c_str());
    stmt->execute_update();
}

void DatabaseApi::remove_file(const filename_p& filename, int recursive) {
    std::string sql = "DELETE FROM file WHERE hostname = ? AND filename LIKE ?";
    auto stmt = conn_->prepare(sql);
    stmt->bind(1, g_myhostname);
    stmt->bind(2, (filename + (recursive ? "%" : "")).c_str());
    stmt->execute_update();
}

std::unique_ptr<DatabaseStatement> DatabaseApi::non_dirty_files_match(const filename_p& pattern) {
    const std::string sql = "SELECT filename, checktxt, digest FROM file WHERE hostname = ? AND filename LIKE ? "
                            " AND filename NOT IN (SELECT filename FROM dirty WHERE myname = ? AND filename LIKE ?)"
                            " ORDER BY filename ASC";
    auto stmt = conn_->prepare(sql);
    stmt->bind(1, g_myhostname);
    stmt->bind(2, (pattern + "%").c_str());
    stmt->bind(3, g_myhostname);
    stmt->bind(4, (pattern + "%").c_str());
    return std::make_unique<DatabaseStatement>(std::move(stmt));
}

std::unique_ptr<DatabaseStatement> DatabaseApi::get_dirty_hosts() {
    const std::string sql = "SELECT peername FROM dirty WHERE myname = ? "
                            "AND peername NOT IN (SELECT host FROM host WHERE status = 1) GROUP BY peername";
    auto stmt = conn_->prepare(sql);
    stmt->bind(1, g_myhostname);
    return std::make_unique<DatabaseStatement>(std::move(stmt));
}

std::unique_ptr<DatabaseStatement> DatabaseApi::list_file(const filename_p& filename, const std::string& myname, const peername_p& peername, int recursive) {
    const std::string sql = "SELECT checktxt, filename FROM file WHERE hostname = ? AND filename LIKE ? ORDER BY filename";
    auto stmt = conn_->prepare(sql);
    stmt->bind(1, myname);
    stmt->bind(2, (filename + (recursive ? "%" : "")).c_str());
    return std::make_unique<DatabaseStatement>(std::move(stmt));
}

std::unique_ptr<DatabaseStatement> DatabaseApi::find_dirty(int (*filter_dirty)(filename_p filename, const char *localname, peername_p peername)) {
    const std::string sql = "SELECT filename, myname, peername FROM dirty WHERE myname = ? "
                            "AND peername NOT IN (SELECT host FROM host WHERE status = 1)";
    auto stmt = conn_->prepare(sql);
    stmt->bind(1, g_myhostname);
    return std::make_unique<DatabaseStatement>(std::move(stmt));
}

std::unique_ptr<DatabaseStatement> DatabaseApi::find_file(const filename_p& pattern, int (*filter_file)(filename_p filename)) {
    const std::string sql = "SELECT filename, mode FROM file where hostname = ? AND (filename = ? or filename like ?)";
    auto stmt = conn_->prepare(sql);
    stmt->bind(1, g_myhostname);
    stmt->bind(2, pattern.c_str());
    stmt->bind(3,(pattern + "/%").c_str());
    return std::make_unique<DatabaseStatement>(std::move(stmt));
}

int DatabaseApi::dir_count(const std::string& dirname) {
    const std::string sql = "SELECT count(*) FROM file WHERE filename like ?";
    auto stmt = conn_->prepare(sql);
    stmt->bind(1, (dirname + "/%").c_str());
    auto rs = stmt->execute_query();
    if (rs->next()) {
        return rs->get_int(1);
    }
    return 0;
}

int DatabaseApi::is_dirty(const peername_p& peername, const filename_p& filename, int* operation, int* mode) {
    const std::string sql = "SELECT op, mode FROM dirty WHERE filename = ? AND peername = ? AND myname = ? LIMIT 1";
    auto stmt = conn_->prepare(sql);
    stmt->bind(1, filename.c_str());
    stmt->bind(2, peername.c_str());
    stmt->bind(3, g_myhostname);
    auto rs = stmt->execute_query();
    if (rs->next()) {
        if (operation) *operation = rs->get_int(1);
        if (mode) *mode = rs->get_int(2);
        return 1;
    }
    return 0;
}

std::string DatabaseApi::escape(const std::string& input) {
    std::string escaped_input = input;
    size_t pos = 0;
    while ((pos = escaped_input.find("'", pos)) != std::string::npos) {
        escaped_input.replace(pos, 1, "''");
        pos += 2;
    }
    return escaped_input;
}

int DatabaseApi::move_file(const filename_p& oldfile, const filename_p& newfile) {
    const std::string sql = "UPDATE file set filename = ? WHERE filename = ?";
    auto stmt = conn_->prepare(sql);
    stmt->bind(1, newfile.c_str());
    stmt->bind(2, oldfile.c_str());
    return static_cast<int>(stmt->execute_update());
}

int DatabaseApi::upgrade_db() {
    return 0;
}

int DatabaseApi::update_format_v1_v2(const filename_p& filename, int recursive, int do_it) {
    return 0;
}

void DatabaseApi::add_hint(const filename_p& filename, int recursive) {
    const std::string sql = "INSERT OR REPLACE INTO hint (filename, recursive) VALUES (?, ?)";
    auto stmt = conn_->prepare(sql);
    stmt->bind(1, filename.c_str());
    stmt->bind(2, recursive);
    stmt->execute_update();
}

std::unique_ptr<DatabaseStatement> DatabaseApi::get_hints() {
    const std::string sql = "SELECT filename, recursive FROM hint";
    auto stmt = conn_->prepare(sql);
    return std::make_unique<DatabaseStatement>(std::move(stmt));
}

void DatabaseApi::remove_hint(const filename_p& filename, int recursive) {
    const std::string sql = "DELETE FROM hint WHERE filename = ? AND recursive = ?";
    auto stmt = conn_->prepare(sql);
    stmt->bind(1, filename.c_str());
    stmt->bind(2, recursive);
    stmt->execute_update();
}

void DatabaseApi::force(const std::string& realname, int recursive) {
    const std::string sql = "UPDATE dirty SET forced = 1 WHERE myname = ? AND filename LIKE ?";
    auto stmt = conn_->prepare(sql);
    stmt->bind(1, g_myhostname);
    stmt->bind(2, realname + (recursive ? "%" : ""));
    stmt->execute_update();
}

void DatabaseApi::mark(const std::set<std::string>& active_peers, const std::string& realname, int recursive) {
    std::ostringstream sql;
    sql << "UPDATE file SET marked = 1 WHERE hostname = ? AND filename LIKE ?";
    if (!active_peers.empty()) {
        sql << " AND peername IN (";
        for (size_t i = 0; i < active_peers.size(); ++i) {
            sql << "?";
            if (i < active_peers.size() - 1) {
                sql << ", ";
            }
        }
        sql << ")";
    }
    auto stmt = conn_->prepare(sql.str());
    int bind_idx = 1;
    stmt->bind(bind_idx++, g_myhostname);
    stmt->bind(bind_idx++, realname + (recursive ? "%" : ""));
    for (const auto& peer : active_peers) {
        stmt->bind(bind_idx++, peer);
    }
    stmt->execute_update();
}

void DatabaseApi::list_hint() {
    const std::string sql = "SELECT recursive, filename FROM hint ORDER BY filename";
    auto stmt = conn_->prepare(sql);
    auto rs = stmt->execute_query();
    while (rs->next()) {
    }
}

void DatabaseApi::list_files(const filename_p& filename) {
    const std::string sql = "SELECT checktxt, filename FROM file WHERE hostname = ? AND filename LIKE ? ORDER BY filename";
    auto stmt = conn_->prepare(sql);
    stmt->bind(1, g_myhostname);
    stmt->bind(2, (filename + "%" ).c_str());
    auto rs = stmt->execute_query();
    while (rs->next()) {
    }
}

void DatabaseApi::list_sync(const peername_p& myname, const peername_p& peername) {
    const std::string sql = "SELECT checktxt, filename FROM file ORDER BY filename";
    auto stmt = conn_->prepare(sql);
    auto rs = stmt->execute_query();
    while (rs->next()) {
    }
}
