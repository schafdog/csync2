cmd x "Link local/new_file 'N' all" local peer test
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
New file: <TESTBASE>/test/local/new_file 'N' all.link
mark other operation: 'NEW' 'peer:<TESTBASE>/test/local/new_file 'N' all.link' 'new_file 'N' all'.
mark other operation: 'NEW' 'other:<TESTBASE>/test/local/new_file 'N' all.link' 'new_file 'N' all'.
Inserted/updated <TESTBASE>/test/local/new_file 'N' all.link rows matched: 0
New file: <TESTBASE>/test/local/new_file 'N' all
csync_check_file_same_dev_inode <TESTBASE>/test/local/new_file 'N' all <TESTBASE>/test/local/new_file ''N'' all
mark other operation: 'NEW' 'peer:<TESTBASE>/test/local/new_file 'N' all' '-'.
mark other operation: 'NEW' 'other:<TESTBASE>/test/local/new_file 'N' all' '-'.
Inserted/updated <TESTBASE>/test/local/new_file 'N' all rows matched: 0
Checking for deleted files <TESTBASE>/test recursive.
<<<<<<< HEAD
csync_file_args: '<TESTBASE>/test' flags 65 
dirty: peer:<TESTBASE>/test/local/new_file 'N' all.link v2:mtime=xxxxxxxxxx:mode=41471:user=dennis:group=schafroth:type=lnk:target=new_file ''N'' all ''
dirty: peer:<TESTBASE>/test/local/new_file 'N' all v2:mtime=xxxxxxxxxx:mode=33188:user=dennis:group=schafroth:type=reg:size=4 ''
dirty: peer:<TESTBASE>/test/local v2:mtime=xxxxxxxxxx:mode=16877:user=dennis:group=schafroth:type=dir ''
=======
dirty: peer:<TESTBASE>/test/local/new_file 'N' all.link v2:mtime=xxxxxxxxxx:mode=41471:user=<USER>:group=<GROUP>:type=lnk:target=new_file 'N' all ''
dirty: peer:<TESTBASE>/test/local/new_file 'N' all v2:mtime=xxxxxxxxxx:mode=33188:user=<USER>:group=<GROUP>:type=reg:size=4 ''
dirty: peer:<TESTBASE>/test/local v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
>>>>>>> 768622b8 (Filter dev:inode. Fix error code (wrong on macos))
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
Updating (MKDIR) 'peer:<TESTBASE>/test/local' ''
CONN peer < SIG %25test%25 user/group 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local RC 32
CONN peer < MKDIR %25test%25 - 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local (0)
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
Updating (LINK) 'peer:<TESTBASE>/test/local/new_file 'N' all.link' 'new_file 'N' all'
CONN peer < SIG %25test%25/new_file%20%27N%27%20all.link user/group 1234 1000 dennis schafroth 41471 - 16 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/new_file 'N' all.link RC 32
CONN peer < MKLINK %25test%25/new_file%20%27N%27%20all.link 
CONN peer > 'OK (cmd_finished).'
CONN peer < SETOWN %25test%25/new_file%20%27N%27%20all.link user/group 1234 1000 dennis schafroth 41471 - 16 
CONN peer > 'OK (cmd_finished).'
Skipping setmod on link peer:<TESTBASE>/test/local/new_file 'N' all.link
CONN peer < SETTIME %25test%25/new_file%20%27N%27%20all.link 
CONN peer > 'OK (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/new_file 'N' all.link (0)
CONN peer < SETTIME %25test%25 
CONN peer > 'OK (cmd_finished).'
CONN peer < BYE

CONN peer > 'OK (cu_later).'
