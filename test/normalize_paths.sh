#!/bin/bash
#
# normalize_paths.sh - Normalize absolute paths in test output for cross-platform compatibility
#
# This script filters csync2 test output to replace platform-specific absolute paths
# with normalized relative paths, making tests portable between macOS and Linux.
#

# Get the current test directory (should be the directory containing this script)
TESTDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Extract the base project directory (parent of test directory)
BASEDIR="$(dirname "$TESTDIR")"

# Create a sed script to normalize paths and filter environment-specific messages
# Replace the base directory with a placeholder to make paths relative
sed -e "s|$TESTDIR/test|<TESTBASE>/test|g" \
    -e "s|$TESTDIR|<TESTBASE>|g" \
    -e "s|/export/home/dennis/Projects/csync2/csync2/test/test|<TESTBASE>/test|g" \
    -e "s|/export/home/dennis/Projects/csync2/csync2/test|<TESTBASE>|g" \
    -e "s|user/group [0-9]* [0-9]* [^ ]* [^ ]*|user/group <UID> <GID> <USER> <GROUP>|g" \
    -e "s|- [0-9]* [0-9]* [^ ]* [^ ]* |- <UID> <GID> <USER> <GROUP> |g" \
    -e "s|<GROUP> [0-9]* - [0-9]*|<GROUP> <BLKSIZE> - <DIRSIZE>|g" \
    -e "s|substring(filename,[0-9]*)|substring(filename,<LEN>)|g" \
    -e "s|Changing owner of /tmp/csync2/[^ ]* to user [0-9]* and group [0-9]*, rc= -1|Changing owner of /tmp/csync2/<PATH> to user <UID> and group <GID>, rc= -1|g" \
    -e "/----------/d" \
    -e "/----------+/d" \
    -e "/Transfer starting:/d" \
    -e "/total size is.*speedup/d" \
    -e "s|mtime=[0-9]*:|mtime=<MTIME>|g"
