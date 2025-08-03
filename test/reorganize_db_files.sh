#!/bin/bash

# Script to reorganize database test files from:
# test/simple/1/4.mysql.res -> test/simple/1/mysql/4.res
# test/simple/1/4.sqlite.res -> test/simple/1/sqlite/4.res
# test/simple/1/4.pgsql.res -> test/simple/1/pgsql/4.res

set -e

DRY_RUN=false
VERBOSE=false

usage() {
    echo "Usage: $0 [options]"
    echo "Options:"
    echo "  -n, --dry-run    Show what would be done without making changes"
    echo "  -v, --verbose    Show detailed output"
    echo "  -h, --help       Show this help"
    exit 1
}

# Parse command line arguments
while [[ $# -gt 0 ]]; do
    case $1 in
        -n|--dry-run)
            DRY_RUN=true
            shift
            ;;
        -v|--verbose)
            VERBOSE=true
            shift
            ;;
        -h|--help)
            usage
            ;;
        *)
            echo "Unknown option: $1"
            usage
            ;;
    esac
done

log() {
    if [[ "$VERBOSE" == "true" ]]; then
        echo "$@"
    fi
}

# Find all database files with old naming pattern
find . -name "*.mysql.res" -o -name "*.sqlite.res" -o -name "*.pgsql.res" | while read -r file; do
    log "Processing: $file"
    
    # Extract directory, filename, and database type
    dir=$(dirname "$file")
    basename=$(basename "$file")
    
    # Extract database type and new filename
    if [[ "$basename" =~ ^(.+)\.(mysql|sqlite|pgsql)\.res$ ]]; then
        prefix="${BASH_REMATCH[1]}"
        db_type="${BASH_REMATCH[2]}"
        new_filename="${prefix}.db.res"
        
        # Create target directory
        target_dir="$dir/$db_type"
        target_file="$target_dir/$new_filename"
        
        echo "Moving: $file -> $target_file"
        
        if [[ "$DRY_RUN" == "false" ]]; then
            # Create directory if it doesn't exist
            mkdir -p "$target_dir"
            
            # Move the file
            mv "$file" "$target_file"
            log "✓ Moved successfully"
        else
            log "✓ Would move (dry run)"
        fi
    else
        log "Skipping $basename - doesn't match expected pattern"
    fi
done

# Also handle .db files if they exist
find . -name "*.mysql.db" -o -name "*.sqlite.db" -o -name "*.pgsql.db" | while read -r file; do
    log "Processing DB file: $file"
    
    # Extract directory, filename, and database type
    dir=$(dirname "$file")
    basename=$(basename "$file")
    
    # Extract database type and new filename
    if [[ "$basename" =~ ^(.+)\.(mysql|sqlite|pgsql)\.db$ ]]; then
        prefix="${BASH_REMATCH[1]}"
        db_type="${BASH_REMATCH[2]}"
        new_filename="${prefix}.db"
        
        # Create target directory
        target_dir="$dir/$db_type"
        target_file="$target_dir/$new_filename"
        
        echo "Moving: $file -> $target_file"
        
        if [[ "$DRY_RUN" == "false" ]]; then
            # Create directory if it doesn't exist
            mkdir -p "$target_dir"
            
            # Move the file
            mv "$file" "$target_file"
            log "✓ Moved successfully"
        else
            log "✓ Would move (dry run)"
        fi
    else
        log "Skipping $basename - doesn't match expected pattern"
    fi
done

echo "Done!"
