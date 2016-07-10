#!/bin/bash
cd /export/home/dennis/Projects/csync2/csync2
sudo -u dennis /bin/bash <<EOF
cd /export/home/dennis/Projects/csync2/csync2
if [ "$1" != "" ] ; then
git checkout $1 || die
fi
git pull
make clean all
EOF
make install
/usr/local/sbin/csync -V
