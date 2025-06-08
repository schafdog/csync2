#!/bin/bash
# Setup script for building csync2 on macOS
# This script helps install the necessary dependencies and set up the environment

set -e

echo "=== Csync2 macOS Setup Script ==="
echo

# Check if we're on macOS
if [[ "$OSTYPE" != "darwin"* ]]; then
    echo "Error: This script is for macOS only"
    exit 1
fi

# Check if Homebrew is installed
if ! command -v brew &> /dev/null; then
    echo "Homebrew is not installed. Please install it first:"
    echo "  /bin/bash -c \"\$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)\""
    exit 1
fi

echo "✓ Homebrew is installed"

# Install dependencies
echo "Installing dependencies..."
brew_packages=(
    "autoconf"
    "automake" 
    "libtool"
    "bison"
    "flex"
    "pkg-config"
    "librsync"
    "gnutls"
    "openssl"
    "sqlite"
    "mysql-client"
    "postgresql"
    "hiredis"
    "libbsd"
)

for package in "${brew_packages[@]}"; do
    if brew list "$package" &>/dev/null; then
        echo "✓ $package is already installed"
    else
        echo "Installing $package..."
        brew install "$package"
    fi
done

# Set up environment variables
echo
echo "Setting up environment variables..."

# Detect architecture
if [[ $(uname -m) == "arm64" ]]; then
    HOMEBREW_PREFIX="/opt/homebrew"
    echo "✓ Detected Apple Silicon (ARM64)"
else
    HOMEBREW_PREFIX="/usr/local"
    echo "✓ Detected Intel x86_64"
fi

# Create environment setup
cat > setup-env.sh << EOF
#!/bin/bash
# Environment setup for csync2 build on macOS
# Source this file: source setup-env.sh

export HOMEBREW_PREFIX="$HOMEBREW_PREFIX"

# Add Homebrew bison and flex to PATH (before system versions)
export PATH="\$HOMEBREW_PREFIX/opt/bison/bin:\$PATH"
export PATH="\$HOMEBREW_PREFIX/opt/flex/bin:\$PATH"

# Set up compiler and linker flags
export CPPFLAGS="-I\$HOMEBREW_PREFIX/include"
export LDFLAGS="-L\$HOMEBREW_PREFIX/lib"

# Specific library paths
export PKG_CONFIG_PATH="\$HOMEBREW_PREFIX/lib/pkgconfig:\$PKG_CONFIG_PATH"

# For librsync
export CPPFLAGS="\$CPPFLAGS -I\$HOMEBREW_PREFIX/include"
export LDFLAGS="\$LDFLAGS -L\$HOMEBREW_PREFIX/lib"

# For OpenSSL
export OPENSSL_ROOT_DIR="\$HOMEBREW_PREFIX/opt/openssl"
export OPENSSL_LIBRARIES="\$HOMEBREW_PREFIX/opt/openssl/lib"

# For MySQL
export MYSQL_CONFIG="\$HOMEBREW_PREFIX/bin/mysql_config"

# For PostgreSQL
export PG_CONFIG="\$HOMEBREW_PREFIX/bin/pg_config"

echo "Environment configured for csync2 build"
echo "Homebrew prefix: \$HOMEBREW_PREFIX"
echo "Bison version: \$(bison --version | head -1)"
echo "Flex version: \$(flex --version)"
EOF

chmod +x setup-env.sh

echo
echo "=== Setup Complete ==="
echo
echo "To build csync2:"
echo "1. Source the environment setup:"
echo "   source setup-env.sh"
echo
echo "2. Run autogen and configure:"
echo "   ./autogen.sh"
echo "   ./configure"
echo
echo "3. Build:"
echo "   make"
echo
echo "Note: The setup-env.sh file has been created in the current directory."
echo "You may want to add its contents to your shell profile (.bashrc, .zshrc, etc.)"
echo

# Check current bison version
echo "Current bison information:"
if command -v bison &> /dev/null; then
    echo "  Path: $(which bison)"
    echo "  Version: $(bison --version | head -1)"

    # Test if current bison supports -W by creating a test file
    cat > test_bison.y << 'EOF'
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

    if bison -d -Wno-yacc test_bison.y >/dev/null 2>&1; then
        echo "  ✓ Supports -W option"
    else
        echo "  ✗ Does not support -W option (older version)"
        echo "  After sourcing setup-env.sh, you should have a newer version"
    fi
    rm -f test_bison.y test_bison.tab.c test_bison.tab.h
else
    echo "  ✗ bison not found in PATH"
fi

echo
echo "Run 'source setup-env.sh' to activate the environment!"
