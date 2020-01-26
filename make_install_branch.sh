#!/bin/bash
CURRENT=`dirname $0`
cd ${CURRENT}
BRANCH=$2
if [ "$1" != "" ] ; then
    sudo ssh $1 `pwd`/`basename $0`
else
    sudo -u dennis /bin/bash <<EOF
cd ${CURRENT}
if [ "$BRANCH" != "" ] ; then
git checkout $BRANCH || die
fi
git pull
make all
EOF
    make install
    /usr/local/sbin/csync2 -V
fi
