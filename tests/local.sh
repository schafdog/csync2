#!/bin/bash

if [ "$1" == "" ] ; then 
    COMMAND=c
else
    COMMAND=$1
fi

NAME=`basename $0 .sh`

if [ "$NAME" == "local" ] ;  then
    PEER="peer"
else
    PEER="local"
fi

COUNT=0
echo "Running command $COMMAND" 

function testing {
    RESULT=$1
    OLD_RESULT=${RESULT}.res
    if [ -f ${OLD_RESULT} ] ; then
	diff $RESULT $OLD_RESULT
    else
	cp $RESULT $OLD_RESULT
    fi
}

function cmd {
    echo cmd $1 $2 > ${TESTNAME}_${COUNT}.log 
    CMD=$1
    if [ "$VALGRIND" != "" ] ; then 
	$VALGRIND ../csync2 -p 30860 -K csync2_$NAME.cfg -N $NAME -${CMD}r$DEBUG test/$NAME 
    else
	$VALGRIND ../csync2 -p 30860 -K csync2_$NAME.cfg -N $NAME -${CMD}r$DEBUG test/$NAME >> ${TESTNAME}_${COUNT}.log 2>&1
    fi
    testing ${TESTNAME}_${COUNT}.log
    echo "select filename from file; select filename,operation,other from dirty;" | mysql -t -u csync2_$NAME -pcsync2_$NAME csync2_$NAME  > ${TESTNAME}_${COUNT}.mysql 2> /dev/null
    testing ${TESTNAME}_${COUNT}.mysql
    rsync --delete -nHav test/local/ peer:`pwd`/test/peer/ |grep -v "bytes/sec" |grep -v "(DRY RUN)" |grep -v "sending incremental" > ${TESTNAME}_${COUNT}.rsync
    testing ${TESTNAME}_${COUNT}.rsync
    if [ "$OTHER" != "" ] ; then  
	rsync --delete -nHav test/local/ other:`pwd`/test/other/ > ${TESTNAME}_${COUNT}_other.rsync
    fi
	#./find_hardlinks.sh test/$NAME > hardlinks_$NAME.txt
	#./find_hardlinks.sh test/peer > hardlinks_peer.txt
	#diff hardlinks_$NAME.txt hardlinks_peer.txt
    let COUNT=$COUNT+1
    ${PAUSE}
}

function clean {
    CNAME=$1
    if [ "$1" == "" ] ; then
	CNAME=local
    fi
    echo "delete from dirty ; delete from file" | mysql -u csync2_$CNAME -pcsync2_$CNAME csync2_$CNAME > ${TESTNAME}_${COUNT}.mysql 2> /dev/null
    rm -f csync_$CNAME.log mysql_$CNAME.log
    rm -rf test/$CNAME/*
    mkdir -p test/$CNAME
    let COUNT=$COUNT+1
    ${PAUSE}
}

function daemon {
    CMD="$1"
    echo $NAME $PEER
    if [ "$CMD" == "i" ] ; then 
	$VALGRIND ../csync2 -K csync2_$NAME.cfg -N $NAME -z $PEER -iiii$DEBUG -p 30860
    elif [ "$CMD" == "once" ] ; then 
	../csync2 -K csync2_$NAME.cfg -N $NAME -z $PEER -iii$DEBUG -p 30860 >> daemon_${NAME}.log 2>&1 & 
    elif [ "$CMD" == "clean_once" ] ; then 
	clean peer
	../csync2 -K csync2_$NAME.cfg -N $NAME -z $PEER -iii$DEBUG -p 30860 & 
    fi    
}

function check {
    cmd $COMMAND $1
}


if [ "$COMMAND" == "C" ] ; then 
    clean $NAME
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
    TESTNAME=`basename $d .cfg`
    source $d
done
