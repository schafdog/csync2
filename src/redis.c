/* -*- c-file-style: "k&r"; c-basic-offset: 4; tab-width: 4; indent-tabs-mode: t -*-
 *
 */
#include "csync2.h"
#include "redis.h"
#include "buffer.h"
#include <hiredis/hiredis.h>
#include <stdio.h>
#include <time.h>
#include <poll.h>

redisContext *redis_context = NULL;
redisReply *redis_reply = NULL;
int isunix = 0;

int csync_redis_connect(char *redis) {
	if (redis == NULL)
		return -1;
	char *pos = strchr(redis, ':');
	int port = 6379;
	if (pos != NULL) {
		*pos = 0;
		int tmp_port = atoi(pos + 1);
		if (tmp_port > 0)
			port = tmp_port;
	};
	csync_debug(3, "Connecting to redis %s:%d\n", redis, port);
	struct timeval timeout = { 5, 0 }; // 5 seconds
	if (isunix) {
		redis_context = redisConnectUnixWithTimeout(redis, timeout);
	} else {
		redis_context = redisConnectWithTimeout(redis, port, timeout);
	}
	if (redis_context == NULL || redis_context->err) {
		if (redis_context) {
			csync_debug(0, "Redis Connection error: %s\n",  redis_context->errstr);
			redisFree(redis_context);
			redis_context = NULL;
		} else {
			csync_debug(0, "Redis Connection error: can't allocate redis context\n");
		}
		return 1;
	}
	return 0;
}

static int csync_redis_reconnect(void) {
	return csync_redis_connect(csync_redis);
}

static const char* not_null(const char *str) {
	return str ? str : "";
}

static const char* not_null_default(const char *str, const char *if_null) {
	return str ? str : if_null;
}

int csync_redis_check_connection(void) {
	struct pollfd fds;
	fds.fd = redis_context->fd;
	fds.events = POLLOUT;
	if ((poll(&fds, 1, 0) != 1) || (fds.revents & POLLHUP)) {
		redisFree(redis_context);
		redis_context = NULL;
		return 0;
	}
	return 1;
}

static const char* build_key(const char *key, const char *domain, BUF_P buffer) {
	const char *spacer = "";
	if (domain && domain[0] != 0) {
		spacer = ":";
	}
	char *str = buffer_malloc(buffer, strlen(not_null(domain)) + strlen(key) + strlen(spacer) + 100);
	sprintf(str, "%s%s%s", not_null(domain), spacer, key);
	return str;
}

static const char* redis_str(redisReply *reply) {
	return reply ? reply->str : "<no response>";
}

time_t csync_redis_get_custom(const char *key, const char *domain) {
	if (redis_context == NULL)
		return 0;
	BUF_P buffer = buffer_init();

	const char *domain_key = build_key(key, domain, buffer);
	const char *argv[] = { "GET", domain_key };
	redis_reply = redisCommandArgv(redis_context, 2, argv, NULL);
	csync_debug(3, "Redis reply: GET '%s' -> %s\n", domain_key, redis_str(redis_reply));
	buffer_destroy(buffer);

	if (redis_reply) {
		if (redis_reply->str) {
			int unix_time = atoi(redis_reply->str);
			return unix_time;
		}
	} else {
		csync_error(1, "No redis response: %s", redis_context->err);
		if (!csync_redis_check_connection()) {
			//Dirty hack
			csync_redis_reconnect();
			return -2;
		}
			
	}
	return -1;
}

time_t csync_redis_get(const char *key) {
	return csync_redis_get_custom(key, NULL);
}

