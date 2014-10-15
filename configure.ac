# csync2 - cluster synchronization tool, 2nd generation
# LINBIT Information Technologies GmbH <http://www.linbit.com>
# Copyright (C) 2004, 2005  Clifford Wolf <clifford@clifford.at>
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA

# Process this file with autoconf to produce a configure script.
AC_INIT(csync2, 2.0-rc2, csync2@lists.linbit.com)
AM_INIT_AUTOMAKE

AC_CONFIG_SRCDIR(csync2.c)
AC_CONFIG_HEADERS(config.h)

# Use /etc and /var instead of $prefix/...
# test "$localstatedir" = '${prefix}/var' && localstatedir=/var
# test "$sysconfdir" = '${prefix}/etc' && sysconfdir=/etc

# Checks for programs.
AC_PROG_CC
AC_PROG_INSTALL
AC_PROG_YACC
AM_PROG_LEX

if test "$CC" == "clang"
then 
   CFLAGS="$CFLAGS -Qunused-arguments " 
fi 

# check for large file support
AC_SYS_LARGEFILE

if test -d ${srcdir}/.git; then
   sha=`git show --pretty=format:%H|head -1`
else
        sha=`head -1 ${srcdir}/ChangeLog|awk '{print $2}'`
fi
AC_DEFINE_UNQUOTED([CSYNC2_VERSION_SHA1], ["$sha"], [Git SHA1])

# Check for librsync.
AC_ARG_WITH([librsync-source],
	AS_HELP_STRING([--with-librsync-source=source-tar-file],
		[build this librsync and link statically against it (hack! hack!)]),
	AC_SUBST([librsync_source_file], $withval),
	AC_CHECK_LIB([rsync], [rs_sig_file], , [AC_MSG_ERROR(librsync is required)])
)
AM_CONDITIONAL([PRIVATE_LIBRSYNC], [test -n "$librsync_source_file"])

AC_ARG_ENABLE([sqlite],
	[AC_HELP_STRING([--enable-sqlite],
		[enable/disable sqlite 2 support (default is disabled)])],
	[], [ enable_sqlite=no ])

if test "$enable_sqlite" == yes
then
        AC_CHECK_HEADERS([sqlite.h], , [AC_MSG_ERROR([[SQLite header not found; install libsqlite-dev and dependencies for SQLite 2 support]])])

	AC_DEFINE([HAVE_SQLITE], 1, [Define if sqlite 2 support is wanted])
fi

AC_ARG_ENABLE([sqlite3],
	[AC_HELP_STRING([--disable-sqlite3],
		[enable/disable sqlite3 support (default is enabled)])],
	[], [ enable_sqlite3=yes ])

if test "$enable_sqlite3" == yes
then
        AC_CHECK_HEADERS([sqlite3.h], , [AC_MSG_WARN([[SQLite header not found; install libsqlite3-dev and dependencies for SQLite 3 support]])],
[[
#ifdef HAVE_SQLITE3_H
#include <sqlite3.h>
#endif
]])
	AC_DEFINE([HAVE_SQLITE3], 1, [Define if sqlite3 support is wanted])
fi

AC_ARG_ENABLE([gnutls],
	[AS_HELP_STRING([--disable-gnutls],[enable/disable GNU TLS support (default is enabled)])],
	[], [ enable_gnutls=yes ])

if test "$enable_gnutls" != no
then
   PKG_PROG_PKG_CONFIG
   PKG_CHECK_MODULES([LIBGNUTLS], [gnutls >= 2.6.0], [
      AC_DEFINE([HAVE_LIBGNUTLS], 1, [Define to 1 when using GNU TLS library])
   ])
fi

AC_ARG_ENABLE([mysql],
	[AC_HELP_STRING([--enable-mysql],
		[enable/disable MySQL support (default is disabled)])],
	[], [ enable_mysql=yes ])

AC_ARG_ENABLE([postgres],
	[AC_HELP_STRING([--enable-postgres],
		[enable/disable Postgres support (default is disabled)])],
	[], [ enable_postgres=yes ])

if test "$enable_mysql" == yes
then
	mysql=0
	# Check for mysql.
	# This is a bloody hack for fedora core
	CFLAGS="$CFLAGS `mysql_config --cflags`"	

	# Check MySQL development header
	AC_CHECK_HEADERS([mysql/mysql.h, mysql.h], , [mysql=$((mysql+1))], 
[[
#ifdef HAVE_MYSQL_MYSQL_H
#include <mysql/mysql.h>
#endif
#ifdef HAVE_MYSQL_H
#include <mysql.h>
#define HAVE_MYSQL_PERCONA 1
#endif
]])

	if test "$mysql" -ne 2 
	then 
	     AC_DEFINE([HAVE_MYSQL], 1, [Define if mysql support is wanted])
	else
	     AC_MSG_WARN([[No MySQL (oracle/percona) headers found. Install mysql-devel and dependencies for MySQL Support]])
	fi
fi

if test "$enable_postgres" == yes
then
	postgres=0
        AC_CHECK_HEADERS([postgresql/libpq-fe.h], , [postgres=$((postgres+1))], 
[[
#ifdef HAVE_POSTGRESQL_LIBPQ-FE_H
#include <postgresql/libpq-fe.h>
#endif
]])

	if test "$postgres" -eq 0 
	then
		AC_DEFINE([HAVE_POSTGRES], 1, [Define if postgres support is wanted])
	else
		AC_MSG_WARN([[postgres header not found; install libpq-dev and dependencies for Postgres support]])
	fi
fi

# at least one db backend must be found. TODO add check on found as well

if test "$enable_postgres" != yes && test "$enable_mysql" != yes &&
   test "$enable_sqlite3" != yes && test "$enable_sqlite" != yes
then
	AC_MSG_ERROR([No database backend configured. Please enable either sqlite, sqlite3, mysql or postgres.])
fi

AC_CONFIG_FILES([Makefile])
AC_OUTPUT
