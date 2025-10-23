#!/usr/bin/env bash
if command -v sha256sum >/dev/null 2>&1; then
    SHASUM=sha256sum
elif command -v shasum >/dev/null 2>&1; then
    SHASUM="shasum -a 256"
else
    echo "No SHA256 tool found"
    exit 1
fi

find src/ -maxdepth 1 \( -name "*.l" -o -name "*.y" -o -name "*.cpp" -o -name "*.hpp" \) -type f \
    | sort | xargs -r cat | $SHASUM | cut -d' ' -f1