int csync_redis_set(const char *key, const char *domain, const char *value, int nx, int expire) {
	if (redis_context == NULL)
		return 0;
	BUF_P buffer = buffer_init();
	const char *domain_key = build_key(key, domain, buffer);
	const char *argv[] = { "SET", domain_key, value, NULL, NULL, NULL };
	int argc = 3;
	if (nx) {
		argv[argc] = "NX";
		argc++;
	}
	char time[20];
	if (expire > 0) {
		argv[argc] = "EX";
		argc++;
		sprintf(time, "%d", expire);
		argv[argc] = time;
		argc++;

	}
	redis_reply = redisCommandArgv(redis_context, argc, argv, NULL);
	
	csync_debug(3, "Redis reply: SET '%s' '%s' %s %s %s -> %s\n", domain_key, value, nx ? "NX" : "",
			expire > 0 ? "EX" : "", expire > 0 ? time : "", redis_str(redis_reply));

	buffer_destroy(buffer);

	if (redis_reply == NULL) {
		csync_error(1, "No redis response: %s", redis_context->err);
		if (!csync_redis_check_connection()) {
			csync_redis_reconnect();
		}
		return -2;
	}

	if (!redis_reply->str || strcmp(redis_reply->str, "OK")) {
		return -1;
	}
	return 1;
}

extern int csync_zero_mtime_debug;

int csync_redis_set_int(const char *key, const char *domain, int number, int nx, int expire) {
	char value[20];
	sprintf(value, "%d", number);
	return csync_redis_set(key, domain, value, nx, expire);
}

time_t csync_redis_lock_custom(filename_p filename, int custom_lock_time, const char *domain) {
	if (redis_context == NULL)
		return 0;
	time_t unix_time = time(NULL);
	if (domain)
		csync_debug(2, "Locking '%s:%s'\n", domain, filename);
	else
		csync_debug(2, "Locking '%s'\n", filename);
	int rc = csync_redis_set_int(filename, domain, unix_time, 1, custom_lock_time);
	if (rc < 0) {
		// Failed to get OK reply
		unix_time = -1;
	}
	if (!csync_zero_mtime_debug || unix_time == -1)
		csync_info(unix_time == -1 ? 1 : 2, "csync_redis_lock: %s %s:%s %d %d\n",
				   rc == 1 ? "OK" : "ERR", domain, filename, unix_time, custom_lock_time);
	return unix_time;
}

time_t csync_redis_lock(filename_p filename) {
	return csync_redis_lock_custom(filename, csync_lock_time, NULL);
}

int csync_redis_del_custom(const char *key, const char *domain) {
	if (redis_context == NULL)
		return 0;

	BUF_P buffer = buffer_init();
	int rc = 0;

	const char *domain_key = build_key(key, domain, buffer);
	csync_debug(3, "Deleting key '%s'\n", domain_key);
	const char *argv[] = { "DEL", domain_key };

	redis_reply = redisCommandArgv(redis_context, 2, argv, NULL);
	if (redis_reply == NULL) {
		csync_error(1, "No redis response: %s\n", redis_context->err);
		if (!csync_redis_check_connection()) {
			csync_redis_reconnect();
		}
		return -2;
	}
	
	csync_debug(3, "Redis Reply: DEL '%s' -> %d\n", domain_key, redis_reply->integer);
	if (redis_reply->integer != 1) {
		csync_error(1, "csync_redis_del failed to delete key: %s %d\n", domain_key, redis_reply->integer);
	} else
		rc = redis_reply->integer;
	buffer_destroy(buffer);
	freeReplyObject(redis_reply);
	return rc;
}

int csync_redis_del(const char *key) {
	return csync_redis_del_custom(key, NULL);
}

void csync_redis_unlock(filename_p lock, time_t unix_time) {
	if (redis_context == NULL)
		return;
	time_t now = time(NULL);
	// Not working if custom lock time
	if (unix_time > 0 && now > unix_time + csync_lock_time) {
		csync_debug(1, "operation %s took longer than lock time: %d (%d)\n", lock, now - unix_time, csync_lock_time);
	} else {
		csync_redis_del(lock);
	}
}

int csync_redis_unlock_status(filename_p filename, time_t lock_time, int status) {
	csync_redis_unlock(filename, lock_time);
	return status;
}

void csync_redis_close(void) {
	csync_debug(4, "Redis closing.\n");
	if (redis_context)
		redisFree(redis_context);
	redis_context = NULL;
	csync_debug(3, "Redis closed.\n");
}
