#!/bin/bash

if [ "$1" == "" ] ; then 
    COMMAND=c
else
    COMMAND=$1
fi
echo "Running command $COMMAND" 

function check {
    ./csync2 -p 30860 -K csync2_local.cfg -N local -${COMMAND}r$DEBUG test/local # >> csync_local.log 2>&1
    echo "select * from file; select * from dirty;" | mysql -t -u csync2_local -pcsync2_local csync2_local >> mysql_local.log
    if [ "$1" != "" ] ; then
	echo "$1";
    fi
    ${PAUSE}
}

if [ "$COMMAND" != "u" ] ; then 
    echo "delete from dirty ; delete from file" | mysql -u csync2_local -pcsync2_local csync2_local
    echo "delete from dirty ; delete from file" | mysql -u csync2_peer -pcsync2_peer csync2_peer
    rm csync_local.log mysql_local.log
    rm -rf test/local/*
    rm -rf test/peer/*
else 
    check
    exit 0;
fi

echo first > test/local/first.txt
check "first file"
mkdir test/local/dir1
echo hejhejhej > test/local/hej.txt
check "first directory dir1 plus file"
mv test/local/first.txt test/local/second
check "move first second" 
mv test/local/second  test/local/before
check "move second before (reorder)" 
mv test/local/before  test/local/dir1/hardlink_soon
check "move to subdir" 
ln test/local/dir1/hardlink_soon test/local/2hardlink
ln test/local/2hardlink test/local/1hardlink 
check "Hardlink count 3"
echo "PATCH HARDLINK " >> test/local/2hardlink
check "Patched hardlinks"  
echo hardlink > test/local/4hardlink 
ln   test/local/4hardlink test/local/3hardlink 
check "new hardlink 4 and 3 at once" 
ln -s hej.txt test/local/softlink
check
ln -s /etc/hosts test/local/absolut_softlink
check
touch 'test/local/database " problem' 
check
touch "test/local/database ' problem"  
check
