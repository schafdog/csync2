#!/bin/bash
HOST=$1
mysql --protocol tcp --table -u csync2_$HOST -pcsync2_$HOST csync2_$HOST
