if [ "$1" == "" ] ; then 
    echo Database required: mysql, pgsql, sqlite
    exit
fi
ln -sf database_$1  database
