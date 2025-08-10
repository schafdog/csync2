#!/usr/bin/env bash
find src/ \( -name "*.c" -o -name "*.h" -o -name "*.cpp" -o -name "*.hpp" \) -type f | sort | xargs -r cat | sha256sum | cut -d' ' -f1
