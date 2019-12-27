#!/bin/bash

./set_prefix.sh

if [ "$1" == "" ] ; then 
    COMMAND=c
else
    COMMAND=$1
fi

DATABASE=`cat database`

NAME=`basename $0 .sh`

if [ "$NAME" == "local" ] ;  then
    PEER="peer"
else
    PEER="local"
fi

: ${PROG:=../csync2}

: ${DEBUG:=v}

RECURSIVE=r

COUNT=0
echo "Running command $COMMAND" 
RES=0

function testing {
    RESULT=$1
    OLD_RESULT=${RESULT}.res
    if [ -f ${OLD_RESULT} ] ; then
	
	diff -w $RESULT $OLD_RESULT > ${RESULT}.diff
	rc=$?
	RES=$((RES+rc))
	cat ${RESULT}.diff
	if [ ! -s ${RESULT}.diff ] ; then 
	    rm ${RESULT}.diff
	fi
    else
	cp $RESULT $OLD_RESULT
	rm -f ${RESULT}.diff
    fi
}

function cmd {
    CMD=$1
    : ${TESTPATH:=test}
    if [ "$CMD" == "T" ] || [ "$CMD" == "TT" ] ; then
	TESTPATH=$2
	echo "T[T] $CMD ${TESTPATH} "
	shift
    fi
    DESC=$2
    echo "${COUNT}. CMD $CMD $DESC $HOST $PEER $TESTPATH"
    if [ "$3" == "" ] ; then
	HOST=$NAME
	PEER=peer
	# TODO Fix peername somehow
    else
	HOST=$3
	PEER=$4
	TESTPATH="test/$HOST"
    fi
    if [ "$CMD" == "daemon" ] ; then
	daemon $1 $2 $3
	return 
    fi
    if [ "$CMD" == "killdaemon" ] && [ "$DAEMON" != "NO" ] ; then
	killdaemon $1
	return 
    fi
    echo cmd $CMD \"$2\" $HOST $PEER $TESTPATH > ${TESTNAME}/${COUNT}.log
    if [ "$LLDB" != "" ] ; then 
	$LLDB -f $PROG -- -q -P peer -K csync2_${DATABASE}_$HOST.cfg -N $HOST -${CMD}${RECURSIVE}$DEBUG "${TESTPATH}"
    elif [ "$GDB" != "" ] ; then 
	$GDB $PROG -q -P peer -K csync2_${DATABASE}_$HOST.cfg -N $HOST -${CMD}${RECURSIVE}$DEBUG "${TESTPATH}"
    else
	echo $PROG -q -P $PEER -K csync2_${DATABASE}_$HOST.cfg -N $HOST -${CMD}${RECURSIVE}$DEBUG "${TESTPATH}"
	$PROG -q -P $PEER -K csync2_${DATABASE}_$HOST.cfg -N $HOST -${CMD}${RECURSIVE}$DEBUG "${TESTPATH}" 2>&1 | grep -v Finished >> ${TESTNAME}/${COUNT}.log
    fi
    if [ "$SKIP_LOG" != "YES" ] ; then
       testing ${TESTNAME}/${COUNT}.log
    fi
    echo "select filename from file where hostname = 'local' order by filename; select peername,filename,operation,other,op from dirty where myname = 'local' order by op, filename, peername;" | ./connect_${DATABASE}.sh local > ${TESTNAME}/${COUNT}.${DATABASE} 2> /dev/null
    testing ${TESTNAME}/${COUNT}.${DATABASE}
    if [ -d "test/local" ] && [ "$CMD" != "c" ] ; then 
	rsync --delete -nHav test/local/ ${REMOTE}`pwd`/test/peer/ |grep -v "building file list ... done" | grep -v "bytes/sec" |grep -v "(DRY RUN)" |grep -v "sending incremental" > ${TESTNAME}/${COUNT}.rsync
	testing ${TESTNAME}/${COUNT}.rsync
    fi
    echo "${COUNT}. END $CMD ${DESC}" 
    let COUNT=$COUNT+1
    ${PAUSE}
}

function clean {
    CNAME=$1
    echo "${COUNT}. clean ${CNAME}" 
    if [ "$1" == "" ] ; then
	CNAME=local
    fi
    echo "delete from dirty where myname like '%' ; delete from file where hostname like '%'" | ./connect_${DATABASE}.sh $CNAME > ${TESTNAME}/${COUNT}.${DATABASE} 2> /dev/null
    rm -f csync_$CNAME.log ${DATABASE}_$CNAME.log
    rm -rf test/$CNAME
    let COUNT=$COUNT+1
    ${PAUSE}
}

function daemon {
    CMD=$1
    DCFG=$2
    DNAME=$3
    if [ "$DAEMON" == "NO" ] ; then
	echo "daemon start disabled";
	return 
    fi
    if [ "$DCFG" == "" ] ; then
	DCFG=peer
    fi
    if [ "$DNAME" == "" ] ; then
	DNAME=local
    fi
    # Create backupdir
    mkdir -p /tmp/csync2 
    CMD="$1"
    echo $DCFG $DNAME
    if [ "$CMD" == "d" ] ; then 
	${PROG} -q -K csync2_${DATABASE}_${DCFG}.cfg -N $DCFG -z $DNAME -iiii$DEBUG > $TESTNAME/$DCFG.log  2>&1 &
	echo "$!" > ${DCFG}.pid
    elif [ "$CMD" == "i" ] ; then
	if [ "LLDB" != "" ]; then
	    $LLDB -f ${PROG} -- -q -K csync2_${DATABASE}_$NAME.cfg -N $NAME -z $PEER -iiii$DEBUG
	else
	    $GDB ${PROG} --args -q -K csync2_${DATABASE}_$NAME.cfg -N $NAME -z $PEER -iiii$DEBUG 
	fi
#	echo "$!" > daemon.pid
	sleep 1
    elif [ "$CMD" == "once" ] ; then 
	${PROG} -q -K csync2_${DATABASE}_$NAME.cfg -N $NAME -z $PEER -iii$DEBUG >> daemon_${NAME}.log 2>&1 & 
    elif [ "$CMD" == "clean_once" ] ; then 
	clean peer
	${PROG} -q -K csync2_${DATABASE}_$NAME.cfg -N $NAME -z $PEER -iii$DEBUG & 
    fi    
}

function killdaemon {
    if [ "$DAEMON" == "NO" ] ; then
	echo "daemon stop disabled";
	return 
    fi
    HOST=peer
    if [ "$1" != "" ] ; then
	HOST=$1
    fi
    kill `cat ${HOST}.pid`
    rm ${HOST}.pid
}

function check {
    cmd c $1 $2
}

CSYNC2_CONFIG_FILE=csync2_${DATABASE}_${NAME}.cfg 
if [ ! -f ${CSYNC2_CONFIG_FILE} ] ; then
    echo "Missing config file:  ${CSYNC2_CONFIG_FILE} "
    exit 1;
fi 

TESTNAME=.
for d in $* ; do 
    if [ -f "$d" ] ; then 
	echo "Running test script $d"
	TESTNAME=`basename $d .test`
	mkdir -p ${TESTNAME}
	source $d
    else
	if [ "$COMMAND" == "C" ] ; then 
	    echo "cmd C: Do not work!" 
	    #clean $NAME
	    shift
	    COMMAND="$1"
	fi
	if [ "$COMMAND" == "i" ] ; then 
	    daemon i
	    shift
	    TESTNAME=$1
	    shift
	fi 
    fi
done
echo "Result $RES"
exit $RES
