cmd R "check -R" local peer test
Config-File:   csync2_pgsql_local.cfg
My hostname is local.
Database File: pgsql://csync2:csync238@localhost/csync2_local
DB Version:    2
IP Version:    IPv4
db_schema_version: 2
remove_old: dirty
Check 'local' with 'peer:<TESTBASE>/test/local' from dirty.
Check 'local' with 'other:<TESTBASE>/test/local' from dirty.
Check 'local' with 'peer:<TESTBASE>/test/local/new_file' from dirty.
Remove 'peer:<TESTBASE>/test/local/new_file' from dirty. No longer in configuration
Check 'local' with 'other:<TESTBASE>/test/local/new_file' from dirty.
Remove 'other:<TESTBASE>/test/local/new_file' from dirty. No longer in configuration
Removing <TESTBASE>/test/local/new_file (other) from dirty db.
Removing <TESTBASE>/test/local/new_file (peer) from dirty db.
remove_old: file
Removing <TESTBASE>/test/local/new_file from file db.
remove_old: end
