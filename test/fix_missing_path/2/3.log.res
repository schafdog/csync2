cmd x "3. Sync with missing directories" local peer test
Config-File:   csync2_mysql_local.cfg
My hostname is local.
Database File: mysql://csync2_local:csync2_local@127.0.0.1/csync2_local
DB Version:    2
IP Version:    IPv4
Default encoding utf8mb4
db_schema_version: 2
Running recursive check for /export/home/dennis/Projects/csync2/csync2/test/test ...
Checking recursive for modified files /export/home/dennis/Projects/csync2/csync2/test/test 
Checking /export/home/dennis/Projects/csync2/csync2/test/test/* ..
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/* ..
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/* ..
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/* ..
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/* ..
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3/* ..
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3/4/* ..
mark other operation: 'MOD_DIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3/4/5' '-'.
mark other operation: 'MOD_DIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3/4/5' '-'.
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3/4/5 rows matched: 1
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3/4/5/* ..
New file: /export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3/4/5/file.c
csync_check_file_same_dev_inode /export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3/4/5/file.c /export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3/4/5/file.c
mark other operation: 'NEW' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3/4/5/file.c' '-'.
mark other operation: 'NEW' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3/4/5/file.c' '-'.
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3/4/5/file.c rows matched: 1
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test recursive.
csync_file_args: '/export/home/dennis/Projects/csync2/csync2/test/test' flags 65 
Got dirty files from host peer
Connecting to host peer (PLAIN) ...
Connecting to localhost:30861 
CONN peer < CONFIG 

CONN peer > 'OK (cmd_finished).'
CONN peer < DEBUG 2

CONN peer > 'OK (cmd_finished).'
CONN peer < HELLO local

CONN peer > 'OK (cmd_finished).'
Updating (MOD_DIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3/4/5' ''
CONN peer < SIG %25test%25/recursive/1/2/3/4/5 user/group 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'ERROR (Path not found): %25test%25'
update_file_sig /export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3/4/5 RC -13
PATH MISSING: '%25test%25'
PATH MISSING (decoded): '/export/home/dennis/Projects/csync2/csync2/test/test/local'
creating directory /export/home/dennis/Projects/csync2/csync2/test/test/local
CONN peer < MKDIR %25test%25 - 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'IDENT (cmd_finished).'
UPDATE_DIRECTORY: 4
creating directory /export/home/dennis/Projects/csync2/csync2/test/test/local/recursive
CONN peer < MKDIR %25test%25/recursive - 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'IDENT (cmd_finished).'
UPDATE_DIRECTORY: 4
creating directory /export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1
CONN peer < MKDIR %25test%25/recursive/1 - 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'IDENT (cmd_finished).'
UPDATE_DIRECTORY: 4
creating directory /export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2
CONN peer < MKDIR %25test%25/recursive/1/2 - 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'IDENT (cmd_finished).'
UPDATE_DIRECTORY: 4
creating directory /export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3
CONN peer < MKDIR %25test%25/recursive/1/2/3 - 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'IDENT (cmd_finished).'
UPDATE_DIRECTORY: 4
creating directory /export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3/4
CONN peer < MKDIR %25test%25/recursive/1/2/3/4 - 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'IDENT (cmd_finished).'
UPDATE_DIRECTORY: 4
Fixed missing path for file /export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3/4/5
CONN peer < MKDIR %25test%25/recursive/1/2/3/4/5 - 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3/4/5 (0)
Updating (NEW) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3/4/5/file.c' ''
CONN peer < SIG %25test%25/recursive/1/2/3/4/5/file.c user/group 1234 1000 dennis schafroth 33188 - 11 
CONN peer > 'OK (not_found).'
update_file_sig /export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3/4/5/file.c RC 32
CONN peer < PATCH %25test%25/recursive/1/2/3/4/5/file.c - 1234 1000 dennis schafroth 33188 - 11 
CONN peer > 'OK (sending sig).'
CONN peer > 'octet-stream 12'
Got octet-stream 12
Content length in buffer: 'octet-stream 12' size: 12 rc: 0 (octet-stream)
Receiving 12 bytes (octet-stream)..
Sending octet-stream of 17 bytes
CONN peer < octet-stream 17

CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3/4/5/file.c (0)
CONN peer < SETTIME %25test%25/recursive/1/2/3/4/5 
CONN peer > 'OK (cmd_finished).'
CONN peer < SETTIME %25test%25/recursive/1/2/3/4 
CONN peer > 'OK (cmd_finished).'
CONN peer < BYE

CONN peer > 'OK (cu_later).'
