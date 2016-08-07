#ifndef ERROR_H
#define ERROR_H

/* error.c */

void csync_printtime();
void csync_printtotaltime();
int  csync_syslog_priority(int level);
void csync_log(int priority, int lv, const char *fmt, ...);

#define csync_debug_ping(N) \
csync_debug(N, "--> %s %d\n", __FILE__, __LINE__)

#define csync_fatal(fmt, ...) {\
	csync_log(LOG_CRIT, 0,fmt, ##__VA_ARGS__);	\
	exit(1);							\
} while(0)

#define csync_crit(level, fmt, ...)  csync_log(LOG_CRIT, level,fmt, ##__VA_ARGS__)

#define csync_debug(level, fmt, ...) csync_log(LOG_DEBUG, level,fmt, ##__VA_ARGS__)

#define csync_info(level, fmt, ...)  csync_log(LOG_INFO, level,fmt, ##__VA_ARGS__)

#define csync_warn(level, fmt, ...)  csync_log(LOG_WARNING, level,fmt, ##__VA_ARGS__)
#define csync_error(level, fmt, ...)  csync_log(LOG_ERR, level,fmt, ##__VA_ARGS__)

/* asprintf with test for no memory */


#endif

