#!/usr/bin/env bash 
ROOT=$1
ROOT_PW=$2
OS=$3
if [ "$ROOT" != "" ] ; then
    PG_OPT="-U $ROOT"
fi
if [ "ROOT_PW" != "" ] ; then
    export PGPASSWORD="$ROOT_PW"
fi
for d in local peer ; do 
    psql -h localhost $PG_OPT -dpostgres -c "CREATE USER csync2_$d WITH PASSWORD 'csync2_$d';"
    psql -h localhost $PG_OPT -dpostgres -c "ALTER USER csync2_$d CREATEDB;"
    psql -h localhost $PG_OPT -dpostgres -c "CREATE DATABASE csync2_$d OWNER csync2_$d LC_COLLATE='C' LC_CTYPE='C' TEMPLATE template0;"
    psql -h localhost $PG_OPT -dpostgres -c "GRANT CREATE,USAGE ON SCHEMA public TO csync2_$d;"
done
unset PGPASSWORD
