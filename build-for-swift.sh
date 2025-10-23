#!/bin/bash
#
# build-for-swift.sh - Build C++ objects without ASAN, then Swift executable
#

set -e

echo "Building csync2 with Swift wrapper"
echo "===================================="
echo

# Step 1: Clean and rebuild C++ without ASAN
echo "Step 1: Building C++ objects without AddressSanitizer..."
make distclean || true
./autogen.sh
./configure CXXFLAGS="-O2 -g" CFLAGS="-O2 -g"
make

echo
echo "Step 2: Building Swift executable..."
swift build

echo
echo "✓ Build complete!"
echo
echo "Binary location: .build/debug/csync2-swift"
echo
echo "Run with: .build/debug/csync2-swift --help"
