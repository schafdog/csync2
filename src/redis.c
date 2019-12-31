
#include "csync2.h"
#include "redis.h"
#include <hiredis/hiredis.h>
#include <stdio.h>
#include <time.h>

redisContext *redis_context = NULL;
redisReply *redis_reply = NULL;
int isunix = 0;

int lock_time = 60;

int csync_redis_connect(char *redis) {
    if (redis == NULL)
	return -1;
    char *pos = strchr(redis, ':');
    int port = 6379;
    if (pos != NULL) {
	*pos = 0;
	int tmp_port = atoi(pos+1);
	if (tmp_port > 0)
	    port = tmp_port;
    };
    csync_debug(1, "Connecting to redis %s:%d\n", redis, port);
    struct timeval timeout = { 1, 500000 }; // 1.5 seconds
    if (isunix) {
        redis_context = redisConnectUnixWithTimeout(redis, timeout);
    } else {
        redis_context = redisConnectWithTimeout(redis, port, timeout);
    }
    if (redis_context == NULL || redis_context->err) {
        if (redis_context) {
            csync_debug(0, "Connection error: %s\n", redis_context->errstr);
            redisFree(redis_context);
	    redis_context = NULL;
        } else {
            csync_debug(0, "Connection error: can't allocate redis context\n");
        }
        return 1;
    }
    return 0;
}

time_t csync_redis_lock(filename_p filename) {
    if (redis_context == NULL)
	return 0;
    time_t unix_time = time(NULL);
    csync_debug(1, "Locking %s\n", filename);
    redis_reply = redisCommand(redis_context, "SET %s %d NX EX %d", filename, unix_time+lock_time, lock_time);
    if (strcmp(redis_reply->str, "OK")) {
	unix_time = -1;
    }
    csync_debug(2, "csync_redis_lock: %s %s %d\n", redis_reply->str, filename, unix_time);
    freeReplyObject(redis_reply);
    return unix_time;
}

void csync_redis_unlock(filename_p filename, time_t unix_time) {
    if (redis_context == NULL)
	return;
    time_t now = time(NULL);
    if (now > unix_time + lock_time) {
	csync_debug(0, "operation took longer than lock time: %d (%d)\n", time - unix_time, lock_time);
    } else {
	csync_debug(1, "Unlocking file: %s\n", filename);
	redis_reply = redisCommand(redis_context, "DEL %s", filename);
	csync_debug(2, "csync_redis_unlock: %d %s %d\n", redis_reply->integer, filename, unix_time);
	if (redis_reply->integer != 1)
	    csync_debug(0, "redis_unlock failed to delete one key: %d\n", redis_reply->integer);
	freeReplyObject(redis_reply);
    }
}

int csync_redis_unlock_status(filename_p filename, time_t lock_time, int status) {
    csync_redis_unlock(filename, lock_time);
    return status;
}

void csync_redis_close() {
    csync_debug(3, "Redis closing: %p\n", redis_context);
    if (redis_context)
	redisFree(redis_context);
    redis_context = NULL;
    csync_debug(3, "Redis closed.\n");
}
