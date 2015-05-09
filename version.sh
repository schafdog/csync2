#!/bin/bash

GIT_VERSION=`git describe --abbrev=60 --dirty --always`
cat <<EOF > version.h.new
#ifndef VERSION_H
#define VERSION_H 1
#define CSYNC_GIT_VERSION "$GIT_VERSION"
#endif
EOF

if (diff -q version.h.new version.h) ;  then
    echo "Identical";
else
    echo "copying" ;
    cp version.h.new version.h
fi
