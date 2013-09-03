#!/bin/bash

read -r -d '' VAR <<EOF
nossl * *;

database "mysql://csync2_$1:csync2_$1@localhost/csync2_$1" ;
#database test_$1.db;

database-version	2;
protocol-version 	2;
ip-version 		4;

prefix test {
       on local: `pwd`/test/local;
       on peer:  `pwd`/test/peer;
       on other:  `pwd`/test/other;
}

group test {
      host local peer other;
      key csync2.key;
      include %test%;
      exclude *~; 
}

EOF
echo "${VAR}"