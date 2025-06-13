#!/bin/sh

# Generate version information from git or fallback
if command -v git >/dev/null 2>&1 && [ -d .git ]; then
    GIT_VERSION=$(git describe --abbrev=60 --dirty --always 2>/dev/null || echo "unknown")
else
    GIT_VERSION="unknown"
fi

# Create version header
cat <<EOF > src/version.h.new
#ifndef VERSION_H
#define VERSION_H 1
#define CSYNC_GIT_VERSION "$GIT_VERSION"
#endif
EOF

# Only update if changed to avoid unnecessary rebuilds
if [ ! -f src/version.h ] || ! diff -q src/version.h.new src/version.h >/dev/null 2>&1; then
    echo "Updating git version: $GIT_VERSION"
    mv src/version.h.new src/version.h
else
    rm -f src/version.h.new
fi
