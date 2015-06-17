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
# Csync2 Example Configuration File
# ---------------------------------
#
# Please read the documentation:
# http://oss.linbit.com/csync2/paper.pdf

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

hosts {
     peer: localhost:30860;
     local: localhost:30860;
}

config common.cfg;

EOF
echo "${VAR}"