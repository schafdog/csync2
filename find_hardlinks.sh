pushd $1  > /dev/null
OS=`uname`
FORMAT="-c ' %h %n ' "  
if [ "$OS" == "Darwin" ] ; then
    find . -type f -not -links 1 -exec stat -f '%l %N'  {} \;  | sort -n 
else
    find . -type f -not -links 1 -exec stat -c '%h %n'  {} \;  | sort -n 
fi
popd > /dev/null