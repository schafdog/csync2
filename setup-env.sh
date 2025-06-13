#!/bin/bash
# Environment setup for csync2 build on macOS
# Source this file: source setup-env.sh

export HOMEBREW_PREFIX="/opt/homebrew"

# Add Homebrew bison and flex to PATH (before system versions)
export PATH="$HOMEBREW_PREFIX/opt/bison/bin:$PATH"
export PATH="$HOMEBREW_PREFIX/opt/flex/bin:$PATH"

# Set up compiler and linker flags
export CPPFLAGS="-I$HOMEBREW_PREFIX/include"
export LDFLAGS="-L$HOMEBREW_PREFIX/lib"

# Specific library paths
export PKG_CONFIG_PATH="$HOMEBREW_PREFIX/lib/pkgconfig:$PKG_CONFIG_PATH"

# For PostgreSQL - add specific version paths
export PKG_CONFIG_PATH="$HOMEBREW_PREFIX/opt/libpq@16/lib/pkgconfig:$PKG_CONFIG_PATH"
export PKG_CONFIG_PATH="$HOMEBREW_PREFIX/Cellar/libpq@16/16.9/lib/pkgconfig:$PKG_CONFIG_PATH"

# For librsync
export CPPFLAGS="$CPPFLAGS -I$HOMEBREW_PREFIX/include"
export LDFLAGS="$LDFLAGS -L$HOMEBREW_PREFIX/lib"

# For PostgreSQL - add include and lib paths
export CPPFLAGS="$CPPFLAGS -I$HOMEBREW_PREFIX/opt/libpq@16/include"
export LDFLAGS="$LDFLAGS -L$HOMEBREW_PREFIX/opt/libpq@16/lib"

# For OpenSSL
export OPENSSL_ROOT_DIR="$HOMEBREW_PREFIX/opt/openssl"
export OPENSSL_LIBRARIES="$HOMEBREW_PREFIX/opt/openssl/lib"

# For MySQL
export MYSQL_CONFIG="$HOMEBREW_PREFIX/bin/mysql_config"

# For PostgreSQL
export PG_CONFIG="$HOMEBREW_PREFIX/bin/pg_config"

# Runtime library paths for macOS (helps with dynamic library loading)
export DYLD_LIBRARY_PATH="$HOMEBREW_PREFIX/lib:$DYLD_LIBRARY_PATH"

echo "Environment configured for csync2 build"
echo "Homebrew prefix: $HOMEBREW_PREFIX"
echo "Bison version: $(bison --version | head -1)"
echo "Flex version: $(flex --version)"
