#!/bin/bash
#
# Homebrew Environment Setup for macOS Development
# This script sets up optimal PATH and PKG_CONFIG_PATH for Homebrew packages
#
# Usage:
#   source ./setup-homebrew-env.sh
#   OR
#   ./setup-homebrew-env.sh && source ~/.zshrc
#

set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

echo_info() {
    echo -e "${BLUE}[INFO]${NC} $1"
}

echo_success() {
    echo -e "${GREEN}[SUCCESS]${NC} $1"
}

echo_warning() {
    echo -e "${YELLOW}[WARNING]${NC} $1"
}

echo_error() {
    echo -e "${RED}[ERROR]${NC} $1"
}

# Detect architecture and set Homebrew prefix
if [[ $(uname -m) == "arm64" ]]; then
    HOMEBREW_PREFIX="/opt/homebrew"
    ARCH_TYPE="Apple Silicon"
else
    HOMEBREW_PREFIX="/usr/local"
    ARCH_TYPE="Intel"
fi

echo_info "Detected macOS $ARCH_TYPE architecture"
echo_info "Using Homebrew prefix: $HOMEBREW_PREFIX"

# Check if Homebrew is installed
if ! command -v brew >/dev/null 2>&1; then
    echo_error "Homebrew is not installed. Please install it first:"
    echo "  /bin/bash -c \"\$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)\""
    exit 1
fi

# Function to add path if not already present
add_to_path() {
    local new_path="$1"
    if [[ ":$PATH:" != *":$new_path:"* ]]; then
        export PATH="$new_path:$PATH"
        echo_info "Added to PATH: $new_path"
    fi
}

# Function to add pkg-config path if not already present
add_to_pkg_config_path() {
    local new_path="$1"
    if [[ ":$PKG_CONFIG_PATH:" != *":$new_path:"* ]]; then
        export PKG_CONFIG_PATH="$new_path:$PKG_CONFIG_PATH"
        echo_info "Added to PKG_CONFIG_PATH: $new_path"
    fi
}

# Clean up duplicated paths
clean_path() {
    local path_var="$1"
    local cleaned_path=""
    local IFS=':'
    
    for dir in $path_var; do
        if [[ -n "$dir" && ":$cleaned_path:" != *":$dir:"* ]]; then
            if [[ -z "$cleaned_path" ]]; then
                cleaned_path="$dir"
            else
                cleaned_path="$cleaned_path:$dir"
            fi
        fi
    done
    echo "$cleaned_path"
}

echo_info "Setting up optimal Homebrew environment..."

# Clean existing paths
echo_info "Cleaning up duplicated paths..."
export PATH=$(clean_path "$PATH")
export PKG_CONFIG_PATH=$(clean_path "$PKG_CONFIG_PATH")

# Essential Homebrew paths (in priority order)
echo_info "Setting up essential Homebrew paths..."

# 1. Homebrew binaries (highest priority)
add_to_path "$HOMEBREW_PREFIX/bin"
add_to_path "$HOMEBREW_PREFIX/sbin"

# 2. Development tools (bison, flex, etc.)
add_to_path "$HOMEBREW_PREFIX/opt/bison/bin"
add_to_path "$HOMEBREW_PREFIX/opt/flex/bin"

# 3. PostgreSQL tools
if [[ -d "$HOMEBREW_PREFIX/opt/libpq@16/bin" ]]; then
    add_to_path "$HOMEBREW_PREFIX/opt/libpq@16/bin"
fi

# 4. MySQL tools
if [[ -d "$HOMEBREW_PREFIX/opt/mysql/bin" ]]; then
    add_to_path "$HOMEBREW_PREFIX/opt/mysql/bin"
fi

# PKG_CONFIG_PATH setup
echo_info "Setting up PKG_CONFIG_PATH..."

# Base Homebrew pkg-config
add_to_pkg_config_path "$HOMEBREW_PREFIX/lib/pkgconfig"

# PostgreSQL pkg-config (check multiple versions)
for pg_version in libpq@16 libpq@15 libpq@14 postgresql@16 postgresql@15 postgresql@14; do
    if [[ -d "$HOMEBREW_PREFIX/opt/$pg_version/lib/pkgconfig" ]]; then
        add_to_pkg_config_path "$HOMEBREW_PREFIX/opt/$pg_version/lib/pkgconfig"
        break
    fi
done

# MySQL/MariaDB pkg-config
for mysql_pkg in mariadb mysql@8.0 mysql; do
    if [[ -d "$HOMEBREW_PREFIX/opt/$mysql_pkg/lib/pkgconfig" ]]; then
        add_to_pkg_config_path "$HOMEBREW_PREFIX/opt/$mysql_pkg/lib/pkgconfig"
        break
    fi
done

# Other important packages
for pkg in openssl@3 openssl gnutls librsync hiredis; do
    if [[ -d "$HOMEBREW_PREFIX/opt/$pkg/lib/pkgconfig" ]]; then
        add_to_pkg_config_path "$HOMEBREW_PREFIX/opt/$pkg/lib/pkgconfig"
    fi
done

# Compiler flags for development
echo_info "Setting up compiler flags..."
export CPPFLAGS="-I$HOMEBREW_PREFIX/include"
export LDFLAGS="-L$HOMEBREW_PREFIX/lib"

