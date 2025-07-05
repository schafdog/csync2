/* -*- c-file-style: "k&r"; c-basic-offset: 4; tab-width: 4; indent-tabs-mode: t -*- */

#ifndef DB_SQL_HPP
#define DB_SQL_HPP

#include "csync2.hpp"
#include "db_api.hpp"

class DbSql : public DbApi {
public:
    int schema_version() override;
    int check_file(const char *file, const char *encoded, char **other, char *checktxt,
                   struct stat *file_stat, BUF_P buffer, int *operation, char **digest, int ignore_flags, dev_t *old_no) override;
    int is_dirty(peername_p str_peername, filename_p str_filename, int *operation, int *mode) override;
    int list_dirty(const std::set<std::string> &active_peers, const char *realname, int recursive) override;
    textlist_p non_dirty_files_match(filename_p pattern) override;
    textlist_p get_dirty_hosts() override;
    int upgrade_db() override;
    textlist_p get_hints() override;
    int update_format_v1_v2(filename_p filename, int recursive, int do_it) override;
    void remove_hint(filename_p filename, int recursive) override;
    void force(const char *realname, int recursive) override;
    void mark(const std::set<std::string>& active_peerlist, const char *realname, int recursive) override;
    void list_hint() override;
    void list_files(filename_p realname) override;
    textlist_p list_file(filename_p str_filename, const char *myhostname, peername_p str_peername,
                           int recursive) override;
    int move_file(filename_p str_filename, filename_p newname) override;
    void list_sync(peername_p myhostname, peername_p peername) override;
    textlist_p get_commands() override;
    textlist_p get_command_filename(filename_p command, const char *logfile) override;
    int dir_count(const char *dirname) override;
    void add_hint(filename_p filename, int recursive) override;
    void remove_dirty(peername_p peername, filename_p filename, int recursive) override;
    textlist_p find_dirty(
        int (*filter)(filename_p str_filename, const char *localname, peername_p str_peername)) override;
    textlist_p find_file(filename_p str_pattern, int (*filter_file)(filename_p filename)) override;
    void remove_file(filename_p str_filename, int recursive) override;
    void clear_operation(const char *myhostname, peername_p peername,
                           filename_p filename /* , int recursive */) override;
    textlist_p get_dirty_by_peer_match(const char *myhostname, peername_p str_peername, int recursive,
                                         const std::set<std::string> &patlist,
                                         int (*get_dirty_by_peer)(filename_p str_filename, filename_p pattern, int recursive)) override;
    textlist_p get_old_operation(const char *checktxt,
                                   peername_p str_peername,
                                   filename_p str_filename,
                                   const char *device, const char *ino, BUF_P buffer) override;
    int add_dirty(const char *file_new, int new_force,
                  const char *myhostname, peername_p str_peername,
                  const char *op_str, const char *checktxt, const char *dev, const char *ino,
                  const char *result_other,
                  operation_t op, int mode, int mtime) override;
    int update_dev_no(filename_p encoded, int recursive, dev_t old_no, dev_t new_no) override;
    int update_file(filename_p encoded, const char *checktxt_encoded, struct stat *file_stat,
                      const char *digest) override;
    int insert_file(filename_p encoded, const char *checktxt_encoded, struct stat *file_stat,
                      const char *digest) override;
    int insert_update_file(filename_p encoded, const char *checktxt_encoded, struct stat *file_stat,
                             const char *digest) override;
    int check_delete(filename_p str_filename, int recursive, int init_run) override;
    int add_action(filename_p filename, const char *prefix_cmd, const char *logfile) override;
    int del_action(filename_p filename, const char *prefix_cmd) override;
    int remove_action_entry(filename_p filename, const char *command, const char *logfile) override;
    void update_dirty_hardlinks(peername_p peername, filename_p filename, struct stat *st) override;
    textlist_p check_file_same_dev_inode(filename_p str_filename, const char *checktxt, const char *digest,
                                           struct stat *st, peername_p str_peername) override;
    textlist_p check_dirty_file_same_dev_inode(peername_p peername, filename_p filename,
                                                 const char *checktxt, const char *digest, struct stat *st) override;
};
#endif
