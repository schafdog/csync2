/* -*- c-file-style: "k&r"; c-basic-offset: 4; tab-width: 4; indent-tabs-mode: t -*- */

#ifndef DB_SQL_HPP
#define DB_SQL_HPP

#include "csync2.hpp"
#include "database_v2.hpp"
#include "db_api.hpp"
#include "dirty_record.hpp"
#include <memory>

class DbSql : public DbApi {
public:
    DbSql() {};
    DbSql(DatabaseConnection* conn) : DbApi(conn) {};
    ~DbSql() override {};

    int schema_version() override;
    int check_file(filename_p str_filename, std::optional<std::string>& other, const std::string& checktxt,
                   struct stat *file_stat, int *operation, std::optional<std::string>& digest, int ignore_flags, dev_t *old_no) override;
    int is_dirty(peername_p str_peername, filename_p str_filename, int *operation, int *mode) override;
    int list_dirty(const std::set<std::string> &active_peers, const char *realname, int recursive) override;
	std::vector<csync2::FileRecord> non_dirty_files_match(filename_p pattern) override;
	std::vector<std::string> get_dirty_hosts() override;
    int upgrade_db() override;
	std::vector<csync2::Hint> get_hints() override;
    long long remove_hint(filename_p filename, int recursive) override;
    void force(const char *realname, int recursive) override;
    void mark(const std::set<std::string>& active_peerlist, const filename_p realname, int recursive) override;
    void list_hint() override;
    void list_files(filename_p realname) override;
	std::vector<csync2::FileRecord> list_file(filename_p str_filename, const char *myhostname, peername_p str_peername,
								 int recursive) override;
    int move_file(filename_p str_filename, filename_p newname) override;
    void list_sync(peername_p myhostname, peername_p peername) override;
	std::vector<csync2::Action> get_commands() override;
	std::vector<csync2::Action> get_command_filename(filename_p command, const std::string logfile) override;
    int dir_count(const char *dirname) override;
    long long add_hint(filename_p filename, int recursive) override;
    int remove_dirty(peername_p peername, filename_p filename, int recursive) override;
    int remove_dirty_new(peername_p peername, filename_p filename, int recursive);
	vector<DirtyRecord> find_dirty( int (*filter)(filename_p filename, peername_p localname, peername_p peername))
		override;
    vector<FileRecord> find_file(filename_p str_pattern, int (*filter_file)(filename_p filename)) override;
    long long remove_file(filename_p str_filename, int recursive) override;
    long long delete_file(filename_p str_filename, int recursive) override;
    void clear_operation(const char *myhostname, peername_p peername,
                           filename_p filename /* , int recursive */) override;
    void  get_dirty_by_peer_match(const char *myhostname, peername_p str_peername, int recursive,
								  const std::set<std::string> &patlist,
								  int (*get_dirty_by_peer)(filename_p str_filename, filename_p pattern, int rec),
								  std::vector<csync2::DirtyRecord>& result) override;
    vector<DirtyRecord> get_old_operation(const std::string& checktxt,
										  peername_p str_peername,
										  filename_p str_filename,
										  const char *device, const char *ino) override;
    int add_dirty(const char *file_new, int new_force,
                  const char *myhostname, peername_p str_peername,
                  const char *op_str, const std::string& checktxt, const char *dev, const char *ino,
                  const char *result_other,
                  operation_t op, int mode, int mtime) override;
    int update_dev_no(filename_p filename, int recursive, dev_t old_no, dev_t new_no) override;
    long long update_file(filename_p filename, const std::string& checktxt, struct stat *file_stat,
                      const char *digest) override;
    long long insert_file(filename_p filename, const std::string& checktxt, struct stat *file_stat,
                      const char *digest) override;
    int insert_update_file(filename_p filename, const std::string& checktxt, struct stat *file_stat,
                             const char *digest) override;
    int check_delete(filename_p str_filename, int recursive, int init_run) override;

    int add_action(filename_p filename, const std::string& prefix_cmd, const std::string& logfile) override;
    int del_action(filename_p filename, const std::string& prefix_cmd) override;
    int remove_action_entry(filename_p filename, const std::string& command, const std::string& logfile) override;

    int update_dirty_hardlinks(peername_p peername, filename_p filename, struct stat *st) override;
    vector<FileRecord> check_file_same_dev_inode(filename_p str_filename, const std::string& checktxt, const char *digest,
												 struct stat *st, peername_p str_peername) override;
    vector<DirtyRecord> check_dirty_file_same_dev_inode(peername_p peername, filename_p filename,
														const std::string& checktxt, const char *digest,
														struct stat *st) override;
    // unused:
    long long db_sql_move_file_to_dirty(const char *file, int recursive, const char *peername);
};
#endif
