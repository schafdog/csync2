#!/bin/bash
HOST=$1
mysql --defaults-extra-file=./$HOST.cnf --protocol tcp --table -h localhost -u csync2_$HOST csync2_$HOST
