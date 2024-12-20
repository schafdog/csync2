cmd R "check -R" local peer test
Config-File:   csync2_mysql_local.cfg
My hostname is local.
Database File: mysql://csync2_local:csync2_local@127.0.0.1/csync2_local
DB Version:    2
IP Version:    IPv4
Default encoding utf8mb4
db_schema_version: 2
remove_old: dirty
Check 'local' with 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local' from dirty.
Check 'local' with 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local' from dirty.
Check 'local' with 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/new_file' from dirty.
Remove 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/new_file' from dirty. No longer in configuration
Check 'local' with 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new_file' from dirty.
Remove 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new_file' from dirty. No longer in configuration
Removing /export/home/dennis/Projects/csync2/csync2/test/test/local/new_file (peer) from dirty db.
Removing /export/home/dennis/Projects/csync2/csync2/test/test/local/new_file (other) from dirty db.
remove_old: file
Removing /export/home/dennis/Projects/csync2/csync2/test/test/local/new_file from file db.
remove_old: end
