#!/bin/bash

for d in `ls $1/*.diff` ; do
    res_file=${d/.diff/.res}
    rm $res_file
    rm $d
done
