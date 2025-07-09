if [ "$1" == "" ] ; then 
    echo Database required: mysql, pgsql, fdbsql, cockroach
    exit
fi
ln -sf database_$1  database
