#!/usr/bin/env bash

echo "=== Debugging source_hash.sh ==="
echo "Current directory: $(pwd)"
echo "System: $(uname -a)"
echo

# Generate file list once and store in variable
echo "Generating file list..."
FILES=$(find src/ -maxdepth 1 \( -name "*.l" -o -name "*.y" -o -name "*.cpp" -o -name "*.hpp" \) -type f | sort)

echo "Files found by find command:"
echo "$FILES"
echo

echo "Number of files found: $(echo "$FILES" | wc -l)"
echo

echo "File sizes:"
echo "$FILES" | xargs -r ls -la
echo

# Create concatenated content once
echo "Creating concatenated content..."
CONTENT=$(echo "$FILES" | xargs -r cat)

echo "First 200 characters of concatenated content:"
echo "$CONTENT" | head -c 200
echo
echo

echo "Last 200 characters of concatenated content:"  
echo "$CONTENT" | tail -c 200
echo
echo

echo "Total character count:"
echo "$CONTENT" | wc -c
echo

echo "Line ending check (first file):"
first_file=$(echo "$FILES" | head -1)
if [ -n "$first_file" ]; then
    echo "First file: $first_file"
    echo "Contains CRLF: $(file "$first_file" | grep -c CRLF || echo "0")"
    echo "Hex dump of first 100 bytes:"
    hexdump -C "$first_file" | head -5
fi
echo

echo "Final hash from source_hash.sh:"
./test/source_hash.sh
echo

echo "Manual hash calculation from stored content:"
echo "$CONTENT" | sha256sum | cut -d' ' -f1
echo

echo "Manual hash calculation (fresh run):"
echo "$FILES" | xargs -r cat | sha256sum | cut -d' ' -f1
echo

echo "Git status (checking for uncommitted changes):"
git status --porcelain src/
echo

echo "Git current commit:"
git rev-parse HEAD
echo