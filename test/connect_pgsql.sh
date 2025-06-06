#!/bin/bash
HOST=$1
psql -U csync2 csync2_$HOST
