#!/bin/bash
#
# update_test_references.sh - Update test reference files with normalized paths
#
# This script updates all .res files to use normalized paths for cross-platform compatibility
#

echo "Updating test reference files with normalized paths..."

# Find all .res files and update them
for res_file in $(find . -name "*.res" -type f); do
    echo "Updating $res_file"
    # Create a backup
    cp "$res_file" "$res_file.backup"
    
    # Apply path normalization
    ./normalize_paths.sh < "$res_file.backup" > "$res_file"
    
    # Remove backup if successful
    if [ $? -eq 0 ]; then
        rm "$res_file.backup"
        echo "  ✓ Updated $res_file"
    else
        echo "  ✗ Failed to update $res_file, restoring backup"
        mv "$res_file.backup" "$res_file"
    fi
done

echo "Done updating test reference files."
