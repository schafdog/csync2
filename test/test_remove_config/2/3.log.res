cmd R "check -R" local peer test
Config-File:   csync2_pgsql_local.cfg
My hostname is local.
Database File: pgsql://csync2:csync238@localhost/csync2_local
DB Version:    2
IP Version:    IPv4
db_schema_version: 2
remove_old: dirty
Check 'local' with 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local' from dirty.
Check 'local' with 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local' from dirty.
Check 'local' with 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new_file' from dirty.
Remove 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new_file' from dirty. No longer in configuration
Check 'local' with 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/new_file' from dirty.
Remove 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/new_file' from dirty. No longer in configuration
Removing /export/home/dennis/Projects/csync2/csync2/test/test/local/new_file (other) from dirty db.
Removing /export/home/dennis/Projects/csync2/csync2/test/test/local/new_file (peer) from dirty db.
remove_old: file
Removing /export/home/dennis/Projects/csync2/csync2/test/test/local/new_file from file db.
remove_old: end
