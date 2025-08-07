#!/usr/bin/env bash
MYSQL_ROOT_PW=$1
if [ "$MYSQL_ROOT_PW" == "" ] ; then
    MYSQL_ROOT_PW=csync238
fi

MYSQL_OPT="--protocol=TCP -h 127.0.0.1 -u root -p$MYSQL_ROOT_PW"
mysql $MYSQL_OPT -e "CREATE DATABASE IF NOT EXISTS csync2_local;"
mysql $MYSQL_OPT -e "CREATE DATABASE IF NOT EXISTS csync2_peer;"
mysql $MYSQL_OPT -e "GRANT ALL PRIVILEGES ON csync2_local.* TO 'csync2_local'@'%' identified by 'csync2_local'; " 
mysql $MYSQL_OPT -e "GRANT ALL PRIVILEGES ON csync2_peer.* TO 'csync2_peer'@'%' identified by 'csync2_peer';"
mysql $MYSQL_OPT -e "FLUSH PRIVILEGES;"
