/*  -*- c-file-style: "k&r"; c-basic-offset: 4; tab-width: 4; indent-tabs-mode: t -*-
 *
 */
#ifndef ERROR_HPP
#define ERROR_HPP

/* error.cpp */
#define csync_crit(level, fmt, ...)   csync_crit_cpp(level, fmt __VA_OPT__(, ) __VA_ARGS__)
#define csync_debug(level, fmt, ...)  csync_debug_cpp(level,fmt __VA_OPT__(, ) __VA_ARGS__)
#define csync_info(level, fmt, ...)   csync_info_cpp(level, fmt __VA_OPT__(, ) __VA_ARGS__)
#define csync_warn(level, fmt, ...)   csync_warn_cpp(level, fmt __VA_OPT__(, ) __VA_ARGS__)
#define csync_error(level, fmt, ...)  csync_error_cpp(level, fmt __VA_OPT__(, ) __VA_ARGS__)
#define csync_fatal(fmt, ...)         csync_fatal_cpp(fmt __VA_OPT__(, ) __VA_ARGS__)

extern "C" {
#include "error.h"
}

#endif /* ERROR_HPP */
