#!/usr/bin/env bash
PATTERN=$1

if [[ "$PATTERN" == "" ]] ; then
    echo "No pattern given. * for all"
    exit 1
fi

IFS=$'\n'
for d in `redis-cli --raw keys "$PATTERN"` ; do
    redis-cli del "$d" ;
done
