if [ "$1" == "" ] ; then 
    echo Database required: mysql, pgsql, fdbsql
    exit
fi
ln -sf csync1_$1_local.s csync2_local.sh 
ln -sf csync2_$1_peer.s csync2_peer.sh 