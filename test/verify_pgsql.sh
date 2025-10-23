# Check database collation
psql -h localhost postgres -c "
            SELECT datname, datcollate, datctype 
            FROM pg_database 
            WHERE datname LIKE 'csync2_%' 
            ORDER BY datname;
          "
          
# Test connection as csync2_local
PGPASSWORD=csync2_local psql -U csync2_local -h localhost -d csync2_local -c \
		       "SELECT current_user, current_database(), version();"
# Test connection as csync2_peer
PGPASSWORD=csync2_peer psql -U csync2_peer -h localhost -d csync2_peer -c \
		       "SELECT current_user, current_database(), version();"
echo "SELECT current_user, current_database(), version();" | ./test/connect_pgsql.sh local
echo "SELECT current_user, current_database(), version();" | ./test/connect_pgsql.sh peer
