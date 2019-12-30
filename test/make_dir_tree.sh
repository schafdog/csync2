#!/bin/bash
DIR=$1
mkdir -p $DIR

function makefile {
    FILE=$1
    if [ -f "$1" ] ; then
	echo skipping $FILE
    else
	echo $FILE  > $FILE
    fi
}

for d in a b c ; do
    for e in 1 2 3 ; do
	for f in d e f ; do
	    mkdir -p   ${DIR}/$d/$e/$f
	    makefile ${DIR}/$d/$e/$f/f1.txt
	    makefile ${DIR}/$d/$e/$f/ignored.o
	done
	makefile ${DIR}/$d/$e/f1.txt
	makefile ${DIR}/$d/$e/ignored~
    done
    makefile ${DIR}/$d/f1.txt
    makefile ${DIR}/$d/$e/ignored~
done
