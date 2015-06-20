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

SUBDIRS = src test

DISTCLEANFILES = config.status config.h .deps/*.Po stamp-h1 Makefile Makefile.in configure

BUILT_SOURCES = 

CONFDIR = $(DESTDIR)$(sysconfdir)/csync2

dist-clean-local:
	rm -rf autom4te.cache

install-data-local:
	$(mkinstalldirs) $(CONFDIR)
	$(mkinstalldirs) $(DESTDIR)$(localstatedir)/lib/csync2
	test -e $(CONFDIR)/csync2.cfg || \
		$(INSTALL_DATA) csync2.cfg $(CONFDIR)/csync2.cfg

cert:
	$(mkinstalldirs) $(CONFDIR)
	openssl genrsa -out $(CONFDIR)/csync2_ssl_key.pem 2048
	yes '' | openssl req -new -key $(CONFDIR)/csync2_ssl_key.pem \
		-out $(CONFDIR)/csync2_ssl_cert.csr
	openssl x509 -req -days 600 -in $(CONFDIR)/csync2_ssl_cert.csr \
		-signkey $(CONFDIR)/csync2_ssl_key.pem \
		-out $(CONFDIR)/csync2_ssl_cert.pem
	rm $(CONFDIR)/csync2_ssl_cert.csr


.PHONY:debian
debian:
	dpkg-buildpackage -rfakeroot
