/* -*- c-file-style: "k&r"; c-basic-offset: 4; tab-width: 4; indent-tabs-mode: t -*- */
#ifndef DB_API_H
#define DB_API_H

#include <set>
#include <string>
#include <sys/stat.h>

#include "csync2.hpp"
#include "database_v2.hpp"
#include "error.hpp"

#define DB_SQLITE2 1
#define DB_SQLITE3 2
#define DB_MYSQL   3
#define DB_PGSQL   4

#define DB_OK                   0
#define DB_ERROR               -1
#define DB_BUSY                -2
#define DB_NO_CONNECTION       -3
#define DB_NO_CONNECTION_REAL  -4
#define DB_ROW  -100
#define DB_DONE -101

#define FILE_LENGTH 500
#define HOST_LENGTH  50
#define CHECKTXT_LENGTH 100
#define DIGEST_LENGTH 100

#ifdef __DARWIN_C_LEVEL
#define SO_FILE_EXT ".dylib"
#else
#define SO_FILE_EXT ".so"
#endif

// Forward declarations to avoid circular includes
struct textlist;
typedef struct textlist *textlist_p;

class DbApi {
public:
    DbApi() = default;
        DbApi(DatabaseConnection* conn) : private_data_deprecated(conn->get_private_data()), conn_(conn) {}
    virtual ~DbApi() = default;

    virtual int exec(const char *exec) = 0;
    // virtual void logger(int priority, int lv, const char *fmt, ...) = 0;
    virtual const char* errmsg() = 0;

    virtual void mark(const std::set<std::string>& active_peers, const filename_p realname, int recursive) = 0;

    // Update functions (deprecated)
    virtual int upgrade_to_schema(int version) = 0;
    virtual int schema_version() = 0;
    // query functions
    virtual int list_dirty(const std::set<std::string>& active_peers, const char *realname, int recursive) = 0;
    virtual void list_hint() = 0;
    virtual void list_files(filename_p filename) = 0;
    virtual textlist_p list_file(filename_p filename, const char *myname, peername_p peername,
                                 int recursive) = 0;
    virtual void list_sync(peername_p myname, peername_p peername) = 0;

    virtual int is_dirty(filename_p filename, peername_p peername, int *operation, int *mode) = 0;
    virtual void force(const char *realname, int recursive) = 0;
    virtual int upgrade_db() = 0;
    //virtual int update_format_v1_v2(filename_p filename, int recursive, int do_it) = 0;
    virtual long long add_hint(filename_p filename, int recursive) = 0;
    virtual long long remove_hint(filename_p filename, int recursive) = 0;
    virtual long long remove_file(filename_p filename, int recursive) = 0;
    virtual long long delete_file(filename_p filename, int recursive) = 0;
    virtual textlist_p find_dirty(
        int (*filter_dirty)(filename_p filename, peername_p localname, peername_p peername)) = 0;
    virtual textlist_p find_file(filename_p pattern, int (*filter_file)(filename_p filename)) = 0;
    virtual int add_dirty(const char *file_new, int csync_new_force, const char *myname, peername_p peername,
                          const char *operation, const std::string& checktxt, const char *dev, const char *ino, const char *result_other,
                          int op, int mode, int mtime) = 0;

    virtual int remove_dirty(peername_p peername, filename_p filename, int recursive) = 0;

    virtual textlist_p get_dirty_by_peer_match(const char *myname, peername_p peername, int recursive,
                                               const std::set<std::string>& patlist,
                                               int (*match_func)(filename_p filename, filename_p pattern, int recursive)) = 0;

    virtual void clear_operation(const char *myname, peername_p peername,
                                 filename_p filename /*, int recursive */) = 0;

    virtual textlist_p get_old_operation(const std::string& checktxt, peername_p peername, filename_p filename,
                                         const char *device, const char *ino) = 0;

    virtual textlist_p get_commands() = 0;
    virtual textlist_p get_command_filename(filename_p filename, const char *logfile) = 0;
    // virtual textlist_p get_hosts() = 0;
    virtual textlist_p get_hints() = 0;

    virtual long long update_file(filename_p filename, const std::string& checktxt,
                                  struct stat *file_stat, const char *digest) = 0;
    virtual long long insert_file(filename_p filename, const std::string& checktxt,
                                  struct stat *file_stat, const char *digest) = 0;
    virtual int insert_update_file(filename_p filename, const std::string& checktxt, struct stat *file_stat,
                                   const char *digest) = 0;
    virtual int update_dev_no(filename_p filename, int recursive, dev_t old_no, dev_t new_no) = 0;
    virtual int check_delete(filename_p filename, int recursive, int init_run) = 0;

    virtual int del_action(filename_p filename, const std::string& prefix_command) = 0;
    virtual int add_action(filename_p filename, const std::string& prefix_command, const std::string &logfile) = 0;
    virtual int remove_action_entry(filename_p filename, const std::string& command, const std::string& logfile) = 0;

    virtual int check_file(filename_p filename, std::optional<std::string>& other, const std::string& checktxt,
                           struct stat *file_stat, int *operation, std::optional<std::string> &digest, int flags, dev_t *old_no) = 0;

    virtual textlist_p check_file_same_dev_inode(filename_p filename, const std::string& checktxt, const char *digest,
                                                 struct stat *st, peername_p peername) = 0;
    virtual textlist_p check_dirty_file_same_dev_inode(peername_p peername, filename_p filename,
                                                       const std::string& checktxt, const char *digest, struct stat *st) = 0;
    virtual textlist_p non_dirty_files_match(filename_p pattern) = 0;
    virtual textlist_p get_dirty_hosts() = 0;
    virtual int dir_count(const char *dirname) = 0;
    virtual int move_file(filename_p oldfile, filename_p newfile) = 0;
    virtual int update_dirty_hardlinks(peername_p peername, filename_p newfile, struct stat *st) = 0;
    // virtual long get_affected_rows() = 0;
	virtual std::string getIntType() { return ""; };
	virtual std::string getTextType() { return ""; };
    int version;
    long affected_rows;
    void *private_data_deprecated;
    DatabaseConnection *conn_;
};

DbApi *db_create_api(const char *conn_str);
DbApi *db_create_api(std::unique_ptr<DatabaseConnection>& conn);

// For compatibility
typedef DbApi* db_conn_p;

int db_open(const char *file, int type, db_conn_p *db);
void db_close(void);
void db_conn_close(db_conn_p conn);

void db_set_logger(db_conn_p conn, void (*logger)(int priority, int lv, const char *fmt, ...));
int db_schema_version(db_conn_p db);
int db_upgrade_to_schema(db_conn_p db, int version);
const char* db_errmsg(db_conn_p conn);
//const char* db_escape(db_conn_p conn, const char *string);
//const char* db_escape(db_conn_p conn, filename_p string);

#endif
