#!/bin/bash
CURRENT=`dirname $0`
cd ${CURRENT}
sudo -u dennis /bin/bash <<EOF
cd ${CURRENT}
if [ "$1" != "" ] ; then
git checkout $1 || die
fi
git pull
make clean all
EOF
make install
/usr/local/sbin/csync2 -V
