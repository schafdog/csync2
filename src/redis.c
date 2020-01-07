
#include "csync2.h"
#include "redis.h"
#include "buffer.h"
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
    struct timeval timeout = { 5, 0 }; // 5 seconds
    if (isunix) {
        redis_context = redisConnectUnixWithTimeout(redis, timeout);
    } else {
        redis_context = redisConnectWithTimeout(redis, port, timeout);
    }
    if (redis_context == NULL || redis_context->err) {
        if (redis_context) {
            csync_debug(0, "Redis Connection error: %s\n", redis_context->errstr);
            redisFree(redis_context);
	    redis_context = NULL;
        } else {
            csync_debug(0, "Redis Connection error: can't allocate redis context\n");
        }
        return 1;
    }
    return 0;
}

const char *not_null(const char *str) {
    return str ? str : "";
}

const char *not_null_default(const char *str, const char *if_null) {
    return str ? str : if_null;
}

const char *build_cmd(const char *cmd, const char *key, const char *domain, const char *value, const char *flags, BUF_P buffer) {
    int rc = -1;
    char *spacer = "";
    if (domain && domain[0] != 0) {
	spacer = ":";
    }
    char *str = buffer_malloc(buffer,
			      strlen(not_null(domain)) + strlen(key) +
			      strlen(spacer) + strlen(not_null(value)) +
			      strlen(not_null(flags)) +100);
    sprintf(str, "%s \"%s%s%s\" %s %s ", cmd, not_null(domain), spacer, key, not_null(value), not_null(flags));
    return str;
}

const char *redis_str(redisReply *redis_reply) {
    return redis_reply ? redis_reply->str : "<no response>";
}
    
time_t csync_redis_get_custom(const char *key, const char *domain) {
    BUF_P buffer = buffer_init();

    const char *cmd = build_cmd("GET", key, domain, "", "", buffer);
    redis_reply = redisCommand(redis_context, cmd);
    csync_debug(1, "Redis reply: %s %s\n", cmd, redis_str(redis_reply));
    buffer_destroy(buffer);
    
    if (redis_reply) {
	if (redis_reply->str) {
	    int unix_time = atoi(redis_reply->str); 
	    return unix_time;
	}
    }
    return -1;
}

time_t csync_redis_get(const char *key) {
    return csync_redis_get_custom(key, NULL);
}

int csync_redis_set(const char *key, const char *domain, const char *flags, const char *value) {
    BUF_P buffer = buffer_init();

    const char *cmd = build_cmd("SET", key, domain, value, flags, buffer);
    redis_reply = redisCommand(redis_context, cmd); 
    csync_debug(1, "Redis reply: %s %s\n", cmd, redis_str(redis_reply));
    buffer_destroy(buffer);

    if (!redis_reply || !redis_reply->str || strcmp(redis_reply->str, "OK")) {
	return -1;
    }
    return 1;
}

int csync_redis_set_int(const char *key, const char *domain, const char *flags, int number) {
    char value[20];
    sprintf(value, "%d", number);
    return csync_redis_set(key, domain, flags, value);
}
    
time_t csync_redis_lock_custom(filename_p filename, int custom_lock_time, const char *domain) {
    BUF_P buffer = buffer_init();

    if (redis_context == NULL)
	return 0;
    time_t unix_time = time(NULL);
    if (domain)
	csync_debug(1, "Locking '%s:%s'\n", domain, filename);
    else
	csync_debug(1, "Locking '%s'\n", filename);
    char flags[20];
    sprintf(flags, "NX EX %d", custom_lock_time);
    char value[20];
    sprintf(value, "\"%ld\"", unix_time);
    const char *cmd = build_cmd("SET", filename, domain, value, flags, buffer);
    redis_reply = redisCommand(redis_context, cmd);
    csync_debug(1, "Redis reply: %s %s\n", cmd, redis_str(redis_reply));
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


int csync_redis_del_custom(const char *key, const char *domain) {
    BUF_P buffer = buffer_init();
    int rc = 0; 

    const char *cmd = build_cmd("DEL", key, domain, "", "", buffer);
    redis_reply = redisCommand(redis_context, "%s", cmd);
    csync_debug(1, "%s %s\n", cmd, redis_str(redis_reply));  
    if (redis_reply == NULL || redis_reply->integer != 1) {
	csync_debug(2, "csync_redis_del failed to delete one key: %d\n", redis_reply ? redis_reply->integer : -1);
    } else
	rc = redis_reply->integer;
    buffer_destroy(buffer);
    freeReplyObject(redis_reply);
    return rc;
}

int csync_redis_del(const char *key) {
    return csync_redis_del_custom(key, NULL);
}
    
void csync_redis_unlock(filename_p filename, time_t unix_time) {
    if (redis_context == NULL)
	return;
    time_t now = time(NULL);
    if (unix_time > 0 && now > unix_time + lock_time) {
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
