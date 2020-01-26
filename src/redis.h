#ifndef REDIS_H
#define REDIS_H

int csync_redis_connect(char *redis);

time_t csync_redis_get(const char *key);
time_t csync_redis_get_custom(const char *key, const char *domain);

int csync_redis_set(const char *key, const char *domain, const char *value, int nx, int expire);
int csync_redis_set_int(const char *key, const char *domain, int number, int nx, int expire);

int csync_redis_del(const char *filename);
int  csync_redis_del_custom(const char *key, const char *domain);

time_t csync_redis_lock_custom(filename_p filename, int custom_lock_time, const char *domain);
time_t csync_redis_lock(filename_p filename);
void csync_redis_unlock(filename_p filename, time_t unix_time);
int csync_redis_unlock_status(filename_p filename, time_t unix_time, int status);

void csync_redis_close();

#endif
