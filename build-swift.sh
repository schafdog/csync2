#!/bin/bash
#
# build-swift.sh - Convenience script for building Swift version of csync2
#

set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

echo -e "${GREEN}Csync2 Swift Build Script${NC}"
echo "=========================="
echo

# Check Swift version
echo "Checking Swift version..."
if ! command -v swift &> /dev/null; then
    echo -e "${RED}Error: Swift is not installed${NC}"
    echo "Please install Swift 5.9 or later"
    echo "Visit: https://swift.org/install/"
    exit 1
fi

SWIFT_VERSION=$(swift --version | head -n1)
echo -e "${GREEN}✓${NC} Found: $SWIFT_VERSION"
echo

# Parse command line arguments
BUILD_CONFIG="debug"
RUN_TESTS=false
CLEAN=false
RUN_AFTER_BUILD=false

while [[ $# -gt 0 ]]; do
    case $1 in
        --release|-r)
            BUILD_CONFIG="release"
            shift
            ;;
        --test|-t)
            RUN_TESTS=true
            shift
            ;;
        --clean|-c)
            CLEAN=true
            shift
            ;;
        --run)
            RUN_AFTER_BUILD=true
            shift
            ;;
        --help|-h)
            echo "Usage: $0 [OPTIONS]"
            echo
            echo "Options:"
            echo "  --release, -r    Build in release mode (default: debug)"
            echo "  --test, -t       Run tests after building"
            echo "  --clean, -c      Clean before building"
            echo "  --run            Run csync2-swift after building"
            echo "  --help, -h       Show this help message"
            echo
            exit 0
            ;;
        *)
            echo -e "${RED}Unknown option: $1${NC}"
            echo "Use --help for usage information"
            exit 1
            ;;
    esac
done

# Clean if requested
if [ "$CLEAN" = true ]; then
    echo "Cleaning build artifacts..."
    swift package clean
    echo -e "${GREEN}✓${NC} Clean complete"
    echo
fi

# Build
echo "Building csync2-swift (${BUILD_CONFIG})..."
if [ "$BUILD_CONFIG" = "release" ]; then
    swift build -c release
    BINARY_PATH=".build/release/csync2-swift"
else
    swift build
    BINARY_PATH=".build/debug/csync2-swift"
fi

if [ $? -eq 0 ]; then
    echo -e "${GREEN}✓${NC} Build successful"
    echo
    echo "Binary location: ${BINARY_PATH}"

    # Show binary info
    if [ -f "$BINARY_PATH" ]; then
        BINARY_SIZE=$(du -h "$BINARY_PATH" | cut -f1)
        echo "Binary size: ${BINARY_SIZE}"
    fi
else
    echo -e "${RED}✗${NC} Build failed"
    exit 1
fi

# Run tests if requested
if [ "$RUN_TESTS" = true ]; then
    echo
    echo "Running tests..."
    swift test
    if [ $? -eq 0 ]; then
        echo -e "${GREEN}✓${NC} All tests passed"
    else
        echo -e "${RED}✗${NC} Some tests failed"
        exit 1
    fi
fi

# Run if requested
if [ "$RUN_AFTER_BUILD" = true ]; then
    echo
    echo "Running csync2-swift..."
    echo "======================"
    "$BINARY_PATH" --version
fi

echo
echo -e "${GREEN}Done!${NC}"
echo
echo "To run the Swift version:"
echo "  swift run csync2-swift --help"
echo "  ${BINARY_PATH} --help"
echo
echo "To run tests:"
echo "  swift test"
echo
echo "Migration status: Phase 1 Complete (Foundation)"
echo "Next steps: See SWIFT_MIGRATION.md"
