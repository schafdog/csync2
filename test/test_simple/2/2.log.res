cmd x "New local/new_file 'N' all" local peer test
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
New file: <TESTBASE>/test/local/new_file 'N' all
csync_check_file_same_dev_inode <TESTBASE>/test/local/new_file 'N' all <TESTBASE>/test/local/new_file ''N'' all
mark other operation: 'NEW' 'peer:<TESTBASE>/test/local/new_file 'N' all' '-'.
mark other operation: 'NEW' 'other:<TESTBASE>/test/local/new_file 'N' all' '-'.
Inserted/updated <TESTBASE>/test/local/new_file 'N' all rows matched: 0
New file: <TESTBASE>/test/local/A
csync_check_file_same_dev_inode <TESTBASE>/test/local/A <TESTBASE>/test/local/A
mark other operation: 'NEW' 'peer:<TESTBASE>/test/local/A' '-'.
mark other operation: 'NEW' 'other:<TESTBASE>/test/local/A' '-'.
Inserted/updated <TESTBASE>/test/local/A rows matched: 0
New file: <TESTBASE>/test/local/.Test
csync_check_file_same_dev_inode <TESTBASE>/test/local/.Test <TESTBASE>/test/local/.Test
mark other operation: 'NEW' 'peer:<TESTBASE>/test/local/.Test' '-'.
mark other operation: 'NEW' 'other:<TESTBASE>/test/local/.Test' '-'.
Inserted/updated <TESTBASE>/test/local/.Test rows matched: 0
Checking for deleted files <TESTBASE>/test recursive.
csync_file_args: '<TESTBASE>/test' flags 65 
dirty: peer:<TESTBASE>/test/local/.Test v2:mtime=xxxxxxxxxx:mode=33188:user=dennis:group=schafroth:type=reg:size=0 ''
dirty: peer:<TESTBASE>/test/local/new_file 'N' all v2:mtime=xxxxxxxxxx:mode=33188:user=dennis:group=schafroth:type=reg:size=4 ''
dirty: peer:<TESTBASE>/test/local/A v2:mtime=xxxxxxxxxx:mode=33188:user=dennis:group=schafroth:type=reg:size=0 ''
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
Updating (NEW) 'peer:<TESTBASE>/test/local/A' ''
CONN peer < SIG %25test%25/A user/group 1234 1000 dennis schafroth 33188 - 0 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/A RC 32
CONN peer < CREATE %25test%25/A - 1234 1000 dennis schafroth 33188 - 0 
CONN peer > 'OK (send data).'
CREATE <TESTBASE>/test/local/A 0
CONN peer < octet-stream 0

CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/A (0)
Updating (NEW) 'peer:<TESTBASE>/test/local/new_file 'N' all' ''
CONN peer < SIG %25test%25/new_file%20%27N%27%20all user/group 1234 1000 dennis schafroth 33188 - 4 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/new_file 'N' all RC 32
CONN peer < CREATE %25test%25/new_file%20%27N%27%20all - 1234 1000 dennis schafroth 33188 - 4 
CONN peer > 'OK (send data).'
CREATE <TESTBASE>/test/local/new_file 'N' all 4
CONN peer < octet-stream 4

CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/new_file 'N' all (0)
Updating (NEW) 'peer:<TESTBASE>/test/local/.Test' ''
CONN peer < SIG %25test%25/.Test user/group 1234 1000 dennis schafroth 33188 - 0 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/.Test RC 32
CONN peer < CREATE %25test%25/.Test - 1234 1000 dennis schafroth 33188 - 0 
CONN peer > 'OK (send data).'
CREATE <TESTBASE>/test/local/.Test 0
CONN peer < octet-stream 0

CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/.Test (0)
CONN peer < SETTIME %25test%25 
CONN peer > 'OK (cmd_finished).'
CONN peer < BYE

CONN peer > 'OK (cu_later).'
