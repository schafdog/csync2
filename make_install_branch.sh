#!/bin/bash

cd /export/home/dennis/Projects/csync2/csync2
su - dennis
cd /export/home/dennis/Projects/csync2/csync2
git checkout master
git pull
make clean all
exit
make install
