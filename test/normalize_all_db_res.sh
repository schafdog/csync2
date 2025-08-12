LEVEL=$1
if [ "$LEVEL" == "" ] ; then
    echo no level given
    exit
fi
DB=$2
if [ "$DB" == "" ] ; then
    echo Assuming mysql format
    DB=mysql
fi
RES=$3
if [ "$RES" == "" ] ; then
    RES=$DB
    echo Assuming $DB files
fi
pattern="*/$LEVEL/$DB/*.${RES}.res"
for d in $pattern ; do
    echo "cat $d | ./db_filter.sh $DB > $d.raw" 
    echo "mv $d.raw $d"
done
