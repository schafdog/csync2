# Check database setup
MYSQL_ROOT=$1
MYSQL_ROOT_PW=$2
OS=$3
if [ "$MYSQL_ROOT" != "" ] ; then
    MYSQL_OPT="-u $MYSQL_ROOT"
fi
if [ "$MYSQL_ROOT_PW" != "" ] ; then
    MYSQL_OPT="$MYSQL_OPT -p$MYSQL_ROOT_PW"
fi
mariadb --protocol=TCP -h 127.0.0.1  $MYSQL_OPT -e "
	            SELECT SCHEMA_NAME, DEFAULT_CHARACTER_SET_NAME, DEFAULT_COLLATION_NAME 
        	    FROM information_schema.SCHEMATA 
		    WHERE SCHEMA_NAME LIKE 'csync2_%' 
            	    ORDER BY SCHEMA_NAME;
		    "
# Test connection as csync2 user
echo  "SELECT USER(), DATABASE(), VERSION();" | ./test/connect_mysql.sh local
echo  "SELECT USER(), DATABASE(), VERSION();" | ./test/connect_mysql.sh peer
