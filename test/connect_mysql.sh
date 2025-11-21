#!/bin/bash
HOST=$1
mysql -u csync2_$HOST -pcsync2_$HOST --protocol tcp --table -h 127.0.0.1 csync2_$HOST
