#!/usr/bin/env bash
find src/ -maxdepth 1 \( -name "*.l" -o -name "*.y" -o -name "*.cpp" -o -name "*.hpp" \) -type f \
    | sort | xargs -r cat | ./test/portable_hash.sh | cut -d' ' -f1
