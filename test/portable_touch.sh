#!/bin/bash
#
# portable_touch.sh - Portable touch command wrapper for cross-platform compatibility
#
# This script provides a portable interface for setting file timestamps that works
# on both GNU (Linux) and BSD (macOS) systems.
#
# Usage: portable_touch.sh [-m] -d "YYYY-MM-DD [HH:MM:SS]" file1 [file2 ...]
#        portable_touch.sh file1 [file2 ...]  (just create/update files)
#

# Function to convert ISO date to BSD touch format
iso_to_bsd_format() {
    local iso_date="$1"
    
    # Extract date and time components
    if [[ "$iso_date" =~ ^([0-9]{4})-([0-9]{2})-([0-9]{2})$ ]]; then
        # Date only: YYYY-MM-DD
        local year="${BASH_REMATCH[1]}"
        local month="${BASH_REMATCH[2]}"
        local day="${BASH_REMATCH[3]}"
        echo "${year}${month}${day}1200"  # Default to noon
    elif [[ "$iso_date" =~ ^([0-9]{4})-([0-9]{2})-([0-9]{2})[[:space:]]+([0-9]{2}):([0-9]{2}):([0-9]{2})$ ]]; then
        # Date and time: YYYY-MM-DD HH:MM:SS
        local year="${BASH_REMATCH[1]}"
        local month="${BASH_REMATCH[2]}"
        local day="${BASH_REMATCH[3]}"
        local hour="${BASH_REMATCH[4]}"
        local minute="${BASH_REMATCH[5]}"
        local second="${BASH_REMATCH[6]}"
        echo "${year}${month}${day}${hour}${minute}.${second}"
    else
        echo "Error: Invalid date format: $iso_date" >&2
        echo "Expected: YYYY-MM-DD or YYYY-MM-DD HH:MM:SS" >&2
        return 1
    fi
}

# Detect the touch command type
detect_touch_type() {
    if touch --version 2>/dev/null | grep -q "GNU"; then
        echo "gnu"
    else
        echo "bsd"
    fi
}

# Main function
main() {
    local modify_only=false
    local date_string=""
    local files=()
    
    # Parse arguments
    while [[ $# -gt 0 ]]; do
        case $1 in
            -m)
                modify_only=true
                shift
                ;;
            -d)
                date_string="$2"
                shift 2
                ;;
            -*)
                echo "Error: Unknown option $1" >&2
                return 1
                ;;
            *)
                files+=("$1")
                shift
                ;;
        esac
    done
    
    # If no date specified, just use regular touch
    if [[ -z "$date_string" ]]; then
        if [[ "$modify_only" == true ]]; then
            touch -m "${files[@]}"
        else
            touch "${files[@]}"
        fi
        return $?
    fi
    
    # Detect touch type and format accordingly
    local touch_type=$(detect_touch_type)
    
    if [[ "$touch_type" == "gnu" ]]; then
        # GNU touch (Linux)
        if [[ "$modify_only" == true ]]; then
            touch -m -d "$date_string" "${files[@]}"
        else
            touch -d "$date_string" "${files[@]}"
        fi
    else
        # BSD touch (macOS)
        local bsd_format=$(iso_to_bsd_format "$date_string")
        if [[ $? -ne 0 ]]; then
            return 1
        fi
        
        if [[ "$modify_only" == true ]]; then
            touch -m -t "$bsd_format" "${files[@]}"
        else
            touch -t "$bsd_format" "${files[@]}"
        fi
    fi
}

# Run main function with all arguments
main "$@"
