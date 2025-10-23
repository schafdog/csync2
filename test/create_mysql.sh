#!/usr/bin/env bash
MYSQL_ROOT=$1
MYSQL_ROOT_PW=$2
OS=$3
if [ "$MYSQL_ROOT" != "" ] ; then
    MYSQL_OPT="-u $MYSQL_ROOT"
fi
if [ "$MYSQL_ROOT_PW" != "" ] ; then
    MYSQL_OPT="$MYSQL_OPT -p$MYSQL_ROOT_PW"
fi

MYSQL_OPT="--protocol=TCP -h 127.0.0.1 $MYSQL_OPT"
for d in local peer ; do 
    mysql $MYSQL_OPT -e "CREATE DATABASE IF NOT EXISTS csync2_$d;"
    mysql $MYSQL_OPT -e "CREATE USER IF NOT EXISTS 'csync2_$d'@'localhost' identified by 'csync2_$d'; " 
    mysql $MYSQL_OPT -e "GRANT ALL PRIVILEGES ON csync2_$d.* TO 'csync2_$d'@'%' identified by 'csync2_$d'; " 
done 
mysql $MYSQL_OPT -e "FLUSH PRIVILEGES;"
