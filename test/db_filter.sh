# Second is a bit dangerous. 
grep -v "peername	filename	operation	other	op" |grep -v "filename" | \
    ./normalize_logs.sh | ./normalize_paths.sh

