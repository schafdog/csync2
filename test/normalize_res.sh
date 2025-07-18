LEVEL=$1

for d in */$LEVEL/*.res ; do
    cat $d | ./normalize_paths.sh > $d.raw
    mv $d.raw $d
done
