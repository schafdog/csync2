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
check
mkdir test/local/dir1
echo hejhejhej > test/local/hej.txt
check
mv test/local/first.txt test/local/second
check
mv test/local/second  test/local/before
check
mv test/local/before  test/local/dir1/third
check
ln test/local/dir1/third test/local/2hardlink
check
echo "PATCH HARDLINK" >> test/local/2hardlink 
ln test/local/2hardlink test/local/1hardlink 
check
ln -s hej.txt test/local/softlink
check
ln -s /etc/hosts test/local/absolut_softlink
check
touch 'test/local/database " problem' 
check
touch "test/local/database ' problem"  
check
