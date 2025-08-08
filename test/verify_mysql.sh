# Check database setup
mariadb --protocol=TCP -h 127.0.0.1 -u root -pcsync238 -e "
	            SELECT SCHEMA_NAME, DEFAULT_CHARACTER_SET_NAME, DEFAULT_COLLATION_NAME 
        	    FROM information_schema.SCHEMATA 
		    WHERE SCHEMA_NAME LIKE 'csync2_%' 
            	    ORDER BY SCHEMA_NAME;
		    "
# Test connection as csync2 user
echo  "SELECT USER(), DATABASE(), VERSION();" | ./test/connect_mysql.sh local
echo  "SELECT USER(), DATABASE(), VERSION();" | ./test/connect_mysql.sh peer
