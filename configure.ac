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
AC_PREREQ([2.69])
AC_INIT([csync2],[2.1-rc2],[dennis@schafroth.com])
AM_INIT_AUTOMAKE([1.16 -Wall -Werror foreign subdir-objects])

AC_CONFIG_SRCDIR(src/csync2.c)
AC_CONFIG_HEADERS(src/config.h)

# Use /etc and /var instead of $prefix/...
# test "$localstatedir" = '${prefix}/var' && localstatedir=/var
# test "$sysconfdir" = '${prefix}/etc' && sysconfdir=/etc

# Checks for programs.
AC_PROG_CC
AC_PROG_INSTALL
AC_PROG_YACC
AC_PROG_LEX([noyywrap])

# Check for bison capabilities
AC_MSG_CHECKING([if bison supports -W option])
if test "x$YACC" != "x"; then
    # Create a minimal test grammar
    cat > conftest.y << 'EOF'
%{
int yylex(void);
void yyerror(const char *s);
%}
%token TEST
%%
test: TEST;
%%
void yyerror(const char *s) {}
int yylex(void) { return 0; }
EOF

    # Test if bison supports -Wno-yacc option
    if $YACC -d -Wno-yacc conftest.y >/dev/null 2>&1; then
        AC_MSG_RESULT([yes])
        AM_YFLAGS="-d -Wno-yacc"
    else
        AC_MSG_RESULT([no])
        AM_YFLAGS="-d"
    fi

    # Clean up test files
    rm -f conftest.y conftest.tab.c conftest.tab.h y.tab.c y.tab.h
else
    AC_MSG_RESULT([yacc not found])
    AM_YFLAGS="-d"
fi
AC_SUBST([AM_YFLAGS])

if test "$CC" = "clang"
then
   CFLAGS="$CFLAGS -Qunused-arguments "
fi

# macOS-specific checks
case "$host_os" in
    darwin*)
        AC_MSG_NOTICE([Detected macOS - checking for Homebrew bison])
        # Check if we're using the old system bison on macOS
        if test "x$YACC" != "x"; then
            YACC_PATH=`which $YACC 2>/dev/null`
            if echo "$YACC_PATH" | grep -q "/usr/bin/"; then
                AC_MSG_WARN([Using system bison which may be outdated. Consider installing Homebrew bison:])
                AC_MSG_WARN([  brew install bison])
                AC_MSG_WARN([  For Apple Silicon: export PATH="/opt/homebrew/opt/bison/bin:$PATH"])
                AC_MSG_WARN([  For Intel: export PATH="/usr/local/opt/bison/bin:$PATH"])
            fi
        fi
        ;;
esac

# check for large file support
AC_SYS_LARGEFILE

# Generate version information
AC_MSG_NOTICE([Generating version information...])
if test -d "${srcdir}/.git" && command -v git >/dev/null 2>&1; then
    GIT_VERSION=`cd "${srcdir}" && git describe --abbrev=60 --dirty --always 2>/dev/null || echo "unknown"`
else
    GIT_VERSION="unknown"
fi
AC_DEFINE_UNQUOTED([CSYNC2_GIT_VERSION], ["$GIT_VERSION"], [Git version string])
AC_SUBST([GIT_VERSION])

# Check for librsync.
AC_ARG_WITH([librsync-source],
	AS_HELP_STRING([--with-librsync-source=source-tar-file],
		[build this librsync and link statically against it (hack! hack!)]),
	AC_SUBST([librsync_source_file], $withval),
	CFLAGS_backup="${CFLAGS}"
	LDFLAGS_backup="${LDFLAGS}"
	CFLAGS="-I/opt/homebrew/include/ ${CFLAGS}"
	LDFLAGS="-L/opt/homebrew/lib/ ${LDFLAGS}"
	AC_CHECK_LIB([rsync], [rs_sig_file], , [AC_MSG_ERROR(librsync is required)])
	## reset CFLAGS and LDFLAGS
#	CFLAGS="${CFLAGS_backup}"
#a	LDFLAGS="${LDFLAGS_backup}"
)

AM_CONDITIONAL([PRIVATE_LIBRSYNC], [test -n "$librsync_source_file"])

AC_ARG_ENABLE([sqlite],
	[AS_HELP_STRING([--enable-sqlite],[enable/disable sqlite 2 support (default is disabled)])],
	[], [ enable_sqlite=no ])

if test "$enable_sqlite" = yes
then
        AC_CHECK_HEADERS([sqlite.h], , [AC_MSG_ERROR([[SQLite header not found; install libsqlite-dev and dependencies for SQLite 2 support]])])

	AC_DEFINE([HAVE_SQLITE], 1, [Define if sqlite 2 support is wanted])
fi

AC_ARG_ENABLE([sqlite3],
	[AS_HELP_STRING([--disable-sqlite3],[enable/disable sqlite3 support (default is enabled)])],
	[], [ enable_sqlite3=yes ])

if test "$enable_sqlite3" = yes
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

PKG_PROG_PKG_CONFIG
PKG_CHECK_MODULES([LIBOPENSSL], [openssl >= 1.1], [
   AC_DEFINE([HAVE_LIBOPENSSL], 1, [Define to 1 when using OpenSSL library])
 ])

PKG_PROG_PKG_CONFIG
PKG_CHECK_MODULES([LIBSYSTEMD], [libsystemd >= 1.0], [
   AC_DEFINE([HAVE_LIBSYSTEMD], 1, [Define to 1 when using libsystemd library])
 ],
 [HAVE_LIBSYSTEMD=0])

AC_CHECK_FUNCS([strlcpy])

if test "$enable_redis" != no
then
   PKG_PROG_PKG_CONFIG
   PKG_CHECK_MODULES([LIBHIREDIS], [hiredis >= 0.14.0], [
      AC_DEFINE([HAVE_LIBHIREDIS], 1, [Define to 1 when using libhiredis library])
   ])
fi

AC_ARG_ENABLE([mysql],
	[AS_HELP_STRING([--enable-mysql],[enable/disable MySQL support (default is enabled)])],
	[], [ enable_mysql=yes ])

AC_ARG_ENABLE([postgres],
	[AS_HELP_STRING([--enable-postgres],[enable/disable Postgres support (default is enabled)])],
	[], [ enable_postgres=yes ])

AC_ARG_ENABLE([redis],
	[AS_HELP_STRING([--enable-redis],[enable/disable Redis support (default is enabled)])],
	[], [ enable_redis=yes ])


if test "$enable_mysql" = yes
then
   PKG_PROG_PKG_CONFIG
   PKG_CHECK_MODULES([MYSQL], [libmariadb >= 3.1.0 ] , [
      AC_DEFINE([HAVE_MYSQL], 1, [Define to 1 when using libmariadb library])
      ])
fi

if test "$enable_postgres" = yes
then
     PKG_PROG_PKG_CONFIG
     PKG_CHECK_MODULES([LIBPQ], [libpq >= 10.1.0 ] , [
      AC_DEFINE([HAVE_LIBPQ], 1, [Define to 1 when using libpq library])
      ])
fi


# at least one db backend must be found. TODO add check on found as well

if test "$enable_postgres" != yes && test "$enable_mysql" != yes &&
   test "$enable_sqlite3" != yes && test "$enable_sqlite" != yes
then
	AC_MSG_ERROR([No database backend configured. Please enable either sqlite, sqlite3, mysql or postgres.])
fi

# AC_CONFIG_FILES([Makefile])
AC_CONFIG_FILES([
	Makefile
	src/Makefile
	test/Makefile
])
AC_OUTPUT

