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

LEVEL=${#DEBUG}

RECURSIVE=rB

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
    if [ "$CMD" == "monitor" ] ; then
	monitor $1 $2 $3
	return 
    fi
    if [ "$CMD" == "killdaemon" ] && [ "$DAEMON" != "NO" ] ; then
	killdaemon $1
	return 
    fi
    mkdir -p ${TESTNAME}/${LEVEL}
    echo cmd $CMD \"$2\" $HOST $PEER $TESTPATH > ${TESTNAME}/${LEVEL}/${COUNT}.log
    OPTS="$CSYNC2_OPT -y -q -P peer -K csync2_${DATABASE}_$HOST.cfg -N $HOST -${CMD}${RECURSIVE}$DEBUG"
    if [ "$LLDB" != "" ] ; then 
	$LLDB -f ${PROG} -- ${OPTS} "${TESTPATH}"
    elif [ "$GDB" != "" ] ; then 
	$GDB --args ${PROG} ${OPTS} "${TESTPATH}"
    elif [ "$TIME" != "" ] ; then
	echo time $PROG ${OPTS} "${TESTPATH}"
	time $PROG ${OPTS} "${TESTPATH}" 2>&1 | grep -a -v Finished >> ${TESTNAME}/${LEVEL}/${COUNT}.log
    else
	echo $PROG ${OPTS} "${TESTPATH}"
        $PROG ${OPTS} "${TESTPATH}" 2>&1 | grep -a -v Finished >> ${TESTNAME}/${LEVEL}/${COUNT}.log
    fi
    if [ "$SKIP_LOG" != "YES" ] ; then
       testing ${TESTNAME}/${LEVEL}/${COUNT}.log
    fi
    echo "select filename from file where hostname = 'local' order by filename; select peername,filename,operation,other,op from dirty where myname = 'local' order by op, filename, peername;" | ./connect_${DATABASE}.sh local | ./db_filter.sh ${DATABASE} > ${TESTNAME}/${LEVEL}/${COUNT}.${DATABASE} 2> /dev/null
    testing ${TESTNAME}/${LEVEL}/${COUNT}.${DATABASE}
    if [ -d "test/local" ] && [ "$CMD" != "c" ] ; then 
	rsync --delete -nHav test/local/ ${REMOTE}`pwd`/test/peer/ |grep -a -v "building file list ... done" | grep -a -v "bytes/sec" |grep -a -v "(DRY RUN)" |grep -a -v "sending incremental" > ${TESTNAME}/${LEVEL}/${COUNT}.rsync
	testing ${TESTNAME}/${LEVEL}/${COUNT}.rsync
    else
	if [ "$CMD" == "c" ] ; then
	    # clean up if step has changed
	    rm -f ${TESTNAME}/${LEVEL}/${COUNT}.rsync ${TESTNAME}/${LEVEL}/${COUNT}.rsync.res
	fi
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
    echo "delete from dirty where myname like '%' ; delete from file where hostname like '%'; " | ./connect_${DATABASE}.sh $CNAME | ./db_filter.sh ${DATABASE} > ${TESTNAME}/${LEVEL}/${COUNT}.${DATABASE} 2> /dev/null
    rm -f csync_$CNAME.log ${DATABASE}_$CNAME.log
    rm -rf test/$CNAME
    let COUNT=$COUNT+1
    ${PAUSE}
}

function inotify {
    /usr/bin/inotifywait -r --fromfile inotify_${HOST} -o ${TESTNAME}/${LEVEL}/inotify_${HOST}.log \
			 -e close_write -e moved_to -e delete --timefmt %F_%T --format=%T %e %w%f -m
    echo "$!" > inotify_${HOST}.pid
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
    mkdir  -p $TESTNAME/${LEVEL}
    if [ "$CMD" == "d" ] ; then 
	${PROG} -y -q -K csync2_${DATABASE}_${DCFG}.cfg -N $DCFG -z $DNAME -iiiiB$DEBUG > ${TESTNAME}/${LEVEL}/$DCFG.log  2>&1 &
	echo "$!" > ${DCFG}.pid
    elif [ "$CMD" == "m" ] ; then 
	${PROG} -y -q -K csync2_${DATABASE}_${DCFG}.cfg -N $DCFG -z $DNAME -E${DEBUG}B .inotify_${DCFG}.log  > ${TESTNAME}/${LEVEL}/${DCFG}_monitor.log  2>&1 &
	echo "$!" > ${DCFG}.pid
    elif [ "$CMD" == "i" ] ; then
	if [ "LLDB" != "" ]; then
	    $LLDB -f ${PROG} -- -y -q -K csync2_${DATABASE}_$NAME.cfg -N $NAME -z $PEER -iiiiB$DEBUG
	else
	    $GDB --args ${PROG} -y -q -K csync2_${DATABASE}_$NAME.cfg -N $NAME -z $PEER -iiiiB$DEBUG
	fi
#	echo "$!" > daemon.pid
	sleep 1
    elif [ "$CMD" == "once" ] ; then 
	${PROG} -y -q -K csync2_${DATABASE}_$NAME.cfg -N $NAME -z $PEER -iiiB$DEBUG >> daemon_${NAME}.log 2>&1 & 
    elif [ "$CMD" == "clean_once" ] ; then 
	clean peer
	${PROG} -y -q -K csync2_${DATABASE}_$NAME.cfg -N $NAME -z $PEER -iiiB$DEBUG & 
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
    if [ -f "${HOST}_monitor.pid" ] ; then 
	kill `cat ${HOST}_monitor.pid`
	rm ${HOST}_monitor.pid
    fi
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
echo "DAEMON:"
cat ${TESTNAME}/${LEVEL}/peer.log | sed "s/<[0-9]*> //" | grep -a -v connection > ${TESTNAME}/${LEVEL}/peer.log.tmp
mv ${TESTNAME}/${LEVEL}/peer.log.tmp ${TESTNAME}/${LEVEL}/peer.log
testing ${TESTNAME}/${LEVEL}/peer.log
./compare_sql.sh $TESTNAME/${LEVEL}
echo "END DAEMON"
echo "Result $RES"
exit $RES
