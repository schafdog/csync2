#!/bin/bash

for d in `ls $1/*.mysql.res` ; do
    other=${d/.mysql/.cockroach}
    if [ -f $other ] ; then
	diff -q $d $other
    else
	echo $other is missing
    fi
done
