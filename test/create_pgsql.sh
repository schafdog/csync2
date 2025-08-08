# parameterize since root pw could be different...
for d in local peer ; do 
    PGPASSWORD=csync238 psql -h localhost -U postgres -c "CREATE USER csync2_$d WITH PASSWORD 'csync2_$d';"
    PGPASSWORD=csync238 psql -h localhost -U postgres -c "ALTER USER csync2_$d CREATEDB;"
    PGPASSWORD=csync238 psql -h localhost -U postgres \
			-c "CREATE DATABASE csync2_$d OWNER csync2_$d LC_COLLATE='C' LC_CTYPE='C' TEMPLATE template0;"
    PGPASSWORD=csync238 psql -h localhost -U postgres \
			-c "GRANT CREATE,USAGE ON SCHEMA public TO csync2_$d;"
done
