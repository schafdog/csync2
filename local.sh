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

function cmd {
    echo cmd $1
    CMD=$1
    $VALGRIND ./csync2 -p 30860 -K csync2_$NAME.cfg -N $NAME -${CMD}r$DEBUG test/$NAME # >> csync_$NAME.log 2>&1
    echo "select * from file; select * from dirty;" | mysql -t -u csync2_$NAME -pcsync2_$NAME csync2_$NAME >> mysql_$NAME.log
    if [ "$2" != "" ] ; then
	echo "$2";
    fi
    if [ "$CMD" == "c" ] ; then 
	echo "SELECT * from dirty " | mysql -u csync2_$NAME -pcsync2_$NAME csync2_$NAME
    else
	echo "Test result:" 
#	echo "SELECT * from dirty " | mysql -u csync2_$NAME -pcsync2_$NAME csync2_$NAME
#	echo 'select filename from csync2_peer.file where not filename in (select replace(filename,"/local/", "/peer/") as filename from csync2_local.file);' \
#	    | mysql -u csync2_local -pcsync2_local
	rsync --delete -nHav test/local/ peer:`pwd`/test/peer/
	if [ "$OTHER" != "" ] ; then  
	    rsync --delete -nHav test/local/ other:`pwd`/test/other/
	fi
	#./find_hardlinks.sh test/$NAME > hardlinks_$NAME.txt
	#./find_hardlinks.sh test/peer > hardlinks_peer.txt
	#diff hardlinks_$NAME.txt hardlinks_peer.txt
	echo "Test result end" 
    fi
    ${PAUSE}
}

function clean {
    echo "delete from dirty ; delete from file" | mysql -u csync2_$NAME -pcsync2_$NAME csync2_$NAME
    rm -f csync_$NAME.log mysql_$NAME.log
    rm -rf test/$NAME/*
    mkdir -p test/$NAME
}

function daemon {
    CMD="$1"
    if [ "$CMD" == "i" ] ; then 
	$VALGRIND ./csync2 -K csync2_$NAME.cfg -N $NAME -z $PEER -iiii$DEBUG -p 30860
    elif [ "$CMD" == "once" ] ; then 
	$VALGRIND ./csync2 -K csync2_$NAME.cfg -N $NAME -z $PEER -iii$DEBUG -p 30860
    fi 
}

function check {
    cmd $COMMAND $1
}


if [ "$COMMAND" == "C" ] ; then 
    clean 
    shift
    COMMAND="$1"
fi

if [ "$COMMAND" == "i" ] ; then 
    daemon i
fi 

#if [ "$COMMAND" == "-" ] ; then 
#    shift
#fi 


shift
for d in $* ; do 
    echo "Running test script $d"
    source $d
done
