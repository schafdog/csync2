cmd x "New directory" local peer test
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
New file: <TESTBASE>/test/local/usr
csync_check_file_same_dev_inode <TESTBASE>/test/local/usr <TESTBASE>/test/local/usr
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local/usr' '-'.
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local/usr' '-'.
Inserted/updated <TESTBASE>/test/local/usr rows matched: 0
Checking <TESTBASE>/test/local/usr/* ..
New file: <TESTBASE>/test/local/usr/local
csync_check_file_same_dev_inode <TESTBASE>/test/local/usr/local <TESTBASE>/test/local/usr/local
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local/usr/local' '-'.
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local/usr/local' '-'.
Inserted/updated <TESTBASE>/test/local/usr/local rows matched: 0
Checking <TESTBASE>/test/local/usr/local/* ..
New file: <TESTBASE>/test/local/usr/local/sbin
csync_check_file_same_dev_inode <TESTBASE>/test/local/usr/local/sbin <TESTBASE>/test/local/usr/local/sbin
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local/usr/local/sbin' '-'.
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local/usr/local/sbin' '-'.
Inserted/updated <TESTBASE>/test/local/usr/local/sbin rows matched: 0
Checking <TESTBASE>/test/local/usr/local/sbin/* ..
Checking for deleted files <TESTBASE>/test recursive.
csync_file_args: '<TESTBASE>/test' flags 65 
dirty: peer:<TESTBASE>/test/local/usr/local/sbin v2:mtime=xxxxxxxxxx:mode=16877:user=dennis:group=schafroth:type=dir ''
dirty: peer:<TESTBASE>/test/local/usr/local v2:mtime=xxxxxxxxxx:mode=16877:user=dennis:group=schafroth:type=dir ''
dirty: peer:<TESTBASE>/test/local/usr v2:mtime=xxxxxxxxxx:mode=16877:user=dennis:group=schafroth:type=dir ''
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
Updating (MKDIR) 'peer:<TESTBASE>/test/local/usr' ''
CONN peer < SIG %25test%25/usr user/group 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/usr RC 32
CONN peer < MKDIR %25test%25/usr - 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/usr (0)
Updating (MKDIR) 'peer:<TESTBASE>/test/local/usr/local' ''
CONN peer < SIG %25test%25/usr/local user/group 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/usr/local RC 32
CONN peer < MKDIR %25test%25/usr/local - 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/usr/local (0)
Updating (MKDIR) 'peer:<TESTBASE>/test/local/usr/local/sbin' ''
CONN peer < SIG %25test%25/usr/local/sbin user/group 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/usr/local/sbin RC 32
CONN peer < MKDIR %25test%25/usr/local/sbin - 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/usr/local/sbin (0)
CONN peer < SETTIME %25test%25/usr/local 
CONN peer > 'OK (cmd_finished).'
CONN peer < SETTIME %25test%25/usr 
CONN peer > 'OK (cmd_finished).'
CONN peer < SETTIME %25test%25 
CONN peer > 'OK (cmd_finished).'
CONN peer < BYE

CONN peer > 'OK (cu_later).'
