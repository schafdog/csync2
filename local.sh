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

if [ "$COMMAND" == "i" ] ; then 
    ./csync2 -K csync2_$NAME.cfg -N $NAME -z $PEER -iiii$DEBUG -p 30860
    exit
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
	echo "SELECT * from dirty " | mysql -u csync2_$NAME -pcsync2_$NAME csync2_$NAME
#	echo "SELECT * from dirty " | mysql -u csync2_peer -pcsync2_$NAME csync2_peer
	diff -r test/*
	./find_hardlinks.sh test/$NAME > hardlinks_$NAME.txt
	./find_hardlinks.sh test/peer > hardlinks_peer.txt
	diff hardlinks_$NAME.txt hardlinks_peer.txt
	echo "Test result end" 
    fi
    ${PAUSE}
}

if [ "$COMMAND" != "u" ] ; then 
    echo "delete from dirty ; delete from file" | mysql -u csync2_$NAME -pcsync2_$NAME csync2_$NAME
    echo "delete from dirty ; delete from file" | mysql -u csync2_peer -pcsync2_peer csync2_peer
    rm csync_$NAME.log mysql_$NAME.log
    rm -rf test/$NAME/*
    rm -rf test/peer/*
else 
    check
    exit 0;
fi

echo first > test/$NAME/first.txt
check "first file"
mkdir test/$NAME/dir1
echo hejhejhej > test/$NAME/hej.txt
check "first directory dir1 plus file"
echo delete > test/$NAME/delete_soon.txt
check "create to be deleted next"
rm test/$NAME/delete_soon.txt
check "deleting delete_soon.txt"
mv test/$NAME/first.txt test/$NAME/second
check "move first second" 
mv test/$NAME/second  test/$NAME/before
check "move second before (reorder)" 
mv test/$NAME/before  test/$NAME/dir1/hardlink_soon
check "move to subdir" 
mv test/$NAME/dir1  test/$NAME/dir2
check "move subdir" 
ln test/$NAME/dir2/hardlink_soon test/$NAME/2hardlink
ln test/$NAME/2hardlink test/$NAME/1hardlink 
check "Hardlink count 3"
echo "PATCH HARDLINK " >> test/$NAME/2hardlink
check "Patched hardlinks"  
echo hardlink > test/$NAME/4hardlink 
ln   test/$NAME/4hardlink test/$NAME/3hardlink 
check "new hardlink 4 and 3 at once" 
ln -s hej.txt test/$NAME/softlink
check "softlink"
ln -s /etc/hosts test/$NAME/absolut_softlink
check "absolut softlink"
touch "test/$NAME/database \" problem"
check "database encoding of \" "
touch "test/$NAME/database ' problem"  
check "database encoding of ' "
