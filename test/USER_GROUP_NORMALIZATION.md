# User/Group Normalization for Cross-Platform Test Compatibility

## Overview

This document describes the user/group normalization system implemented to mask differences in user IDs, group IDs, usernames, and group names between different systems when running csync2 tests.

## Problem

Test output contains system-specific user and group information that varies between platforms:

**macOS Example**:
```
Command: local: SIG /path/to/file user/group 501 20 dennis staff 16877 - 160 xxxxxxxx
Command: local: MKDIR /path/to/dir - 501 20 dennis staff 16877 - 160 xxxxxxxx
Changing owner of /tmp/csync2/Users to user 0 and group 80, rc= -1
```

**Linux Example**:
```
Command: local: SIG /path/to/file user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxx
Command: local: MKDIR /path/to/dir - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxx
Changing owner of /tmp/csync2/export/home to user 0 and group 0, rc= -1
```

### Key Differences

1. **User ID**: `501` (macOS) vs `1234` (Linux)
2. **Group ID**: `20` (macOS) vs `1000` (Linux)
3. **Group Name**: `staff` (macOS) vs `schafroth` (Linux)
4. **Directory Size**: `160` (macOS) vs `4096` (Linux)
5. **Temp Paths**: `/tmp/csync2/Users` vs `/tmp/csync2/export/home`

## Solution

### Normalization Patterns

The `normalize_paths.sh` script includes the following normalization patterns:

```bash
# Normalize user/group in "user/group UID GID USER GROUP" format
-e "s|user/group [0-9]* [0-9]* [^ ]* [^ ]*|user/group <UID> <GID> <USER> <GROUP>|g"

# Normalize user/group in "- UID GID USER GROUP" format  
-e "s|- [0-9]* [0-9]* [^ ]* [^ ]* |- <UID> <GID> <USER> <GROUP> |g"

# Normalize directory sizes (filesystem-dependent)
-e "s|16877 - 160|16877 - <DIRSIZE>|g"
-e "s|16877 - 4096|16877 - <DIRSIZE>|g"

# Normalize ownership change messages
-e "s|Changing owner of /tmp/csync2/[^ ]* to user [0-9]* and group [0-9]*, rc= -1|Changing owner of /tmp/csync2/<PATH> to user <UID> and group <GID>, rc= -1|g"
```

### Normalized Output

Both macOS and Linux output becomes:

```
Command: local: SIG <TESTBASE>/test/file user/group <UID> <GID> <USER> <GROUP> 16877 - <BLOCKSIZE> xxxxxxxx
Command: local: MKDIR <TESTBASE>/test/dir - <UID> <GID> <USER> <GROUP> 16877 - <DIRSIZE> xxxxxxxx
Changing owner of /tmp/csync2/<PATH> to user <UID> and group <GID>, rc= -1
```

## Implementation Details

### Pattern Matching

The normalization uses sed regular expressions to match and replace:

1. **Numeric patterns**: `[0-9]*` matches user/group IDs
2. **Word patterns**: `[^ ]*` matches usernames and group names (non-space characters)
3. **Path patterns**: Specific paths are replaced with generic placeholders

### Multiple Formats

The script handles multiple output formats where user/group information appears:

1. **Format 1**: `user/group 501 20 dennis staff`
2. **Format 2**: `- 501 20 dennis staff 16877`
3. **Format 3**: `to user 0 and group 80`

### Directory Size Normalization

Directory sizes vary between different filesystems:
- **macOS (APFS/HFS+)**: Directories often have 160-byte size
- **Linux (ext4/xfs)**: Directories often have 4096-byte size

This is normal filesystem behavior - the same directory will have different sizes on different filesystems due to different directory entry structures and metadata storage. Both are normalized to `<DIRSIZE>` placeholder.

## Testing

### Before Normalization

```diff
< Command: local: SIG <TESTBASE>/test/peer user/group 501 20 dennis staff 16877 - 160 xxxxxxxx
---
> Command: local: SIG <TESTBASE>/test/peer user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxx
```

### After Normalization

```
Command: local: SIG <TESTBASE>/test/peer user/group <UID> <GID> <USER> <GROUP> 16877 - <DIRSIZE> xxxxxxxx
```

Both systems produce identical normalized output.

## Benefits

1. **Cross-platform compatibility**: Tests produce consistent output regardless of system user/group configuration
2. **Maintainable**: Single set of reference files works on all platforms
3. **Comprehensive**: Handles all known user/group output formats in csync2
4. **Future-proof**: Generic placeholders accommodate different system configurations

## Integration

The normalization is automatically applied through:

1. **Command output**: All csync2 command output is piped through `normalize_paths.sh`
2. **Daemon logs**: Daemon log files are processed with normalization
3. **Test infrastructure**: Integrated into `local.sh` test runner
4. **Reference files**: All `.res` files are updated with normalized output

This ensures that user/group differences don't cause test failures while preserving the functional verification of csync2 behavior.
