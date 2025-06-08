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
sed -e "s|$TESTDIR/test/|<TESTBASE>/test/|g" \
    -e "s|^-\{60,\}$|----------------------------------------------------------------|g" \
    -e "s|^-\{70,\}$|----------------------------------------------------------------|g" \
    -e "s|^-\{80,\}$|----------------------------------------------------------------|g" \
    -e "s|^-\{90,\}$|----------------------------------------------------------------|g" \
    -e "s|^-\{100,\}$|----------------------------------------------------------------|g" \
    -e "s|----------+[^+]*+|----------+----------------------------------------------------------------+|g" \
    -e "/Transfer starting:/d" \
    -e "/total size is.*speedup/d"

