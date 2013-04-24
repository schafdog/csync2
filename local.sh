#!/bin/bash

COMMAND=x
function check {
    ./csync2 -p 30860 -K csync2_local.cfg -N local -${COMMAND}r$DEBUG test/local >> csync_local.log 2>&1
    echo "select * from file; select * from dirty;" | mysql -t -u csync2_local -pcsync2_local csync2_local >> mysql_local.log
    ${PAUSE}
}

echo "delete from dirty ; delete from file" | mysql -u csync2_local -pcsync2_local csync2_local
echo "delete from dirty ; delete from file" | mysql -u csync2_peer -pcsync2_peer csync2_peer
rm csync_local.log mysql_local.log
rm -rf test/local/*
rm -rf test/peer/*
check
echo first > test/local/first.txt
check
mkdir test/local/dir1
echo hejhejhej > test/local/hej.txt
check
mv test/local/first.txt test/local/second
check
mv test/local/second  test/local/dir1/third
check
touch 'test/local/database " problem' 
check
touch "test/local/database ' problem"  
check
ln test/local/dir1/third test/local/hardlink
check
ln test/local/hardlink test/local/2hardlink
check
ln -s test/local/hej.txt test/local/softlink
check
