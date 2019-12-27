if [ "$1" == "" ] ; then 
    echo Database required: mysql, pgsql, fdbsql, cockroach
    exit
fi
echo $1 > database
