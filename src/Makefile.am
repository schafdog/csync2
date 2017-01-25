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

sbin_PROGRAMS = csync2
sbin_SCRIPTS = csync2-compare

man_MANS = csync2.1
CC = clang
csync2_SOURCES = action.c cfgfile_parser.y cfgfile_scanner.l check.c	\
                 checktxt.c csync2.c global.c daemon.c db.c \
		 error.c error.h getrealfn.c	\
                 groups.c rsync.c update.c urlencode.c conn.c prefixsubst.c \
		 db_api.c db_sql.c db_sqlite.c db_sqlite2.c db_mysql.c db_postgres.c \
		 ringbuffer.c buffer.c uidgid.c uidgid.h resolv.c resolv.h \
		 csync2.h db_api.h db_sql.h db_mysql.h db_postgres.h db_sqlite.h db_sqlite2.h dl.h \
		 csync2-compare \
		 digest.c digest.h version.h \
		 csync2.1

#EXTRA_DIST = csync2.cfg csync2.xinetd

GIT_VERSION = $(shell git describe --abbrev=60 --dirty --always)

AM_YFLAGS = -d
BUILT_SOURCES = cfgfile_parser.h check_version
LIBS += -ldl -lssl -lcrypto
CLEANFILES = cfgfile_parser.c cfgfile_parser.h cfgfile_scanner.c	\
             config.log		

# csync2_LDADD =

check_version: FORCE
	@../version.sh $(objects)

dist-clean-local:
	rm -rf autom4te.cache

AM_CFLAGS=-DGIT_VERSION=\"$(GIT_VERSION)\" $(LIBGNUTLS_CFLAGS) -std=c99 -O0 -Wno-deprecated-declarations
AM_LDFLAGS= $(LIBGNUTLS_LIBS)

AM_CPPFLAGS  = -D'DBDIR="$(localstatedir)/lib/csync2"'
AM_CPPFLAGS += -D'ETCDIR="$(sysconfdir)/csync2"'

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

FORCE:
