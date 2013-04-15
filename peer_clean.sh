#!/bin/bash

function check {
    ./csync2 -p 30860 -K csync2_peer.cfg -N peer -cr$DEBUG test/peer
    echo "select * from file; select * from dirty;" | mysql -t -u csync2_peer -pcsync2_peer csync2_peer
}


echo "delete from dirty ; delete from file" | mysql -u csync2_peer -pcsync2_peer csync2_peer
#rm csync_peer.log mysql_peer.log
rm -rf test/peer/*
check 
echo first > test/local/first.txt
check

