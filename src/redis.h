#ifndef REDIS_H
#define REDIS_H

int csync_redis_connect(char *redis);
time_t csync_redis_lock(filename_p filename);
void csync_redis_unlock(filename_p filename, time_t unix_time);
int clear_redis_lock(filename_p filename, time_t unix_time, int status);
void csync_redis_close();

#endif
