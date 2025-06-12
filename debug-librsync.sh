#!/bin/bash
# Debug script for librsync header detection issues

echo "=== Debugging librsync header detection ==="

# 1. Find all librsync.h files on the system
echo "Searching for librsync.h on the system..."
LIBRSYNC_PATHS=$(find /usr /opt /usr/local -name librsync.h 2>/dev/null)
if [ -z "$LIBRSYNC_PATHS" ]; then
  echo "ERROR: No librsync.h found on the system!"
else
  echo "Found librsync.h in the following locations:"
  echo "$LIBRSYNC_PATHS"
fi

# 2. Check if pkg-config knows about librsync
echo -e "\nChecking pkg-config for librsync..."
if pkg-config --exists librsync; then
  echo "pkg-config found librsync"
  echo "CFLAGS: $(pkg-config --cflags librsync)"
  echo "LIBS: $(pkg-config --libs librsync)"
else
  echo "pkg-config does not know about librsync"
fi

# 3. Test direct compilation with various include paths
echo -e "\nTesting direct compilation with various include paths..."
for path in $(dirname $LIBRSYNC_PATHS); do
  echo "Testing with -I$path"
  echo "#include <librsync.h>" > test_librsync.c
  echo "int main() { return 0; }" >> test_librsync.c
  if gcc -I$path -c test_librsync.c -o test_librsync.o 2>/dev/null; then
    echo "SUCCESS: Compilation worked with -I$path"
  else
    echo "FAILED: Compilation failed with -I$path"
  fi
done
rm -f test_librsync.c test_librsync.o

# 4. Check configure.ac for how it's detecting librsync
echo -e "\nChecking configure.ac for librsync detection..."
grep -A 20 "librsync" configure.ac | head -20

# 5. Check Makefile.am for how it's using LIBRSYNC_CFLAGS
echo -e "\nChecking Makefile.am for LIBRSYNC_CFLAGS usage..."
grep "LIBRSYNC_CFLAGS" src/Makefile.am

# 6. Check config.log for librsync detection details
echo -e "\nChecking config.log for librsync detection details..."
if [ -f config.log ]; then
  grep -A 10 "librsync.h" config.log | head -20
else
  echo "config.log not found"
fi

# 7. Check generated Makefile for LIBRSYNC_CFLAGS
echo -e "\nChecking generated Makefile for LIBRSYNC_CFLAGS..."
if [ -f src/Makefile ]; then
  grep "LIBRSYNC_CFLAGS" src/Makefile
else
  echo "src/Makefile not found"
fi

echo -e "\n=== Debugging complete ==="