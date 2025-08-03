#!/bin/bash
# Enhanced db_filter.sh to normalize database output format differences
# Handles SQLite, PostgreSQL, and MySQL output format variations

DATABASE=$1

# Remove standard headers that are common
grep -v "peername	filename	operation	other	op" | \
grep -v "filename" | \

# Database-specific normalization
case "$DATABASE" in
    "sqlite")
        # Remove SQLite table borders and normalize spacing
        sed -e 's/^| *//' \
            -e 's/ *|$//' \
            -e 's/ *| */\t/g' \
            -e 's/\t\t/\t-\t/g' \
            -e 's/\t$/\t-/'
        ;;
    "pgsql")
        # Remove PostgreSQL row count lines and normalize spacing  
        grep -v "([0-9]* rows*)" | \
        sed -e 's/^ *//' \
            -e 's/ *| */\t/g' \
            -e 's/\t *$//' \
            -e 's/^$//' \
            -e '/^$/d' \
            -e 's/\t\t/\t-\t/g' \
            -e 's/\t$/\t-/'
        ;;
    "mysql")
        # MySQL uses same format as SQLite - remove table borders and normalize spacing
        sed -e 's/^| *//' \
            -e 's/ *|$//' \
            -e 's/ *| */\t/g' \
            -e 's/NULL/-/g'
        ;;
    *)
        # Default case - pass through unchanged
        cat
        ;;
esac | \

# Apply common path normalization
./normalize_logs.sh | ./normalize_paths.sh

