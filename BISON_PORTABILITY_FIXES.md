# Bison Portability Fixes for macOS and Linux

## Problem Description

The original csync2 build system used `AM_YFLAGS = -d -Wno-yacc` in `src/Makefile.am`, but the older version of bison that ships with macOS Xcode doesn't support the `-W` option, causing build failures with:

```
XcodeDefault.xctoolchain/usr/bin/bison: invalid option -- W
```

## Root Cause

- **macOS System Bison**: Ships with an older version (typically 2.3) that doesn't support `-W` options
- **Linux Distributions**: Usually have newer bison versions (3.0+) that support `-W` options
- **Homebrew Bison**: Provides modern bison versions that support `-W` options

## Solution Overview

We implemented a **dynamic detection system** that:

1. **Detects bison capabilities** at configure time
2. **Sets appropriate flags** based on what the bison version supports
3. **Provides helpful guidance** for users on macOS
4. **Maintains compatibility** across all platforms

## Changes Made

### 1. Configure Script (`configure.ac`)

**Before:**
```bash
AC_PROG_YACC
```

**After:**
```bash
AC_PROG_YACC

# Check for bison capabilities
AC_MSG_CHECKING([if bison supports -W option])
if test "x$YACC" != "x"; then
    # Create a minimal test grammar and test -Wno-yacc
    cat > conftest.y << 'EOF'
%{
int yylex(void);
void yyerror(const char *s);
%}
%token TEST
%%
test: TEST;
%%
void yyerror(const char *s) {}
int yylex(void) { return 0; }
EOF
    
    if $YACC -d -Wno-yacc conftest.y >/dev/null 2>&1; then
        AC_MSG_RESULT([yes])
        AM_YFLAGS="-d -Wno-yacc"
    else
        AC_MSG_RESULT([no])
        AM_YFLAGS="-d"
    fi
    
    rm -f conftest.y conftest.tab.c conftest.tab.h y.tab.c y.tab.h
else
    AC_MSG_RESULT([yacc not found])
    AM_YFLAGS="-d"
fi
AC_SUBST([AM_YFLAGS])
```

### 2. Makefile (`src/Makefile.am`)

**Before:**
```makefile
AM_YFLAGS = -d -Wno-yacc
```

**After:**
```makefile
# AM_YFLAGS is set by configure.ac based on bison capabilities
```

### 3. macOS Detection and Warnings

Added macOS-specific detection in `configure.ac`:

```bash
case "$host_os" in
    darwin*)
        AC_MSG_NOTICE([Detected macOS - checking for Homebrew bison])
        if test "x$YACC" != "x"; then
            YACC_PATH=`which $YACC 2>/dev/null`
            if echo "$YACC_PATH" | grep -q "/usr/bin/"; then
                AC_MSG_WARN([Using system bison which may be outdated. Consider installing Homebrew bison:])
                AC_MSG_WARN([  brew install bison])
                AC_MSG_WARN([  export PATH="/opt/homebrew/opt/bison/bin:\$PATH"  # for Apple Silicon])
                AC_MSG_WARN([  export PATH="/usr/local/opt/bison/bin:\$PATH"     # for Intel])
            fi
        fi
        ;;
esac
```

## New Helper Scripts

### 1. `setup-macos.sh`
Automated setup script for macOS that:
- Installs all required dependencies via Homebrew
- Creates environment setup script
- Detects Apple Silicon vs Intel architecture
- Sets up proper PATH for Homebrew tools

### 2. `test-bison.sh`
Comprehensive bison testing script that:
- Tests basic bison functionality
- Checks for `-W` option support
- Provides platform-specific guidance
- Validates the actual flags csync2 will use

### 3. `test-build.sh`
Build system validation script that:
- Checks for all required tools
- Tests autogen.sh and configure
- Validates bison parser generation
- Provides helpful error messages

## Usage Instructions

### For macOS Users (Recommended):

1. **Automated Setup:**
   ```bash
   ./setup-macos.sh
   source setup-env.sh
   ./autogen.sh
   ./configure
   make
   ```

2. **Manual Setup:**
   ```bash
   brew install bison autoconf automake libtool flex
   export PATH="/opt/homebrew/opt/bison/bin:$PATH"  # Apple Silicon
   # or
   export PATH="/usr/local/opt/bison/bin:$PATH"     # Intel
   ./autogen.sh
   ./configure
   make
   ```

### For Linux Users:

```bash
# Install dependencies (Ubuntu/Debian)
sudo apt-get install bison flex autoconf automake libtool

# Build normally
./autogen.sh
./configure
make
```

## Testing and Validation

### Test Results ✅

The fix has been successfully tested on macOS with both system and Homebrew bison:

**System Bison (macOS Xcode):**
```
checking if bison supports -W option... no
bison -y -d cfgfile_parser.y  # Uses fallback flags
```

**Homebrew Bison (Modern):**
```
checking if bison supports -W option... yes
bison -y -d -Wno-yacc cfgfile_parser.y  # Uses modern flags
```

### Test Bison Compatibility:
```bash
./test-bison.sh
```

### Test Full Build System:
```bash
./test-build.sh
```

## Benefits

1. **Cross-Platform Compatibility**: Works on both macOS and Linux without manual intervention
2. **Automatic Detection**: No need to manually set YACC variables
3. **Helpful Guidance**: Clear instructions when issues are detected
4. **Backward Compatibility**: Works with both old and new bison versions
5. **Easy Setup**: Automated scripts for quick environment setup

## Technical Details

### Bison Version Support:
- **Bison 2.x** (macOS system): Uses `AM_YFLAGS="-d"`
- **Bison 3.x+** (Homebrew/Linux): Uses `AM_YFLAGS="-d -Wno-yacc"`

### Detection Method:
The configure script creates a minimal test grammar and attempts to compile it with `-d -Wno-yacc` flags. If this succeeds, the modern flags are used; otherwise, it falls back to the basic `-d` flag.

### Platform-Specific Handling:
- **macOS**: Detects system vs Homebrew bison and provides upgrade guidance
- **Linux**: Uses distribution bison (usually modern)
- **Other**: Falls back to basic detection

## Troubleshooting

### Common Issues:

1. **"bison: invalid option -- W"**
   - **Solution**: Run `./setup-macos.sh` or install Homebrew bison manually

2. **"yacc not found"**
   - **Solution**: Install bison/yacc package for your platform

3. **Build fails after configure**
   - **Solution**: Run `./test-build.sh` to diagnose issues

### Verification Commands:

```bash
# Check bison version and capabilities
bison --version
./test-bison.sh

# Check if environment is set up correctly
which bison
echo $PATH

# Test the build system
./test-build.sh
```

This solution ensures csync2 builds successfully across all platforms while providing clear guidance when issues are encountered.
