#!/bin/bash

DIRECTORY=$1
ORDER=$2
if [ "$ORDER" == "" ] ; then
   ORDER=3
fi
DEPTH=$3
CURDEPTH="LENGTH(SUBSTRING(filename, LENGTH('$DIRECTORY'))) - LENGTH(REPLACE(SUBSTRING(filename, LENGTH('$DIRECTORY')), '/', '')) - 1"
MAXDEPTH=", max($CURDEPTH) "
if [ "$DEPTH" != "" ] ; then
    let DEPTH=$DEPTH
    DEPTH_LIMIT_SQL=" and $CURDEPTH < $DEPTH "
fi 
cat << __EOT__
select substring(filename, 1, locate('/', filename, length('$DIRECTORY')+1)-1) as directory $MAXDEPTH, count(filename), sum(size) from file where filename like '$DIRECTORY%' $DEPTH_LIMIT_SQL group by directory order by $ORDER;
__EOT__
