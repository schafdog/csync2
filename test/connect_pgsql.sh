#!/bin/bash
HOST=$1
PGPASSWORD=csync2_$HOST psql -U csync2_$HOST -h localhost -d csync2_$HOST
