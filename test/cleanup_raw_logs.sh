#!/bin/bash
#
# cleanup_raw_logs.sh - Clean up leftover raw log files from test runs
#
# This script removes temporary .log.raw files that may be left behind
# from interrupted test runs or older versions of the test scripts.
#

set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

echo -e "${YELLOW}Cleaning up leftover raw log files...${NC}"

# Find and count raw log files
RAW_FILES=$(find . -name "*.log.raw" -type f 2>/dev/null)
if [ -z "$RAW_FILES" ]; then
    COUNT=0
else
    COUNT=$(echo "$RAW_FILES" | wc -l)
fi

if [ "$COUNT" -eq 0 ]; then
    echo -e "${GREEN}No raw log files found - already clean!${NC}"
    exit 0
fi

echo -e "${YELLOW}Found $COUNT raw log files:${NC}"
echo "$RAW_FILES"

# Ask for confirmation unless --force is used
if [ "$1" != "--force" ]; then
    echo ""
    echo -e "${YELLOW}These files will be deleted. Continue? (y/N)${NC}"
    read -r response
    if [[ ! "$response" =~ ^[Yy]$ ]]; then
        echo "Cleanup cancelled."
        exit 0
    fi
fi

# Remove the files
echo "$RAW_FILES" | xargs rm -f

echo -e "${GREEN}Cleaned up $COUNT raw log files.${NC}"

# Verify cleanup
REMAINING=$(find . -name "*.log.raw" -type f 2>/dev/null | wc -l)
if [ "$REMAINING" -eq 0 ]; then
    echo -e "${GREEN}✓ All raw log files successfully removed.${NC}"
else
    echo -e "${RED}⚠ Warning: $REMAINING raw log files still remain.${NC}"
    exit 1
fi
