#!/bin/bash
HOST=$1
PGPASSWORD=csync238 psql -U csync2_$HOST -h localhost csync2_$HOST
