#!/bin/bash

for d in `ls $1/*.mysql.res` ; do
    other=${d/.mysql/.cockroach}
    if ! diff $d $other ; then
	echo $d $other differs
    fi
done
