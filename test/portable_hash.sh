#!/usr/bin/env bash
if command -v sha256sum >/dev/null 2>&1; then
    sha256sum $*
elif command -v shasum >/dev/null 2>&1; then
    shasum -a 256 $*
else
    echo "No SHA256 tool found"
    exit 1
fi
