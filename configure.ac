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

AC_CONFIG_SRCDIR(src/csync2.cpp)
AC_CONFIG_HEADERS(src/config.h)

# Use /etc and /var instead of $prefix/...
# test "$localstatedir" = '${prefix}/var' && localstatedir=/var
# test "$sysconfdir" = '${prefix}/etc' && sysconfdir=/etc

# Checks for programs.
AC_PROG_CXX
AC_PROG_INSTALL

# Set C++ standard (prefer C++20, fallback to C++17)
AC_LANG_PUSH([C++])
AC_MSG_CHECKING([for C++ standard support])
old_CXXFLAGS="$CXXFLAGS"

# Try C++20 first
CXXFLAGS="$old_CXXFLAGS -std=c++20"
AC_COMPILE_IFELSE([AC_LANG_PROGRAM([[
#if __cplusplus < 201703L
#error "C++17 or later required"
#endif
]], [[]])],
    [AC_MSG_RESULT([C++20]); CXX_STD_FLAG="-std=c++20"],
    [
        # Try C++2a as fallback
        CXXFLAGS="$old_CXXFLAGS -std=c++2a"
        AC_COMPILE_IFELSE([AC_LANG_PROGRAM([[
#if __cplusplus < 201703L
#error "C++17 or later required"
#endif
        ]], [[]])],
            [AC_MSG_RESULT([C++2a]); CXX_STD_FLAG="-std=c++2a"],
            [
                # Fallback to C++17
                CXXFLAGS="$old_CXXFLAGS -std=c++17"
                AC_COMPILE_IFELSE([AC_LANG_PROGRAM([[
#if __cplusplus < 201703L
#error "C++17 not supported"
#endif
                ]], [[]])],
                    [AC_MSG_RESULT([C++17]); CXX_STD_FLAG="-std=c++17"],
                    [AC_MSG_ERROR([C++17 or later required])]
                )
            ]
        )
    ]
)
CXXFLAGS="$old_CXXFLAGS"
AC_LANG_POP([C++])
AC_SUBST([CXX_STD_FLAG])

# macOS-specific: Prioritize Homebrew bison over system bison
case "$host_os" in
    darwin*)
        AC_MSG_NOTICE([Detected macOS - checking for Homebrew bison])

        # Check for Apple Silicon Homebrew bison first
        if test -x "/opt/homebrew/opt/bison/bin/bison"; then
            AC_MSG_NOTICE([Found Homebrew bison (Apple Silicon): /opt/homebrew/opt/bison/bin/bison])
            YACC="/opt/homebrew/opt/bison/bin/bison -y"
        # Check for Intel Homebrew bison
        elif test -x "/usr/local/opt/bison/bin/bison"; then
            AC_MSG_NOTICE([Found Homebrew bison (Intel): /usr/local/opt/bison/bin/bison])
            YACC="/usr/local/opt/bison/bin/bison -y"
        fi
        ;;
esac

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

if test "$CXX" = "clang++"
then
   CXXFLAGS="$CXXFLAGS -Qunused-arguments "
fi

# Enable comprehensive compiler warnings
AC_MSG_CHECKING([for compiler warning flags])
WARNING_CXXFLAGS=""

# Basic warning flags (supported by both GCC and Clang for C++)
for flag in \
    -Wall \
    -Wextra \
    -Wpedantic \
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
    -Wcast-qual \
    -Wcast-align \
    -Wwrite-strings \
    -Wredundant-decls \
    -Winline \
    -Wdisabled-optimization \
    -Wno-unused-parameter \
    -Wno-unused-function \
    -Wno-format-nonliteral \
    -Wno-cast-align \
    -Woverloaded-virtual \
    -Wnon-virtual-dtor \
    -Wold-style-cast \
    -fsanitize=address \
    -fno-omit-frame-pointer \
    -Wconversion-null
#    -Wzero-as-null-pointer-constant
do
    AC_MSG_CHECKING([whether $CXX accepts $flag])
    old_CXXFLAGS="$CXXFLAGS"
    CXXFLAGS="$CXXFLAGS $flag"
    AC_COMPILE_IFELSE([AC_LANG_PROGRAM([],[])],
        [AC_MSG_RESULT([yes]); WARNING_CXXFLAGS="$WARNING_CXXFLAGS $flag"],
        [AC_MSG_RESULT([no])])
    CXXFLAGS="$old_CXXFLAGS"
done

# Add warning flags to AM_CXXFLAGS instead of CXXFLAGS to avoid duplication
AC_SUBST([WARNING_CXXFLAGS])
AC_MSG_RESULT([enabled: $WARNING_CXXFLAGS])

