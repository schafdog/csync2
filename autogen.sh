#!/bin/sh
# Enable debug output if DEBUG environment variable is set
if [ "${DEBUG:-0}" = "1" ]; then
    set -x
fi
#
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

# Check for required tools
for tool in aclocal autoheader automake autoconf; do
    if ! command -v "$tool" >/dev/null 2>&1; then
        echo "Error: $tool not found. Please install autotools." >&2
        exit 1
    fi
done

echo "Running autotools..."
aclocal || exit 1
autoheader || exit 1
automake --add-missing --copy || exit 1
autoconf || exit 1

# Create ylwrap symlink if it doesn't exist and we can find automake's version
if [ ! -f ylwrap ]; then
    # Try to find automake's ylwrap script
    for automake_dir in /usr/share/automake-* /usr/local/share/automake-*; do
        if [ -f "$automake_dir/ylwrap" ]; then
            ln -s "$automake_dir/ylwrap" ylwrap
            break
        fi
    done
fi


if [ "$1" = "clean" ]; then
    echo "Cleaning build artifacts..."
    if [ -f Makefile ]; then
        make distclean 2>/dev/null || true
    fi
    rm -rf librsync[.-]* libsqlite.* sqlite-*
    rm -rf configure Makefile.in depcomp stamp-h.in
    rm -rf mkinstalldirs config.h.in autom4te.cache
    rm -rf missing aclocal.m4 install-sh *~
    rm -rf config.guess config.sub ylwrap
    rm -rf cygwin/librsync-0.9.7.tar.gz
    rm -rf cygwin/sqlite-2.8.16.tar.gz
    rm -rf src/Makefile.in test/Makefile.in
    rm -rf src/config.h src/config.h.in src/stamp-h1
    echo "Clean complete."
else
    echo "Running configure..."
    ./configure "$@" || exit 1
    echo ""
    echo "Build system ready. Run 'make' to compile."
    echo ""
    echo "Note: You can reconfigure with different options by running:"
    echo "  ./configure --help"
fi

