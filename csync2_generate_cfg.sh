#!/bin/bash

DB=${DB:-mysql}
USER=${USER:-}
PW=${PW:-}

if [ "$PW" != "" ] ; then 
    USER_PW=$USER:${PW}@
else
    USER_PW=${USER}@
fi

PORT=${PORT:-}
if [ "$PORT" != "" ] ; then 
    PORT=":${PORT}"
fi
read -r -d '' VAR <<EOF
nossl * *;

database "${DB}://${USER_PW}localhost${PORT}/csync2_$1" ;
#database test_$1.db;

database-version	2;
protocol-version 	2;
ip-version 		4;

prefix test {
       on local: `pwd`/test/local;
       on peer:  `pwd`/test/peer;
       on other: `pwd`/test/other;
}

group test {
      host local peer other;
      key csync2.key;
      include %test%;
      exclude *~; 
}

group auto_younger {
      host local peer;
      key csync2.key;
      include %test%/auto/younger;
      exclude *~; 
      auto younger;
      backup-directory /tmp;
      backup-generations 3;
}

group auto_older {
      host local peer;
      key csync2.key;
      include %test%/auto/older;
      exclude *~; 
      auto older;
      backup-directory /tmp;
      backup-generations 3;
}

group auto_bigger {
      host local peer;
      key csync2.key;
      include %test%/auto/bigger;
      exclude *~; 
      auto bigger;
      backup-directory /tmp;
      backup-generations 3;
}

group auto_smaller {
      host local peer;
      key csync2.key;
      include %test%/auto/smaller;
      exclude *~; 
      auto smaller;
      backup-directory /tmp;
      backup-generations 3;
}

EOF
echo "${VAR}"