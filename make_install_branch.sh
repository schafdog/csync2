#!/bin/bash
BRANCH=master
if [ "$1" != "" ] ; then
    BRANCH="$1"
fi
cd /export/home/dennis/Projects/csync2/csync2
sudo -u dennis /bin/bash <<EOF
cd /export/home/dennis/Projects/csync2/csync2
git checkout $BRANCH
git pull
make clean all
EOF
make install
