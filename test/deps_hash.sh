#!/usr/bin/env bash
echo "libgnutls28-dev libsqlite3-dev libmariadb-dev libpq-dev libhiredis-dev libssl-dev librsync-dev" | ./test/portable_hash.sh | cut -d' ' -f1
