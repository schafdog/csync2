pushd $1  > /dev/null
find . -type f -not -links 1 -exec stat -c '%h %n' {} \;  | sort -n 
popd > /dev/null