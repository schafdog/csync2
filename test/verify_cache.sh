#!/bin/bash
# Cache verification script for GitHub Actions
# Usage: ./verify_cache.sh <cache_hit_status> <cache_key> [step_name]

set -e

CACHE_HIT="$1"
CACHE_KEY="$2"
STEP_NAME="${3:-cache restoration}"

echo "🔍 Verifying build cache restoration for $STEP_NAME..."
echo "Cache hit: $CACHE_HIT"
echo "Cache key: $CACHE_KEY"

# Check cache hit status
if [ "$CACHE_HIT" != "true" ]; then
  echo "❌ FATAL: Cache miss - no build artifacts found!"
  echo "This means either:"
  echo "  1. Build job failed to create/save cache"
  echo "  2. Cache key mismatch between build and test jobs"
  echo "  3. Cache was evicted"
  exit 1
fi

# Verify critical files exist
CRITICAL_FILES="src/csync2 src/config.h Makefile test/Makefile missing"
MISSING_FILES=""

for file in $CRITICAL_FILES; do
  if [ ! -f "$file" ]; then
    echo "❌ Missing critical file: $file"
    MISSING_FILES="$MISSING_FILES $file"
  else
    echo "✅ Found: $file"
  fi
done

if [ -n "$MISSING_FILES" ]; then
  echo "❌ FATAL: Cache restored but missing critical files:$MISSING_FILES"
  echo "Cache may be corrupted or incomplete"
  exit 1
fi

echo "✅ Cache verification successful - all artifacts present"