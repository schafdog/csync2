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
AC_PREREQ([2.63])
AC_INIT([csync2],[2.1-rc2],[dennis@schafroth.com])
AM_INIT_AUTOMAKE([1.11 -Wall foreign subdir-objects])
AM_SILENT_RULES([yes])

# Canonical host detection (required for $host_os variable)
AC_CANONICAL_HOST

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

    # Test if yacc/bison supports %expect directive
    AC_MSG_CHECKING([if yacc supports %expect directive])
    cat > conftest_expect.y << 'EOF'
%{
int yylex(void);
void yyerror(const char *s);
%}
%expect 1
%token TEST
%%
start: TEST;
%%
void yyerror(const char *s) {}
int yylex(void) { return 0; }
EOF

    if $YACC -d conftest_expect.y >/dev/null 2>&1; then
        AC_MSG_RESULT([yes])
        YACC_SUPPORTS_EXPECT=yes
    else
        AC_MSG_RESULT([no])
        YACC_SUPPORTS_EXPECT=no
    fi

    # Clean up test files
    rm -f conftest.y conftest_expect.y conftest.tab.c conftest.tab.h y.tab.c y.tab.h conftest_expect.tab.c conftest_expect.tab.h
else
    AC_MSG_RESULT([yacc not found])
    AM_YFLAGS="-d"
    YACC_SUPPORTS_EXPECT=no
fi
AC_SUBST([AM_YFLAGS])
AC_SUBST([YACC_SUPPORTS_EXPECT])

if test "$CC" = "clang"
then
   CFLAGS="$CFLAGS -Qunused-arguments "
fi

# Enable comprehensive compiler warnings
AC_MSG_CHECKING([for compiler warning flags])
WARNING_CFLAGS=""

# Basic warning flags (supported by both GCC and Clang)
for flag in \
    -Wall \
    -Wextra \
    -Wformat=2 \
    -Wformat-security \
    -Wformat-nonliteral \
    -Winit-self \
    -Wmissing-include-dirs \
    -Wno-switch-default \
    -Wswitch-enum \
    -Wunused \
    -Wuninitialized \
    -Wstrict-aliasing=2 \
    -Wfloat-equal \
    -Wundef \
    -Wshadow \
    -Wpointer-arith \
    -Wbad-function-cast \
    -Wcast-qual \
    -Wcast-align \
    -Wwrite-strings \
    -Wstrict-prototypes \
    -Wold-style-definition \
    -Wmissing-prototypes \
    -Wmissing-declarations \
    -Wredundant-decls \
    -Wnested-externs \
    -Winline \
    -Wdisabled-optimization \
    -Wno-unused-parameter
do
    AC_MSG_CHECKING([whether $CC accepts $flag])
    old_CFLAGS="$CFLAGS"
    CFLAGS="$CFLAGS $flag"
    AC_COMPILE_IFELSE([AC_LANG_PROGRAM([],[])],
        [AC_MSG_RESULT([yes]); WARNING_CFLAGS="$WARNING_CFLAGS $flag"],
        [AC_MSG_RESULT([no])])
    CFLAGS="$old_CFLAGS"
done

# Add warning flags to AM_CFLAGS instead of CFLAGS to avoid duplication
AC_SUBST([WARNING_CFLAGS])
AC_MSG_RESULT([enabled: $WARNING_CFLAGS])

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
	[
	CFLAGS_backup="${CFLAGS}"
	LDFLAGS_backup="${LDFLAGS}"

	# Platform-specific library paths for librsync
	case "$host_os" in
	    darwin*)
	        # macOS: Try Homebrew paths if they exist
	        if test -d "/opt/homebrew/include"; then
	            CFLAGS="-I/opt/homebrew/include ${CFLAGS}"
	        elif test -d "/usr/local/include"; then
	            CFLAGS="-I/usr/local/include ${CFLAGS}"
	        fi
	        if test -d "/opt/homebrew/lib"; then
	            LDFLAGS="-L/opt/homebrew/lib ${LDFLAGS}"
	        elif test -d "/usr/local/lib"; then
	            LDFLAGS="-L/usr/local/lib ${LDFLAGS}"
	        fi
	        ;;
	    *)
	        # Linux and other platforms: rely on pkg-config and standard paths
	        ;;
	esac

	AC_CHECK_LIB([rsync], [rs_sig_file], , [AC_MSG_ERROR(librsync is required)])

	# Reset CFLAGS and LDFLAGS to avoid polluting other checks
	CFLAGS="${CFLAGS_backup}"
	LDFLAGS="${LDFLAGS_backup}"
	]
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
      
      # macOS-specific Redis handling
      case "$host_os" in
          darwin*)
              AC_MSG_NOTICE([Detected macOS - configuring Redis runtime paths])
              HIREDIS_LIBDIR=`$PKG_CONFIG --variable=libdir hiredis 2>/dev/null`
              if test -n "$HIREDIS_LIBDIR"; then
                  LIBHIREDIS_LIBS="$LIBHIREDIS_LIBS -Wl,-rpath,$HIREDIS_LIBDIR"
                  AC_MSG_NOTICE([Redis LIBS with rpath: $LIBHIREDIS_LIBS])
              fi
              ;;
      esac
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
      
      # macOS-specific MySQL/MariaDB handling
      case "$host_os" in
          darwin*)
              AC_MSG_NOTICE([Detected macOS - configuring MySQL/MariaDB runtime paths])
              MYSQL_LIBDIR=`$PKG_CONFIG --variable=libdir libmariadb 2>/dev/null`
              if test -n "$MYSQL_LIBDIR"; then
                  MYSQL_LIBS="$MYSQL_LIBS -Wl,-rpath,$MYSQL_LIBDIR"
                  AC_MSG_NOTICE([MySQL LIBS with rpath: $MYSQL_LIBS])
              fi
              ;;
      esac
      ])
fi

if test "$enable_postgres" = yes
then
     PKG_PROG_PKG_CONFIG
     PKG_CHECK_MODULES([LIBPQ], [libpq >= 10.1.0 ] , [
      AC_DEFINE([HAVE_LIBPQ], 1, [Define to 1 when using libpq library])
      
      # macOS-specific PostgreSQL handling
      case "$host_os" in
          darwin*)
              AC_MSG_NOTICE([Detected macOS - configuring PostgreSQL runtime paths])
              
              # Get PostgreSQL library directory from pkg-config
              LIBPQ_LIBDIR=`$PKG_CONFIG --variable=libdir libpq 2>/dev/null`
              if test -n "$LIBPQ_LIBDIR"; then
                  AC_MSG_NOTICE([PostgreSQL library directory: $LIBPQ_LIBDIR])
                  
                  # Add runtime library path for macOS
                  LIBPQ_LIBS="$LIBPQ_LIBS -Wl,-rpath,$LIBPQ_LIBDIR"
                  
                  # Also check for common Homebrew locations
                  if test -d "/opt/homebrew/lib"; then
                      LIBPQ_LIBS="$LIBPQ_LIBS -Wl,-rpath,/opt/homebrew/lib"
                  elif test -d "/usr/local/lib"; then
                      LIBPQ_LIBS="$LIBPQ_LIBS -Wl,-rpath,/usr/local/lib"
                  fi
                  
                  AC_MSG_NOTICE([PostgreSQL LIBS with rpath: $LIBPQ_LIBS])
              else
                  AC_MSG_WARN([Could not determine PostgreSQL library directory])
              fi
              ;;
      esac
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

