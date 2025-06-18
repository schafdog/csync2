/*  -*- c-file-style: "k&r"; c-basic-offset: 4; tab-width: 4; indent-tabs-mode: t -*-
 *
 */
#ifndef ERROR_H
#define ERROR_H

/* error.c */
void csync_printtime(void);
void csync_printtotaltime(void);
void csync_log_c(int syslog_priority, int lv, const char *fmt, ...);

#define csync_debug_ping(N) \
csync_debug_c(N, "--> %s %d\n", __FILE__, __LINE__)

#define csync_fatal_c(fmt, ...) do { \
	csync_log_c(LOG_CRIT, 0,fmt __VA_OPT__(, ) __VA_ARGS__);	\
	exit(1);							\
} while(0)

#define csync_fatal(fmt, ...) do {				\
	csync_log_c(LOG_CRIT, 0,fmt __VA_OPT__(, ) __VA_ARGS__);	\
	exit(1);							\
} while(0)

#define csync_crit_c(level, fmt, ...)  csync_log_c(LOG_CRIT, level, fmt __VA_OPT__(, ) __VA_ARGS__)
#define csync_debug_c(level, fmt, ...) csync_log_c(LOG_DEBUG, level, fmt __VA_OPT__(, ) __VA_ARGS__)
#define csync_info_c(level, fmt, ...)  csync_log_c(LOG_INFO, level, fmt __VA_OPT__(, ) __VA_ARGS__)
#define csync_warn_c(level, fmt, ...)  csync_log_c(LOG_WARNING, level, fmt __VA_OPT__(, ) __VA_ARGS__)
#define csync_error_c(level, fmt, ...) csync_log_c(LOG_ERR, level, fmt __VA_OPT__(, ) __VA_ARGS__)

#define csync_crit(level, fmt, ...)   csync_log_c(LOG_CRIT, level, fmt __VA_OPT__(, ) __VA_ARGS__)
#define csync_debug(level, fmt, ...)  csync_log_c(LOG_DEBUG, level,fmt __VA_OPT__(, ) __VA_ARGS__)
#define csync_info(level, fmt, ...)   csync_log_c(LOG_INFO, level, fmt __VA_OPT__(, ) __VA_ARGS__)
#define csync_warn(level, fmt, ...)   csync_log_c(LOG_WARNING, level, fmt __VA_OPT__(, ) __VA_ARGS__)
#define csync_error(level, fmt, ...)  csync_log_c(LOG_ERR, level, fmt __VA_OPT__(, ) __VA_ARGS__)

#endif

