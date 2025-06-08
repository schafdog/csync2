#!/bin/bash
#
# update_touch_commands.sh - Update remaining touch commands to use portable_touch.sh
#

# List of files to update
files=(
    "auto_resolve_younger.test"
    "sort_order.test"
    "test_new_modified_rm.test"
    "test_action.test"
    "test_compare.test"
    "test_dir_time.test"
)

echo "Updating touch commands in test files..."

for file in "${files[@]}"; do
    if [[ -f "$file" ]]; then
        echo "Updating $file..."
        
        # Replace simple touch commands
        sed -i.bak 's|^touch |./portable_touch.sh |g' "$file"
        sed -i.bak 's|touch -m |./portable_touch.sh -m |g' "$file"
        sed -i.bak 's|touch -d |./portable_touch.sh -d |g' "$file"
        sed -i.bak 's|touch -m -d |./portable_touch.sh -m -d |g' "$file"
        
        # Replace touch commands in find -exec
        sed -i.bak 's|touch -m -d |./portable_touch.sh -m -d |g' "$file"
        sed -i.bak 's|touch -d |./portable_touch.sh -d |g' "$file"
        
        # Clean up backup file
        rm -f "$file.bak"
        
        echo "  ✓ Updated $file"
    else
        echo "  ⚠ File not found: $file"
    fi
done

echo "Done updating touch commands."
