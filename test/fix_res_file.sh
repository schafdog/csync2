#!/bin/bash

for d in `ls $1/*.diff` ; do
    res_file=${d/.diff/.res}
    new_res=${d/.diff/}
    rm $res_file
    mv $new_res $res_file
    rm $d
done
