# macOS PostgreSQL Dynamic Library Guide

## Problem Description

On macOS, even when PostgreSQL is installed via Homebrew and detected during the build process, you may encounter runtime errors like:

```
dyld: Library not loaded: /opt/homebrew/lib/libpq.5.dylib
Referenced from: ./src/csync2
Reason: image not found
```

This happens because macOS uses a different dynamic library loading mechanism than Linux, and the runtime linker doesn't know where to find the PostgreSQL libraries.

## Root Cause

1. **Homebrew Installation Path**: PostgreSQL libraries are installed in non-standard locations:
   - Apple Silicon: `/opt/homebrew/lib/`
   - Intel: `/usr/local/lib/`

2. **Runtime vs Build Time**: The build process finds libraries via pkg-config, but the runtime linker uses different search paths.

3. **Missing RPATH**: The binary doesn't have the correct runtime library paths embedded.

## Solutions Implemented

### 1. Automatic RPATH Configuration (Recommended)

The autotools modernization includes automatic macOS detection and RPATH configuration in configure.ac.

### 2. Environment Setup Script

Use the provided `setup-macos.sh` script:

```bash
./setup-macos.sh
source setup-env.sh
./autogen.sh
make
```

### 3. Manual Solutions (If Needed)

#### Option A: Set DYLD_LIBRARY_PATH
```bash
export DYLD_LIBRARY_PATH="/opt/homebrew/lib:$DYLD_LIBRARY_PATH"  # Apple Silicon
```

#### Option B: Add RPATH to Existing Binary
```bash
HOMEBREW_PREFIX=$(brew --prefix)
install_name_tool -add_rpath "$HOMEBREW_PREFIX/lib" ./src/csync2
```

## Verification

### Check Binary RPATH
```bash
otool -l ./src/csync2 | grep -A 2 LC_RPATH
```

### Test Runtime Loading
```bash
./src/csync2 -h
```

This guide ensures PostgreSQL works reliably on macOS with csync2.
