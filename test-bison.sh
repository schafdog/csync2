#!/bin/bash
# Test script to verify bison compatibility across platforms

set -e

echo "=== Bison Compatibility Test ==="
echo

# Check if bison is available
if ! command -v bison &> /dev/null; then
    echo "❌ Error: bison not found in PATH"
    echo "Please install bison first"
    exit 1
fi

echo "✓ Bison found: $(which bison)"
echo "✓ Bison version: $(bison --version | head -1)"
echo

# Test basic bison functionality
echo "Testing basic bison functionality..."
cat > test_grammar.y << 'EOF'
%{
#include <stdio.h>
int yylex(void);
void yyerror(const char *s);
%}

%token NUMBER
%token PLUS

%%
expr: NUMBER PLUS NUMBER { printf("Result: %d\n", $1 + $3); }
    ;
%%

void yyerror(const char *s) {
    fprintf(stderr, "Error: %s\n", s);
}

int yylex(void) {
    return 0;
}

int main(void) {
    return 0;
}
EOF

# Test with -d flag (should work on all versions)
echo "Testing bison -d..."
if bison -d test_grammar.y 2>/dev/null; then
    echo "✓ bison -d works"
    rm -f test_grammar.tab.c test_grammar.tab.h
else
    echo "❌ bison -d failed"
    exit 1
fi

# Test with -W flag (may not work on older versions)
echo "Testing bison -W support..."
if bison -d -Wno-yacc test_grammar.y >/dev/null 2>&1; then
    echo "✓ bison supports -W option (modern version)"
    SUPPORTS_W=yes
    rm -f test_grammar.tab.c test_grammar.tab.h
else
    echo "⚠️  bison does not support -W option (older version)"
    SUPPORTS_W=no
fi

# Test the actual flags we would use
echo "Testing csync2-style bison flags..."
if [ "$SUPPORTS_W" = "yes" ]; then
    echo "Testing: bison -d -Wno-yacc"
    if bison -d -Wno-yacc test_grammar.y 2>/dev/null; then
        echo "✓ bison -d -Wno-yacc works"
        rm -f test_grammar.tab.c test_grammar.tab.h
    else
        echo "❌ bison -d -Wno-yacc failed"
        exit 1
    fi
else
    echo "Testing: bison -d (fallback for older versions)"
    if bison -d test_grammar.y 2>/dev/null; then
        echo "✓ bison -d works (fallback mode)"
        rm -f test_grammar.tab.c test_grammar.tab.h
    else
        echo "❌ bison -d failed"
        exit 1
    fi
fi

# Clean up
rm -f test_grammar.y test_grammar.tab.c test_grammar.tab.h

echo
echo "=== Test Results ==="
echo "✓ Bison is working correctly"
if [ "$SUPPORTS_W" = "yes" ]; then
    echo "✓ Modern bison with -W support detected"
    echo "  configure will use: AM_YFLAGS=\"-d -Wno-yacc\""
else
    echo "⚠️  Older bison without -W support detected"
    echo "  configure will use: AM_YFLAGS=\"-d\""
    echo "  This is fine, but you may see some warnings during build"
fi

echo
echo "Platform-specific notes:"
case "$OSTYPE" in
    darwin*)
        echo "• macOS detected"
        if echo "$(which bison)" | grep -q "/usr/bin/"; then
            echo "  ⚠️  You're using the system bison (older version)"
            echo "  Consider installing Homebrew bison for better experience:"
            echo "    brew install bison"
            echo "    export PATH=\"/opt/homebrew/opt/bison/bin:\$PATH\"  # Apple Silicon"
            echo "    export PATH=\"/usr/local/opt/bison/bin:\$PATH\"     # Intel"
        else
            echo "  ✓ Using non-system bison (likely Homebrew)"
        fi
        ;;
    linux*)
        echo "• Linux detected"
        echo "  ✓ Should work with distribution bison"
        ;;
    *)
        echo "• Unknown platform: $OSTYPE"
        echo "  Test results above should indicate compatibility"
        ;;
esac

echo
echo "You can now proceed with building csync2!"
