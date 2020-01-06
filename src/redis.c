
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

time_t csync_redis_get(const char *key) {
    redis_reply = redisCommand(redis_context, "GET %s", key);
    if (redis_reply && redis_reply->integer)
	return redis_reply->integer;
    return -1;
}

time_t csync_redis_lock_custom(filename_p filename, int custom_lock_time, char *domain) {
    if (redis_context == NULL)
	return 0;
    time_t unix_time = time(NULL);
    if (domain)
	csync_debug(1, "Locking '%s:%s'\n", domain, filename);
    else
	csync_debug(1, "Locking '%s'\n", filename);
    redis_reply = redisCommand(redis_context, "SET %s%s%s %d NX EX %d",
			       domain ? domain : "", domain ? ":" : "", filename,
			       unix_time+lock_time, lock_time);
    if (!redis_reply || !redis_reply->str || strcmp(redis_reply->str, "OK")) {
	// Failed to get OK reply
	unix_time = -1;
    }
    csync_debug(2, "csync_redis_lock: %s %s %d\n", redis_reply ? redis_reply->str : "NULL", filename, unix_time);
    if (redis_reply)
	freeReplyObject(redis_reply);
    return unix_time;
}

time_t csync_redis_lock(filename_p filename) {
    return csync_redis_lock_custom(filename, lock_time, NULL);
}

void csync_redis_del(filename_p filename) {
    csync_debug(1, "Deleting key '%s'\n", filename);
    redis_reply = redisCommand(redis_context, "DEL %s", filename);
    if (redis_reply == NULL || redis_reply->integer != 1)
	csync_debug(2, "csync_redis_del failed to delete one key: %d\n", redis_reply ? redis_reply->integer : -1);
    freeReplyObject(redis_reply);
}

void csync_redis_unlock(filename_p filename, time_t unix_time) {
    if (redis_context == NULL)
	return;
    time_t now = time(NULL);
    if (unix_time != 0 && now > unix_time + lock_time) {
	csync_debug(0, "operation took longer than lock time: %d (%d)\n", now - unix_time, lock_time);
    } else {
	csync_redis_del(filename);
    }
}

int csync_redis_unlock_status(filename_p filename, time_t lock_time, int status) {
    csync_redis_unlock(filename, lock_time);
    return status;
}

void csync_redis_close() {
    if (redis_context)
	redisFree(redis_context);
}
