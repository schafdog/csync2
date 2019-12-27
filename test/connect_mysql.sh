#!/bin/bash
HOST=local
mysql --protocol tcp -t -u csync2_$HOST -pcsync2_$HOST csync2_$HOST