# macOS-specific bison verification
case "$host_os" in
    darwin*)
        AC_MSG_NOTICE([Verifying bison selection on macOS])
        # Report which bison version we're using
        if test "x$YACC" != "x"; then
            # Extract the actual bison command (remove -y flag)
            BISON_CMD=`echo "$YACC" | sed 's/ -y$//'`
            if test -x "$BISON_CMD"; then
                AC_MSG_NOTICE([Using bison: $BISON_CMD])

                # Check if it's system bison and warn
                case "$BISON_CMD" in
                    /usr/bin/*)
                        AC_MSG_WARN([Using system bison which may be outdated. Consider installing Homebrew bison:])
                        AC_MSG_WARN([  brew install bison])
                        AC_MSG_WARN([  Then re-run ./autogen.sh to use the newer version])
                        ;;
                    *)
                        AC_MSG_NOTICE([Using modern bison (likely Homebrew) - good!])
                        ;;
                esac
            fi
        else
            AC_MSG_WARN([No bison found. Please install bison:])
            AC_MSG_WARN([  brew install bison])
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
	# Try pkg-config first for librsync
	PKG_PROG_PKG_CONFIG
	PKG_CHECK_MODULES([LIBRSYNC], [librsync >= 2.0.0], [
		AC_DEFINE([HAVE_LIBRSYNC], 1, [Define to 1 when using librsync library])
		AC_MSG_NOTICE([Found librsync via pkg-config])
		
		# Verify LIBRSYNC_CFLAGS contains include path, add it if not
		AS_IF([test -z "$LIBRSYNC_CFLAGS"], [
			AC_MSG_NOTICE([LIBRSYNC_CFLAGS is empty, adding include path manually])
			# Try to find librsync.h in common locations
			for inc_path in /usr/include /usr/local/include /opt/homebrew/include /usr/include/librsync; do
				AS_IF([test -f "$inc_path/librsync.h"], [
					LIBRSYNC_CFLAGS="-I$inc_path"
					AC_MSG_NOTICE([Added $inc_path to LIBRSYNC_CFLAGS])
					break
				])
			done
		])
	], [
		# Fallback to manual detection if pkg-config fails
		AC_MSG_NOTICE([pkg-config failed, trying manual librsync detection])

		CFLAGS_backup="${CFLAGS}"
		LDFLAGS_backup="${LDFLAGS}"

		# Platform-specific library paths for librsync
		case "$host_os" in
		    darwin*)
		        # macOS: Try Homebrew paths if they exist
		        if test -d "/opt/homebrew/include"; then
		            CFLAGS="-I/opt/homebrew/include ${CFLAGS}"
		            LIBRSYNC_CFLAGS="-I/opt/homebrew/include"
		        elif test -d "/usr/local/include"; then
		            CFLAGS="-I/usr/local/include ${CFLAGS}"
		            LIBRSYNC_CFLAGS="-I/usr/local/include"
		        fi
		        if test -d "/opt/homebrew/lib"; then
		            LDFLAGS="-L/opt/homebrew/lib ${LDFLAGS}"
		            LIBRSYNC_LIBS="-L/opt/homebrew/lib -lrsync"
		        elif test -d "/usr/local/lib"; then
		            LDFLAGS="-L/usr/local/lib ${LDFLAGS}"
		            LIBRSYNC_LIBS="-L/usr/local/lib -lrsync"
		        fi
		        ;;
		    *)
		        # Linux and other platforms: try common paths
		        for inc_path in /usr/include /usr/local/include /usr/include/librsync; do
		            if test -f "$inc_path/librsync.h"; then
		                if test "$inc_path" != "/usr/include"; then
		                    CFLAGS="-I$inc_path ${CFLAGS}"
		                    LIBRSYNC_CFLAGS="-I$inc_path"
		                fi
		                break
		            fi
		        done
		        LIBRSYNC_LIBS="-lrsync"
		        ;;
		esac

		# Check for librsync header
		AC_CHECK_HEADERS([librsync.h], [], [
		    AC_MSG_ERROR([librsync.h not found. Please install librsync development package:
		    - Ubuntu/Debian: sudo apt-get install librsync-dev
		    - CentOS/RHEL: sudo yum install librsync-devel
		    - macOS: brew install librsync])
		])

		# Check for librsync library
		AC_CHECK_LIB([rsync], [rs_sig_file], [
		    # LIBRSYNC_LIBS already set above based on platform
		], [AC_MSG_ERROR([librsync library not found. Please install librsync development package.])])

		# Reset CFLAGS and LDFLAGS to avoid polluting other checks
		CFLAGS="${CFLAGS_backup}"
		LDFLAGS="${LDFLAGS_backup}"
	])
	]
)

# Ensure LIBRSYNC_CFLAGS is set if it's still empty
AS_IF([test -z "$LIBRSYNC_CFLAGS"], [
    AC_MSG_NOTICE([LIBRSYNC_CFLAGS is still empty, searching for librsync.h])
    for inc_path in /usr/include /usr/local/include /opt/homebrew/include /usr/include/librsync; do
        AS_IF([test -f "$inc_path/librsync.h"], [
            LIBRSYNC_CFLAGS="-I$inc_path"
            AC_MSG_NOTICE([Found librsync.h in $inc_path])
            break
        ])
    done
    
    # If still not found, try using which command to locate rsync
    AS_IF([test -z "$LIBRSYNC_CFLAGS"], [
        rsync_path=`which rsync 2>/dev/null`
        if test -n "$rsync_path"; then
            rsync_prefix=`dirname $rsync_path | sed 's/\/bin$//'`
            if test -f "$rsync_prefix/include/librsync.h"; then
                LIBRSYNC_CFLAGS="-I$rsync_prefix/include"
                AC_MSG_NOTICE([Found librsync.h in $rsync_prefix/include])
            fi
        fi
    ])
])

# Final check and warning if LIBRSYNC_CFLAGS is still empty
AS_IF([test -z "$LIBRSYNC_CFLAGS"], [
    AC_MSG_WARN([
    =======================================================================
    WARNING: LIBRSYNC_CFLAGS is empty! This may cause compilation failures.
    Please manually specify the include path with:
    ./configure LIBRSYNC_CFLAGS="-I/path/to/librsync/include"
    =======================================================================
    ])
])

AM_CONDITIONAL([PRIVATE_LIBRSYNC], [test -n "$librsync_source_file"])

# Substitute librsync variables for Makefile
AC_SUBST([LIBRSYNC_CFLAGS])
AC_SUBST([LIBRSYNC_LIBS])

# Debug output to verify values
AC_MSG_NOTICE([LIBRSYNC_CFLAGS = $LIBRSYNC_CFLAGS])
AC_MSG_NOTICE([LIBRSYNC_LIBS = $LIBRSYNC_LIBS])

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

