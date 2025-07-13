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
#

sbin_PROGRAMS = csync2 test_database
sbin_SCRIPTS = csync2-compare
bin_SCRIPTS = ../directory_size.sh

man_MANS = csync2.1
database_SOURCES = database_v2.cpp database_sqlite_v2.cpp database_mysql_v2.cpp database_postgres_v2.cpp \
                db_api.cpp db_sql.cpp db_sqlite.cpp db_mysql.cpp db_postgres.cpp

common_SOURCES = action.cpp cfgfile_parser_processed.y cfgfile_scanner.l \
	check.cpp file_record.cpp file_record.hpp \
	checktxt.cpp global.cpp daemon.cpp db.cpp \
	error.cpp error.hpp getrealfn.cpp modern_logging.cpp \
	groups.cpp rsync.cpp update.cpp urlencode.cpp conn.cpp prefixsubst.cpp \
	db_api.cpp db_sql.cpp db_sqlite.cpp db_mysql.cpp db_postgres.cpp \
	ringbuffer.cpp buffer.cpp uidgid.cpp uidgid.hpp resolv.cpp resolv.hpp \
	csync2.hpp db_api.hpp db_sql.hpp db_mysql.hpp db_postgres.hpp db_sqlite.hpp dl.hpp \
	redis.hpp redis.cpp modern_logging.hpp \
	database_v2.cpp database_sqlite_v2.cpp database_mysql_v2.cpp database_postgres_v2.cpp \
	digest.cpp digest.hpp version.hpp \
	csync2-compare csync2.1

csync2_SOURCES = main.cpp $(common_SOURCES) csync2.cpp

EXTRA_DIST = cfgfile_parser.y

# GIT_VERSION will be set by version.sh script

# AM_YFLAGS is set by configure.ac based on bison capabilities
# Default value for automake, will be overridden by configure
AM_YFLAGS = -d
BUILT_SOURCES = cfgfile_parser.h check_version cfgfile_parser_processed.y
CLEANFILES = cfgfile_parser.c cfgfile_parser.h cfgfile_scanner.c	\
             cfgfile_parser_processed.y cfgfile_parser_processed.c cfgfile_parser_processed.h config.log

# Link all required libraries
csync2_LDADD = $(LIBGNUTLS_LIBS) $(LIBSYSTEMD_LIBS) $(MYSQL_LIBS) $(LIBHIREDIS_LIBS) \
               $(LIBOPENSSL_LIBS) $(LIBPQ_LIBS) $(LIBBSD_LIBS) $(LIBRSYNC_LIBS) \
               -ldl -lsqlite3

# Link flags for build configuration
AM_LDFLAGS = $(BUILD_LDFLAGS)

# --- Tests for the new DB layer ---
check_PROGRAMS = test_database

test_database_SOURCES = $(database_SOURCES) test_database.cpp global.cpp utils.hpp error.cpp ringbuffer.cpp db.cpp check.cpp modern_logging.cpp prefixsubst.cpp checktxt.cpp groups.cpp digest.cpp action.cpp buffer.cpp redis.cpp urlencode.cpp uidgid.cpp
test_database_LDADD = $(csync2_LDADD)



#-lssl -lcrypto

check_version: FORCE
	@cd $(top_srcdir) && ./version.sh

# Preprocess yacc file to conditionally include %expect directive
cfgfile_parser_processed.y: cfgfile_parser.y
	@if test "x$(YACC_SUPPORTS_EXPECT)" = "xyes"; then \
		cp cfgfile_parser.y cfgfile_parser_processed.y; \
	else \
		sed '/^%expect/d' cfgfile_parser.y > cfgfile_parser_processed.y; \
	fi

# Create header symlink for scanner compatibility
cfgfile_parser.h: cfgfile_parser_processed.h
	@if test ! -e cfgfile_parser.h; then \
		ln -sf cfgfile_parser_processed.h cfgfile_parser.h; \
	fi

clean-local:
	rm -f $(CLEANFILES)
	rm -f *.o

dist-clean: dist-clean-local
	rm configure
	rm Makefile
	rm src/Makefile

dist-clean-local:
	rm -rf autom4te.cache

AM_CXXFLAGS=-DGIT_VERSION=\"$(GIT_VERSION)\" \
	$(LIBGNUTLS_CFLAGS) $(LIBSYSTEMD_CFLAGS) \
	$(MYSQL_CFLAGS) $(LIBPQ_CFLAGS) \
	$(LIBHIREDIS_CFLAGS) $(LIBOPENSSL_CFLAGS) $(LIBRSYNC_CFLAGS) \
	$(CXX_STD_FLAG) $(BUILD_CXXFLAGS) -Wno-deprecated-declarations \
	$(WARNING_CXXFLAGS)

AM_CPPFLAGS  = -D'DBDIR="$(localstatedir)/lib/csync2"'
AM_CPPFLAGS += -D'ETCDIR="$(sysconfdir)/csync2"'

# Force C compilation for flex/yacc generated files
AM_CFLAGS = -DGIT_VERSION=\"$(GIT_VERSION)\" \
	$(LIBGNUTLS_CFLAGS) $(LIBSYSTEMD_CFLAGS) \
	$(MYSQL_CFLAGS) $(LIBPQ_CFLAGS) \
	$(LIBHIREDIS_CFLAGS) $(LIBOPENSSL_CFLAGS) $(LIBRSYNC_CFLAGS) \
	$(BUILD_CXXFLAGS) -Wno-deprecated-declarations \
	$(WARNING_CFLAGS)

