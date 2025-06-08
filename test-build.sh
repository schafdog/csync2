#!/bin/bash
# Test script to verify the build system works with bison fixes

set -e

echo "=== Csync2 Build Test ==="
echo

# Check if we're in the right directory
if [ ! -f "configure.ac" ] || [ ! -f "src/Makefile.am" ]; then
    echo "❌ Error: This script must be run from the csync2 root directory"
    exit 1
fi

echo "✓ Found configure.ac and src/Makefile.am"

# Check for required tools
echo "Checking for required build tools..."

MISSING_TOOLS=()

if ! command -v autoconf &> /dev/null; then
    MISSING_TOOLS+=("autoconf")
fi

if ! command -v automake &> /dev/null; then
    MISSING_TOOLS+=("automake")
fi

if ! command -v libtool &> /dev/null && ! command -v glibtool &> /dev/null; then
    MISSING_TOOLS+=("libtool")
fi

if ! command -v bison &> /dev/null; then
    MISSING_TOOLS+=("bison")
fi

if ! command -v flex &> /dev/null; then
    MISSING_TOOLS+=("flex")
fi

if [ ${#MISSING_TOOLS[@]} -ne 0 ]; then
    echo "❌ Missing required tools: ${MISSING_TOOLS[*]}"
    echo
    case "$OSTYPE" in
        darwin*)
            echo "On macOS, install with Homebrew:"
            echo "  brew install ${MISSING_TOOLS[*]}"
            echo "Or run: ./setup-macos.sh"
            ;;
        linux*)
            echo "On Ubuntu/Debian:"
            echo "  sudo apt-get install ${MISSING_TOOLS[*]// /dev }-dev"
            echo "On RHEL/CentOS/Fedora:"
            echo "  sudo yum install ${MISSING_TOOLS[*]}"
            ;;
    esac
    exit 1
fi

echo "✓ All required tools found"

# Test bison specifically
echo "Testing bison compatibility..."
./test-bison.sh

echo
echo "Running autogen.sh..."
if [ -f "autogen.sh" ]; then
    ./autogen.sh
else
    echo "❌ autogen.sh not found"
    exit 1
fi

echo
echo "Running configure..."
if ./configure --help > /dev/null; then
    echo "✓ configure --help works"
else
    echo "❌ configure --help failed"
    exit 1
fi

# Try a minimal configure
echo "Testing configure with minimal options..."
if ./configure --disable-mysql --disable-postgres --disable-gnutls --enable-sqlite3; then
    echo "✓ configure completed successfully"
else
    echo "❌ configure failed"
    exit 1
fi

echo
echo "Testing make (parser generation)..."
# Just test the parser generation, not full build
if make -C src cfgfile_parser.h; then
    echo "✓ Bison parser generation works"
else
    echo "❌ Bison parser generation failed"
    exit 1
fi

echo
echo "=== Build Test Results ==="
echo "✅ All tests passed!"
echo "✓ autogen.sh works"
echo "✓ configure works"
echo "✓ bison parser generation works"
echo
echo "The build system is working correctly."
echo "You can now run 'make' to build the full project."

# Clean up test files
echo
echo "Cleaning up test files..."
make clean > /dev/null 2>&1 || true
rm -f config.log config.status
rm -rf autom4te.cache

echo "✓ Cleanup complete"
