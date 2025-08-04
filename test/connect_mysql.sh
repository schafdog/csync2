#!/bin/bash
HOST=$1
echo "connect mysql $HOST"
mysql --defaults-extra-file=./$HOST.cnf --protocol tcp --table -h 127.0.0.1 -u csync2_$HOST csync2_$HOST
echo "END connect mysql $HOST"
