#!/bin/bash

DIRECTORY=$1
if [ "$1" == "" ] ; then
    DIRECTORY=$PWD
fi

ORDER=$2
if [ "$ORDER" == "" ] ; then
   ORDER=3
fi

TABLE=file
HOST_COLUMN="hostname"
if [ "$3" != "" ] ; then
    TABLE=$3
    if [ "$TABLE" == dirty ] ; then
	HOST_COLUMN="myname"
    fi
fi

HOSTNAME=`hostname`
if [ "$4" != "" ] ; then
    HOSTNAME=$4
fi
DEPTH=$5

SUM_SIZE="sum(size)"
if [ "$TABLE" == "dirty" ] ; then
    SUM_SIZE="SUM(0)"
fi

DIRECTORY_WITHOUT=${DIRECTORY%/}

CURDEPTH="LENGTH(SUBSTRING(filename, LENGTH('$DIRECTORY'))) - LENGTH(REPLACE(SUBSTRING(filename, LENGTH('$DIRECTORY')), '/', '')) - 1"
MAXDEPTH=", max($CURDEPTH) as maxdepth"
if [ "$DEPTH" != "" ] ; then
    let DEPTH=$DEPTH
    DEPTH_LIMIT_SQL=" and $CURDEPTH < $DEPTH "
fi 
cat << __EOT__
SELECT t.* 
FROM (
 SELECT substring(filename, 1, LENGTH('$DIRECTORY')+POSITION('/' IN SUBSTR(filename, length('$DIRECTORY')+1))) as DIRECTORY $MAXDEPTH,
       count(filename),
       $SUM_SIZE
 FROM $TABLE WHERE $HOST_COLUMN = '$HOSTNAME' 
 AND filename LIKE '$DIRECTORY_WITHOUT/%'
 $DEPTH_LIMIT_SQL 
 GROUP BY 1
) t
UNION
SELECT 'TOTAL: $DIRECTORY' as DIRECTORY $MAXDEPTH, count(filename), $SUM_SIZE
FROM $TABLE WHERE $HOST_COLUMN = '$HOSTNAME'
AND filename LIKE '$DIRECTORY_WITHOUT/%'
$DEPTH_LIMIT_SQL
GROUP BY 1
ORDER BY $ORDER;
__EOT__