# Explicit rules to compile scanner and parser as C
cfgfile_scanner.o: cfgfile_scanner.c
	$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) $(AM_CFLAGS) $(CFLAGS) -c -o $@ $<

cfgfile_parser_processed.o: cfgfile_parser_processed.c
	$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) $(AM_CFLAGS) $(CFLAGS) -c -o $@ $<

#install-data-local:
#	$(mkinstalldirs) $(DESTDIR)$(sysconfdir)
#	$(mkinstalldirs) $(DESTDIR)$(localstatedir)/lib/csync2
#	test -e $(DESTDIR)$(sysconfdir)/csync2.cfg || \
#		$(INSTALL_DATA) $(srcdir)/csync2.cfg $(DESTDIR)$(sysconfdir)/csync2.cfg

cert:
	$(mkinstalldirs) $(DESTDIR)$(sysconfdir)
	openssl genrsa -out $(DESTDIR)$(sysconfdir)/csync2/csync2_ssl_key.pem 1024
	yes '' | openssl req -new -key $(DESTDIR)$(sysconfdir)/csync2/csync2_ssl_key.pem \
		-out $(DESTDIR)$(sysconfdir)/csync2_ssl_cert.csr
	openssl x509 -req -days 600 -in $(DESTDIR)$(sysconfdir)/csync2/csync2_ssl_cert.csr \
		-signkey $(DESTDIR)$(sysconfdir)/csync2/csync2_ssl_key.pem \
		-out $(DESTDIR)$(sysconfdir)/csync2/csync2_ssl_cert.pem
	rm $(DESTDIR)$(sysconfdir)/csync2/csync2_ssl_cert.csr


tests:
	make -C tests

# Convenience target to show only warnings
warnings:
	@echo "Building and showing only warnings..."
	@$(MAKE) -s 2>&1 | grep "warning:" || echo "No warnings found!"

# Count warnings
warnings-count:
	@echo "Counting warnings..."
	@$(MAKE) -s 2>&1 | grep -c "warning:" || echo "0"

# Enhanced build targets
# Note: These targets override the configure-time settings

# Optimized release build
release: clean
	@echo "Building optimized release..."
	@$(MAKE) BUILD_CXXFLAGS="-O2 -DNDEBUG -g1" BUILD_LDFLAGS=""

# Release build with debug symbols
release-debug: clean
	@echo "Building release with debug symbols..."
	@$(MAKE) BUILD_CXXFLAGS="-O2 -DNDEBUG -g" BUILD_LDFLAGS=""

# Debug build with AddressSanitizer
debug: clean
	@echo "Building with debug symbols and AddressSanitizer..."
	@$(MAKE) BUILD_CXXFLAGS="-g -O0 -DDEBUG -fsanitize=address -fno-omit-frame-pointer" \
	         BUILD_LDFLAGS="-fsanitize=address"

# Debug build without AddressSanitizer (for use with other tools like Valgrind)
debug-simple: clean
	@echo "Building with debug symbols only..."
	@$(MAKE) BUILD_CXXFLAGS="-g -O0 -DDEBUG" BUILD_LDFLAGS=""

# Profile-guided optimization build
profile: clean
	@echo "Building for profiling..."
	@$(MAKE) BUILD_CXXFLAGS="-O2 -pg -fprofile-arcs -ftest-coverage" \
	         BUILD_LDFLAGS="-pg -fprofile-arcs -ftest-coverage"

# Memory debugging build optimized for Valgrind
valgrind: clean
	@echo "Building for Valgrind..."
	@$(MAKE) BUILD_CXXFLAGS="-g -O0 -DDEBUG" BUILD_LDFLAGS=""

# Thread sanitizer build
thread-sanitizer: clean
	@echo "Building with ThreadSanitizer..."
	@$(MAKE) BUILD_CXXFLAGS="-g -O0 -DDEBUG -fsanitize=thread" \
	         BUILD_LDFLAGS="-fsanitize=thread"

# Memory sanitizer build (Clang only)
memory-sanitizer: clean
	@echo "Building with MemorySanitizer (Clang only)..."
	@$(MAKE) BUILD_CXXFLAGS="-g -O0 -DDEBUG -fsanitize=memory -fno-omit-frame-pointer" \
	         BUILD_LDFLAGS="-fsanitize=memory"

# Undefined behavior sanitizer build
ubsan: clean
	@echo "Building with UndefinedBehaviorSanitizer..."
	@$(MAKE) BUILD_CXXFLAGS="-g -O0 -DDEBUG -fsanitize=undefined" \
	         BUILD_LDFLAGS="-fsanitize=undefined"

# Performance optimized build (maximum optimization)
performance: clean
	@echo "Building for maximum performance..."
	@$(MAKE) BUILD_CXXFLAGS="-O3 -DNDEBUG -march=native -flto" \
	         BUILD_LDFLAGS="-flto"

# Test targets with different build configurations
test-debug: debug
	@echo "Running tests in debug mode..."
	@$(MAKE) check

test-release: release
	@echo "Running tests in release mode..."
	@$(MAKE) check

test-sanitizer: debug
	@echo "Running tests with AddressSanitizer..."
	@$(MAKE) check

# Show current build configuration
show-config:
	@echo "Current build configuration:"
	@echo "  Build type: $(BUILD_TYPE)"
	@echo "  CXXFLAGS: $(BUILD_CXXFLAGS)"
	@echo "  LDFLAGS: $(BUILD_LDFLAGS)"
	@echo "  AddressSanitizer: $(enable_asan)"

FORCE:
