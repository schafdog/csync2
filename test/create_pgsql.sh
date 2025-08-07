# parameterize since root pw could be different...
PGPASSWORD=csync238 psql -h localhost -U postgres -c "CREATE USER csync2_local WITH PASSWORD 'csync2_local';"
PGPASSWORD=csync238 psql -h localhost -U postgres -c "ALTER USER csync2_local CREATEDB;"
PGPASSWORD=csync238 psql -h localhost -U postgres -c "CREATE USER csync2_peer WITH PASSWORD 'csync2_peer';"
PGPASSWORD=csync238 psql -h localhost -U postgres -c "ALTER USER csync2_peer CREATEDB;"
PGPASSWORD=csync238 psql -h localhost -U postgres \
		    -c "CREATE DATABASE csync2_local OWNER csync2_local LC_COLLATE='C' LC_CTYPE='C' TEMPLATE template0;"
PGPASSWORD=csync238 psql -h localhost -U postgres \
		    -c "CREATE DATABASE csync2_peer OWNER csync2_local LC_COLLATE='C' LC_CTYPE='C' TEMPLATE template0;"
