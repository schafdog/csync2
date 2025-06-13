cmd x "3. Sync with missing directories" local peer test
Config-File:   csync2_pgsql_local.cfg
My hostname is local.
Database File: pgsql://csync2:csync238@localhost/csync2_local
DB Version:    2
IP Version:    IPv4
db_schema_version: 2
Running recursive check for <TESTBASE>/test ...
Checking recursive for modified files <TESTBASE>/test 
Checking <TESTBASE>/test/* ..
Checking <TESTBASE>/test/local/* ..
Checking <TESTBASE>/test/local/recursive/* ..
Checking <TESTBASE>/test/local/recursive/1/* ..
Checking <TESTBASE>/test/local/recursive/1/2/* ..
Checking <TESTBASE>/test/local/recursive/1/2/3/* ..
Checking <TESTBASE>/test/local/recursive/1/2/3/4/* ..
mark other operation: 'MOD_DIR' 'peer:<TESTBASE>/test/local/recursive/1/2/3/4/5' '-'.
mark other operation: 'MOD_DIR' 'other:<TESTBASE>/test/local/recursive/1/2/3/4/5' '-'.
Inserted/updated <TESTBASE>/test/local/recursive/1/2/3/4/5 rows matched: 0
Checking <TESTBASE>/test/local/recursive/1/2/3/4/5/* ..
New file: <TESTBASE>/test/local/recursive/1/2/3/4/5/file.c
csync_check_file_same_dev_inode <TESTBASE>/test/local/recursive/1/2/3/4/5/file.c <TESTBASE>/test/local/recursive/1/2/3/4/5/file.c
mark other operation: 'NEW' 'peer:<TESTBASE>/test/local/recursive/1/2/3/4/5/file.c' '-'.
mark other operation: 'NEW' 'other:<TESTBASE>/test/local/recursive/1/2/3/4/5/file.c' '-'.
Inserted/updated <TESTBASE>/test/local/recursive/1/2/3/4/5/file.c rows matched: 0
Checking for deleted files <TESTBASE>/test recursive.
csync_file_args: '<TESTBASE>/test' flags 65 
dirty: peer:<TESTBASE>/test/local/recursive/1/2/3/4/5/file.c v2:mtime=xxxxxxxxxx:mode=33188:user=dennis:group=schafroth:type=reg:size=11 ''
dirty: peer:<TESTBASE>/test/local/recursive/1/2/3/4/5 v2:mtime=xxxxxxxxxx:mode=16877:user=dennis:group=schafroth:type=dir ''
Got dirty files from host peer
Connecting to host peer (PLAIN) ...
Using alternative port to localhost:30861 
Connecting to localhost:30861 
Using specific address 127.0.0.2
Connected to localhost:30861 
CONN peer < CONFIG 

CONN peer > 'OK (cmd_finished).'
CONN peer < DEBUG 2

CONN peer > 'OK (cmd_finished).'
CONN peer < HELLO local

CONN peer > 'OK (cmd_finished).'
Updating (MOD_DIR) 'peer:<TESTBASE>/test/local/recursive/1/2/3/4/5' ''
CONN peer < SIG %25test%25/recursive/1/2/3/4/5 user/group 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'ERROR (Path not found): %25test%25'
update_file_sig <TESTBASE>/test/local/recursive/1/2/3/4/5 RC -13
PATH MISSING: '%25test%25'
PATH MISSING (decoded): '<TESTBASE>/test/local'
creating directory <TESTBASE>/test/local
CONN peer < MKDIR %25test%25 - 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'IDENT (cmd_finished).'
UPDATE_DIRECTORY: 4
creating directory <TESTBASE>/test/local/recursive
CONN peer < MKDIR %25test%25/recursive - 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'IDENT (cmd_finished).'
UPDATE_DIRECTORY: 4
creating directory <TESTBASE>/test/local/recursive/1
CONN peer < MKDIR %25test%25/recursive/1 - 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'IDENT (cmd_finished).'
UPDATE_DIRECTORY: 4
creating directory <TESTBASE>/test/local/recursive/1/2
CONN peer < MKDIR %25test%25/recursive/1/2 - 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'IDENT (cmd_finished).'
UPDATE_DIRECTORY: 4
creating directory <TESTBASE>/test/local/recursive/1/2/3
CONN peer < MKDIR %25test%25/recursive/1/2/3 - 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'IDENT (cmd_finished).'
UPDATE_DIRECTORY: 4
creating directory <TESTBASE>/test/local/recursive/1/2/3/4
CONN peer < MKDIR %25test%25/recursive/1/2/3/4 - 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'IDENT (cmd_finished).'
UPDATE_DIRECTORY: 4
Fixed missing path for file <TESTBASE>/test/local/recursive/1/2/3/4/5
CONN peer < MKDIR %25test%25/recursive/1/2/3/4/5 - 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/recursive/1/2/3/4/5 (0)
Updating (NEW) 'peer:<TESTBASE>/test/local/recursive/1/2/3/4/5/file.c' ''
CONN peer < SIG %25test%25/recursive/1/2/3/4/5/file.c user/group 1234 1000 dennis schafroth 33188 - 11 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/recursive/1/2/3/4/5/file.c RC 32
CONN peer < CREATE %25test%25/recursive/1/2/3/4/5/file.c - 1234 1000 dennis schafroth 33188 - 11 
CONN peer > 'OK (send data).'
CREATE <TESTBASE>/test/local/recursive/1/2/3/4/5/file.c 11
CONN peer < octet-stream 11

CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/recursive/1/2/3/4/5/file.c (0)
CONN peer < SETTIME %25test%25/recursive/1/2/3/4/5 
CONN peer > 'OK (cmd_finished).'
CONN peer < SETTIME %25test%25/recursive/1/2/3/4 
CONN peer > 'OK (cmd_finished).'
CONN peer < BYE

CONN peer > 'OK (cu_later).'
