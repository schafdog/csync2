cmd x "New local/ÆØÅ Café with utf8 and latin1" local peer test
Config-File:   csync2_pgsql_local.cfg
My hostname is local.
Database File: pgsql://csync2:csync238@localhost/csync2_local
DB Version:    2
IP Version:    IPv4
db_schema_version: 2
Running recursive check for <TESTBASE>/test ...
Checking recursive for modified files <TESTBASE>/test 
Checking <TESTBASE>/test/* ..
New file: <TESTBASE>/test/local
csync_check_file_same_dev_inode <TESTBASE>/test/local <TESTBASE>/test/local
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local' '-'.
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local' '-'.
Inserted/updated <TESTBASE>/test/local rows matched: 0
Checking <TESTBASE>/test/local/* ..
New file: <TESTBASE>/test/local/ÆØÅ Café.utf8
csync_check_file_same_dev_inode <TESTBASE>/test/local/ÆØÅ Café.utf8 <TESTBASE>/test/local/ÆØÅ Café.utf8
mark other operation: 'NEW' 'peer:<TESTBASE>/test/local/ÆØÅ Café.utf8' '-'.
mark other operation: 'NEW' 'other:<TESTBASE>/test/local/ÆØÅ Café.utf8' '-'.
Inserted/updated <TESTBASE>/test/local/ÆØÅ Café.utf8 rows matched: 0
Checking for deleted files <TESTBASE>/test recursive.
csync_file_args: '<TESTBASE>/test' flags 65 
dirty: peer:<TESTBASE>/test/local/ÆØÅ Café.utf8 v2:mtime=xxxxxxxxxx:mode=33188:user=dennis:group=schafroth:type=reg:size=4 ''
dirty: peer:<TESTBASE>/test/local v2:mtime=xxxxxxxxxx:mode=16877:user=dennis:group=schafroth:type=dir ''
Got dirty files from host peer
Connecting to host peer (PLAIN) ...
Connecting to localhost:30861 
CONN peer < CONFIG 

CONN peer > 'OK (cmd_finished).'
CONN peer < DEBUG 2

CONN peer > 'OK (cmd_finished).'
CONN peer < HELLO local

CONN peer > 'OK (cmd_finished).'
Updating (MKDIR) 'peer:<TESTBASE>/test/local' ''
CONN peer < SIG %25test%25 user/group 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local RC 32
CONN peer < MKDIR %25test%25 - 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local (0)
Updating (NEW) 'peer:<TESTBASE>/test/local/ÆØÅ Café.utf8' ''
CONN peer < SIG %25test%25/ÆØÅ%20Café.utf8 user/group 1234 1000 dennis schafroth 33188 - 4 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/ÆØÅ Café.utf8 RC 32
CONN peer < CREATE %25test%25/ÆØÅ%20Café.utf8 - 1234 1000 dennis schafroth 33188 - 4 
CONN peer > 'OK (send data).'
CREATE <TESTBASE>/test/local/ÆØÅ Café.utf8 4
CONN peer < octet-stream 4

CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/ÆØÅ Café.utf8 (0)
CONN peer < SETTIME %25test%25 
CONN peer > 'OK (cmd_finished).'
CONN peer < BYE

CONN peer > 'OK (cu_later).'
