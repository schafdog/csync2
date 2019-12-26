if [ "$1" == "" ] ; then 
    echo Database required: mysql, pgsql, fdbsql, cockroach
    exit
fi
ln -sf csync2_$1_local.cfg csync2_local.cfg
ln -sf csync2_$1_peer.cfg  csync2_peer.cfg
