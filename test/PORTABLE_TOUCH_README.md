# Portable Touch Implementation

## Overview

The csync2 test suite now uses a portable touch command wrapper (`portable_touch.sh`) to ensure consistent behavior across different Unix systems, particularly between GNU (Linux) and BSD (macOS) systems.

## Problem

The `touch` command has different syntax between systems:

- **GNU touch (Linux)**: `touch -d "2021-05-08"` or `touch -d "2021-05-08 20:00:00"`
- **BSD touch (macOS)**: `touch -t 202105081200` or `touch -t 202105082000.00`

This caused test failures when running the same test suite on different platforms.

## Solution

### portable_touch.sh

A wrapper script that:

1. **Detects the touch command type** (GNU vs BSD)
2. **Converts ISO date formats** to the appropriate system format
3. **Provides a unified interface** for all test scripts

### Supported Formats

- **Date only**: `YYYY-MM-DD` (e.g., "2021-05-08")
- **Date and time**: `YYYY-MM-DD HH:MM:SS` (e.g., "2021-05-08 20:00:00")

### Usage Examples

```bash
# Create/update file with current timestamp
./portable_touch.sh file.txt

# Set specific date
./portable_touch.sh -d "2021-05-08" file.txt

# Set specific date and time
./portable_touch.sh -d "2021-05-08 20:00:00" file.txt

# Modify only (don't update access time)
./portable_touch.sh -m -d "2021-05-08" file.txt

# Multiple files
./portable_touch.sh -d "2021-05-08" file1.txt file2.txt

# Use with find
find . -name "*.txt" -exec ./portable_touch.sh -d "2021-05-08" {} \;
```

## Updated Test Files

All test files have been updated to use `portable_touch.sh`:

- `test_simple.test`
- `test_delete_both.test`
- `test_different.test`
- `maildir.test`
- `recursive.test`
- `auto_resolve_older.test`
- `auto_resolve_younger.test`
- `sort_order.test`
- `test_new_modified_rm.test`
- `test_action.test`
- `test_compare.test`
- `test_dir_time.test`

## Implementation Details

### Date Conversion

The script converts ISO dates to BSD format:

- `2021-05-08` → `202105081200` (defaults to noon)
- `2021-05-08 20:00:00` → `202105082000.00`

### Detection Logic

```bash
if touch --version 2>/dev/null | grep -q "GNU"; then
    # Use GNU syntax: touch -d "date"
else
    # Use BSD syntax: touch -t "timestamp"
fi
```

## Benefits

1. **Cross-platform compatibility**: Tests work identically on Linux and macOS
2. **Consistent timestamps**: Eliminates timing-related test failures
3. **Maintainable**: Single point of change for touch command behavior
4. **Backward compatible**: Existing test logic remains unchanged

## Testing

The portable touch implementation has been tested with:

- ✅ Date-only formats (`2021-05-08`)
- ✅ DateTime formats (`2021-05-08 20:00:00`)
- ✅ Modify-only flag (`-m`)
- ✅ Multiple files
- ✅ Find command integration
- ✅ GNU touch (Linux simulation)
- ✅ BSD touch (macOS native)

This ensures that csync2 tests produce identical results regardless of the underlying operating system.
