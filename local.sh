#!/bin/bash

if [ "$1" == "" ] ; then 
    COMMAND=c
else
    COMMAND=$1
fi

NAME=${0/.sh/}
NAME=${NAME/.\//}

if [ "$NAME" == "local" ] ;  then
    PEER="peer"
else
    PEER="local"
fi

echo "Running command $COMMAND" 

function check {
    $VALGRIND ./csync2 -p 30860 -K csync2_$NAME.cfg -N $NAME -${COMMAND}r$DEBUG test/$NAME # >> csync_$NAME.log 2>&1
    echo "select * from file; select * from dirty;" | mysql -t -u csync2_$NAME -pcsync2_$NAME csync2_$NAME >> mysql_$NAME.log
    if [ "$1" != "" ] ; then
	echo "$1";
    fi
    if [ "$COMMAND" == "c" ] ; then 
	echo "SELECT * from dirty " | mysql -u csync2_$NAME -pcsync2_$NAME csync2_$NAME
    else
	echo "Test result:" 
#	echo "SELECT * from dirty " | mysql -u csync2_$NAME -pcsync2_$NAME csync2_$NAME
#	echo 'select filename from csync2_peer.file where not filename in (select replace(filename,"/local/", "/peer/") as filename from csync2_local.file);' \
#	    | mysql -u csync2_local -pcsync2_local
	rsync --delete -nHav test/local/ peer:`pwd`/test/peer/
	rsync --delete -nHav test/local/ other:`pwd`/test/other/
	#./find_hardlinks.sh test/$NAME > hardlinks_$NAME.txt
	#./find_hardlinks.sh test/peer > hardlinks_peer.txt
	#diff hardlinks_$NAME.txt hardlinks_peer.txt
	echo "Test result end" 
    fi
    ${PAUSE}
}

if [ "$COMMAND" == "C" ] ; then 
    echo "delete from dirty ; delete from file" | mysql -u csync2_$NAME -pcsync2_$NAME csync2_$NAME
    rm -f csync_$NAME.log mysql_$NAME.log
    rm -rf test/$NAME/*
    shift
    COMMAND="$1"
fi

if [ "$COMMAND" == "i" ] ; then 
    $VALGRIND ./csync2 -K csync2_$NAME.cfg -N $NAME -z $PEER -iiii$DEBUG -p 30860
    exit
fi 


shift
for d in $* ; do 
    echo $d
    source $d
done
