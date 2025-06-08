# Raw Log File Cleanup Fix

## Problem

The test infrastructure was leaving behind `peer.log.raw` files after test runs, causing disk space accumulation and clutter in test directories.

## Root Cause Analysis

### File Creation
In `local.sh` line 155, the daemon creates raw log files:
```bash
${PROG} -y -q -K csync2_${DATABASE}_${DCFG}.cfg -N $DCFG -z $DNAME -iiiiB$DEBUG > ${TESTNAME}/${LEVEL}/$DCFG.log.raw 2>&1 &
```

### File Processing
In `local.sh` lines 235-237, the script processes the raw file:
```bash
if [ -f ${TESTNAME}/${LEVEL}/peer.log.raw ]; then
    cat ${TESTNAME}/${LEVEL}/peer.log.raw | sed "s/<[0-9]*> //" | grep -a -v connection | ./normalize_paths.sh > ${TESTNAME}/${LEVEL}/peer.log
else
    # Fallback processing...
fi
```

### Missing Cleanup
The script processed the raw file to create the final log but **never removed the raw file**, causing accumulation.

## Solution Implemented

### 1. Added Cleanup in local.sh

**Before**:
```bash
if [ -f ${TESTNAME}/${LEVEL}/peer.log.raw ]; then
    cat ${TESTNAME}/${LEVEL}/peer.log.raw | sed "s/<[0-9]*> //" | grep -a -v connection | ./normalize_paths.sh > ${TESTNAME}/${LEVEL}/peer.log
else
    # Fallback...
fi
```

**After**:
```bash
if [ -f ${TESTNAME}/${LEVEL}/peer.log.raw ]; then
    cat ${TESTNAME}/${LEVEL}/peer.log.raw | sed "s/<[0-9]*> //" | grep -a -v connection | ./normalize_paths.sh > ${TESTNAME}/${LEVEL}/peer.log
    # Remove the raw log file after processing
    rm ${TESTNAME}/${LEVEL}/peer.log.raw
else
    # Fallback...
fi
```

### 2. Created Cleanup Utility Script

**File**: `cleanup_raw_logs.sh`

Features:
- **Automatic detection**: Finds all `*.log.raw` files in test directories
- **Safe operation**: Asks for confirmation unless `--force` flag is used
- **Verification**: Confirms successful cleanup
- **User-friendly**: Colored output and clear status messages

**Usage**:
```bash
# Interactive cleanup
./cleanup_raw_logs.sh

# Force cleanup without confirmation
./cleanup_raw_logs.sh --force
```

### 3. Updated Build System

Added new scripts to `Makefile.am`:
```makefile
EXTRA_DIST = $(check_SCRIPTS) portable_touch.sh update_touch_commands.sh normalize_paths.sh update_test_references.sh \
	update_database_collation.sh create_csync2_schema.sql cleanup_raw_logs.sh
```

## Testing and Verification

### Before Fix
```bash
$ find . -name "*.log.raw" -type f | wc -l
      47
```

### After Fix
```bash
$ ./local.sh test_simple.test
# Test completes successfully

$ find . -name "*.log.raw" -type f | wc -l
       0
```

### Cleanup Utility Test
```bash
$ ./cleanup_raw_logs.sh
Cleaning up leftover raw log files...
No raw log files found - already clean!
```

## Benefits

1. **Automatic cleanup**: Raw files are removed immediately after processing
2. **Disk space savings**: Prevents accumulation of temporary files
3. **Cleaner test directories**: Only final processed logs remain
4. **Maintenance utility**: Easy cleanup of existing leftover files
5. **Backward compatibility**: Fallback handling for missing raw files

## File Lifecycle

1. **Creation**: Daemon starts and writes to `peer.log.raw`
2. **Processing**: Raw file is processed with normalization to create `peer.log`
3. **Cleanup**: Raw file is automatically removed after processing
4. **Result**: Only the final processed `peer.log` remains

## Impact

- ✅ **No more file accumulation**: Raw files are cleaned up automatically
- ✅ **Preserved functionality**: All log processing continues to work
- ✅ **Improved maintenance**: Cleanup utility for existing files
- ✅ **Better disk usage**: Temporary files don't consume space long-term

This fix ensures that the test infrastructure maintains clean directories while preserving all the log processing and normalization functionality.
