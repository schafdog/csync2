#!/usr/bin/env bash
echo "=== Collecting test artifacts ==="
mkdir -p test-artifacts
        
# Copy basic test files
cp test/*.log test-artifacts/ 2>/dev/null || true
cp test/test-suite.log test-artifacts/ 2>/dev/null || true
        
# Find and copy all .log, .diff, and .res files from subdirectories
find test -name "*.log" -type f -exec cp --parents {} test-artifacts/ \; 2>/dev/null || true
find test -name "*.diff" -type f -exec cp --parents {} test-artifacts/ \; 2>/dev/null || true
find test -name "*.res" -type f -exec cp --parents {} test-artifacts/ \; 2>/dev/null || true
        
# Find directories containing .diff files and copy them entirely
find test -name "*.diff" -type f -exec dirname {} \; | sort -u | while read dir; do
    echo "Found diff directory: $dir"
    mkdir -p "test-artifacts/$dir"
    cp -r "$dir"/* "test-artifacts/$dir/" 2>/dev/null || true
done
        
echo "Collected artifacts:"
find test-artifacts -type f | head -20
