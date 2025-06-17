/* -*- c-file-style: "k&r"; c-basic-offset: 4; tab-width: 4; indent-tabs-mode: t -*-
 *
 */
#ifndef REDIS_H
#define REDIS_H

int csync_redis_connect(char *redis);
int csync_redis_check_connection(void);

time_t csync_redis_get(const char *key);
time_t csync_redis_get_custom(const char *key, const char *domain);
time_t csync_redis_get_custom(const std::string& key, const std::string& domain);

int csync_redis_set(const char *key, const char *domain, const char *value, int nx, int expire);
int csync_redis_set_int(const char *key, const char *domain, int number, int nx, int expire);

int csync_redis_del(const char *filename);
int  csync_redis_del_custom(const char *key, const char *domain);
int  csync_redis_del_custom(const std::string& key, const std::string& domain);

time_t csync_redis_lock_custom(filename_p filename, int custom_lock_time, const char *domain);
time_t csync_redis_lock(filename_p filename);
void csync_redis_unlock(filename_p filename, time_t unix_time);
int csync_redis_unlock_status(filename_p filename, time_t unix_time, int status);

void csync_redis_close(void);

#endif
