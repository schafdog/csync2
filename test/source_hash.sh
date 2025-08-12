#!/usr/bin/env bash
find src/ \( -name "*.l" -o -name "*.y" -o -name "*.cpp" -o -name "*.hpp" \) -type f | sort | xargs -r cat | sha256sum | cut -d' ' -f1