# Add PostgreSQL specific flags if available
if [[ -d "$HOMEBREW_PREFIX/opt/libpq@16" ]]; then
    export CPPFLAGS="$CPPFLAGS -I$HOMEBREW_PREFIX/opt/libpq@16/include"
    export LDFLAGS="$LDFLAGS -L$HOMEBREW_PREFIX/opt/libpq@16/lib"
fi

# Add OpenSSL flags if available
if [[ -d "$HOMEBREW_PREFIX/opt/openssl@3" ]]; then
    export CPPFLAGS="$CPPFLAGS -I$HOMEBREW_PREFIX/opt/openssl@3/include"
    export LDFLAGS="$LDFLAGS -L$HOMEBREW_PREFIX/opt/openssl@3/lib"
elif [[ -d "$HOMEBREW_PREFIX/opt/openssl" ]]; then
    export CPPFLAGS="$CPPFLAGS -I$HOMEBREW_PREFIX/opt/openssl/include"
    export LDFLAGS="$LDFLAGS -L$HOMEBREW_PREFIX/opt/openssl/lib"
fi

echo_success "Environment setup complete!"

# Verification
echo_info "Verifying setup..."
echo "Current bison: $(which bison 2>/dev/null || echo 'not found')"
echo "Current pkg-config: $(which pkg-config 2>/dev/null || echo 'not found')"

if command -v pkg-config >/dev/null 2>&1; then
    echo "PostgreSQL libpq: $(pkg-config --exists libpq && echo 'found' || echo 'not found')"
    echo "OpenSSL: $(pkg-config --exists openssl && echo 'found' || echo 'not found')"
    echo "librsync: $(pkg-config --exists librsync && echo 'found' || echo 'not found')"
fi

echo ""
echo_info "To make these changes permanent, add the following to your ~/.zshrc:"
echo ""
echo "# Homebrew environment setup"
echo "export PATH=\"$HOMEBREW_PREFIX/opt/bison/bin:$HOMEBREW_PREFIX/opt/flex/bin:$HOMEBREW_PREFIX/bin:$HOMEBREW_PREFIX/sbin:\$PATH\""
echo "export PKG_CONFIG_PATH=\"$HOMEBREW_PREFIX/lib/pkgconfig:\$PKG_CONFIG_PATH\""
echo "export CPPFLAGS=\"-I$HOMEBREW_PREFIX/include\""
echo "export LDFLAGS=\"-L$HOMEBREW_PREFIX/lib\""
echo ""

# Offer to update shell configuration
read -p "Would you like to automatically update your ~/.zshrc? (y/N): " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]; then
    echo_info "Updating ~/.zshrc..."
    
    # Backup existing .zshrc
    if [[ -f ~/.zshrc ]]; then
        cp ~/.zshrc ~/.zshrc.backup.$(date +%Y%m%d_%H%M%S)
        echo_info "Backed up existing ~/.zshrc"
    fi
    
    # Add our configuration
    cat >> ~/.zshrc << EOF

# Homebrew environment setup (added by setup-homebrew-env.sh)
export PATH="$HOMEBREW_PREFIX/opt/bison/bin:$HOMEBREW_PREFIX/opt/flex/bin:$HOMEBREW_PREFIX/bin:$HOMEBREW_PREFIX/sbin:\$PATH"
export PKG_CONFIG_PATH="$HOMEBREW_PREFIX/lib/pkgconfig:\$PKG_CONFIG_PATH"
export CPPFLAGS="-I$HOMEBREW_PREFIX/include"
export LDFLAGS="-L$HOMEBREW_PREFIX/lib"

# PostgreSQL support
if [[ -d "$HOMEBREW_PREFIX/opt/libpq@16" ]]; then
    export PATH="$HOMEBREW_PREFIX/opt/libpq@16/bin:\$PATH"
    export PKG_CONFIG_PATH="$HOMEBREW_PREFIX/opt/libpq@16/lib/pkgconfig:\$PKG_CONFIG_PATH"
    export CPPFLAGS="\$CPPFLAGS -I$HOMEBREW_PREFIX/opt/libpq@16/include"
    export LDFLAGS="\$LDFLAGS -L$HOMEBREW_PREFIX/opt/libpq@16/lib"
fi

# OpenSSL support
if [[ -d "$HOMEBREW_PREFIX/opt/openssl@3" ]]; then
    export PKG_CONFIG_PATH="$HOMEBREW_PREFIX/opt/openssl@3/lib/pkgconfig:\$PKG_CONFIG_PATH"
    export CPPFLAGS="\$CPPFLAGS -I$HOMEBREW_PREFIX/opt/openssl@3/include"
    export LDFLAGS="\$LDFLAGS -L$HOMEBREW_PREFIX/opt/openssl@3/lib"
fi
EOF
    
    echo_success "Updated ~/.zshrc with Homebrew environment setup"
    echo_info "Run 'source ~/.zshrc' or restart your terminal to apply changes"
else
    echo_info "Skipped updating ~/.zshrc"
fi

echo ""
echo_success "Setup complete! Your environment is now optimized for Homebrew development."
