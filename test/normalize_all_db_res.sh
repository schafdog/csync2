LEVEL=$1
if [ "$LEVEL" == "" ] ; then
    echo no level given
    exit
fi
DB=$1
if [ "$DB" == "" ] ; then
    echo Assuming mysql format
    DB=mysql
fi
RES=$3
if [ "$RES" == "" ] ; then
    RES=$DB
    echo Assuming mysql files    
fi

for d in eval */$LEVEL/*.mysql.res ; do
    echo $d
    cat $d | ./db_filter.sh $DB > $d.raw
    mv $d.raw $d
done
