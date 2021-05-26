sudo -u postgres psql
postgres=# create database csync2;
postgres=# create user csync2 with encrypted password 'csync238';
postgres=# grant all privileges on database csync2 to csync2;
