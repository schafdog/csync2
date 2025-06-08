# Linux Testing Guide for Bison Portability Fixes

## Branch Information

**Branch:** `feature/bison-portability-fixes`  
**Repository:** `https://github.com/schafdog/csync2.git`

## Quick Test Commands

```bash
# Clone and checkout the branch
git clone https://github.com/schafdog/csync2.git
cd csync2
git checkout feature/bison-portability-fixes

# Test bison compatibility
./test-bison.sh

# Test full build system
./test-build.sh

# Manual build test
./autogen.sh
./configure --disable-mysql --disable-postgres --enable-sqlite3
make
```

## Detailed Testing Instructions

### 1. Environment Setup

#### Ubuntu/Debian:
```bash
sudo apt-get update
sudo apt-get install -y \
    build-essential \
    autoconf \
    automake \
    libtool \
    bison \
    flex \
    pkg-config \
    libsqlite3-dev \
    libgnutls28-dev \
    libssl-dev \
    librsync-dev
```

#### RHEL/CentOS/Fedora:
```bash
# For RHEL/CentOS 8+
sudo dnf install -y \
    gcc \
    gcc-c++ \
    autoconf \
    automake \
    libtool \
    bison \
    flex \
    pkgconfig \
    sqlite-devel \
    gnutls-devel \
    openssl-devel \
    librsync-devel

# For older versions, use yum instead of dnf
```

#### Arch Linux:
```bash
sudo pacman -S \
    base-devel \
    autoconf \
    automake \
    libtool \
    bison \
    flex \
    pkgconf \
    sqlite \
    gnutls \
    openssl \
    librsync
```

### 2. Clone and Test

```bash
# Clone the repository
git clone https://github.com/schafdog/csync2.git
cd csync2

# Checkout the bison fixes branch
git checkout feature/bison-portability-fixes

# Verify you're on the right branch
git branch -v
```

### 3. Bison Compatibility Test

```bash
# Run the bison compatibility test
./test-bison.sh
```

**Expected Output:**
```
=== Bison Compatibility Test ===
✓ Bison found: /usr/bin/bison
✓ Bison version: bison (GNU Bison) 3.x.x
Testing basic bison functionality...
✓ bison -d works
Testing bison -W support...
✓ bison supports -W option (modern version)
Testing csync2-style bison flags...
Testing: bison -d -Wno-yacc
✓ bison -d -Wno-yacc works

=== Test Results ===
✓ Bison is working correctly
✓ Modern bison with -W support detected
  configure will use: AM_YFLAGS="-d -Wno-yacc"

Platform-specific notes:
• Linux detected
  ✓ Should work with distribution bison

You can now proceed with building csync2!
```

### 4. Build System Test

```bash
# Run the comprehensive build test
./test-build.sh
```

**Expected Output:**
```
=== Csync2 Build Test ===
✓ Found configure.ac and src/Makefile.am
Checking for required build tools...
✓ All required tools found
Testing bison compatibility...
[... bison test output ...]

Running autogen.sh...
[... autogen output ...]

Running configure...
✓ configure --help works
Testing configure with minimal options...
✓ configure completed successfully

Testing make (parser generation)...
✓ Bison parser generation works

=== Build Test Results ===
✅ All tests passed!
✓ autogen.sh works
✓ configure works  
✓ bison parser generation works

The build system is working correctly.
You can now run 'make' to build the full project.
```

### 5. Manual Build Verification

```bash
# Generate build system
./autogen.sh

# Configure with minimal dependencies
./configure --disable-mysql --disable-postgres --enable-sqlite3

# Check what bison flags were detected
grep "AM_YFLAGS" src/Makefile
```

**Expected in Makefile:**
```makefile
AM_YFLAGS = -d -Wno-yacc
```

```bash
# Test parser generation
make -C src cfgfile_parser.c

# Verify the bison command used
# Should show: bison -y -d -Wno-yacc cfgfile_parser.y

# Build the full project
make
```

### 6. Verification Points

#### ✅ Configure Detection:
Look for this in configure output:
```
checking if bison supports -W option... yes
```

#### ✅ Bison Command:
During make, you should see:
```
bison -y -d -Wno-yacc cfgfile_parser.y
```

#### ✅ No Errors:
- No "invalid option -- W" errors
- Parser files generated successfully
- Clean compilation

### 7. Test Different Linux Distributions

If possible, test on multiple distributions:

- **Ubuntu 20.04/22.04** (bison 3.5+)
- **CentOS 8/RHEL 8** (bison 3.0+)  
- **Fedora 35+** (bison 3.7+)
- **Debian 11** (bison 3.7+)
- **Arch Linux** (latest bison)

### 8. Expected Results

#### ✅ Success Indicators:
1. **Bison detection works**: `checking if bison supports -W option... yes`
2. **Parser generation succeeds**: No bison errors during make
3. **Modern flags used**: `bison -y -d -Wno-yacc` in build output
4. **Clean compilation**: Project builds without warnings/errors
5. **All tests pass**: Both `test-bison.sh` and `test-build.sh` succeed

#### ❌ Failure Indicators:
1. Configure fails with syntax errors
2. Bison reports "invalid option" errors
3. Parser generation fails
4. Build system tests fail

### 9. Reporting Results

Please report test results with:

```bash
# System information
uname -a
lsb_release -a  # or cat /etc/os-release

# Bison version
bison --version

# Test results
./test-bison.sh > bison-test-results.log 2>&1
./test-build.sh > build-test-results.log 2>&1

# Build log
./autogen.sh > build.log 2>&1
./configure --disable-mysql --disable-postgres --enable-sqlite3 >> build.log 2>&1
make >> build.log 2>&1
```

## Comparison with macOS

The key difference is that Linux distributions typically ship with modern bison versions (3.0+) that support the `-W` option, while macOS ships with an older version (2.3) that doesn't.

**Linux (Expected):**
- `checking if bison supports -W option... yes`
- Uses: `bison -y -d -Wno-yacc`

**macOS System (Expected):**
- `checking if bison supports -W option... no`  
- Uses: `bison -y -d` (fallback)

Both should work without errors, demonstrating the portability fix is successful.

## Contact

Report any issues or test results to the csync2 project maintainers.
