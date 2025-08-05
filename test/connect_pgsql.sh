#!/bin/bash
HOST=$1
PGPASSWORD=csync_$HOST psql -U csync2_$HOST -h localhost csync2_$HOST
