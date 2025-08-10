#!/usr/bin/env bash
echo "libgnutls28-dev libsqlite3-dev libmariadb-dev libpq-dev libhiredis-dev libssl-dev librsync-dev" | sha256sum | cut -d' ' -f1
