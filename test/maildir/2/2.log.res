cmd x "Setup Maildir" local peer test
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
New file: <TESTBASE>/test/local/Maildir
csync_check_file_same_dev_inode <TESTBASE>/test/local/Maildir <TESTBASE>/test/local/Maildir
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local/Maildir' '-'.
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local/Maildir' '-'.
Inserted/updated <TESTBASE>/test/local/Maildir rows matched: 0
Checking <TESTBASE>/test/local/Maildir/* ..
New file: <TESTBASE>/test/local/Maildir/tmp
csync_check_file_same_dev_inode <TESTBASE>/test/local/Maildir/tmp <TESTBASE>/test/local/Maildir/tmp
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local/Maildir/tmp' '-'.
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local/Maildir/tmp' '-'.
Inserted/updated <TESTBASE>/test/local/Maildir/tmp rows matched: 0
Checking <TESTBASE>/test/local/Maildir/tmp/* ..
New file: <TESTBASE>/test/local/Maildir/new
csync_check_file_same_dev_inode <TESTBASE>/test/local/Maildir/new <TESTBASE>/test/local/Maildir/new
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local/Maildir/new' '-'.
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local/Maildir/new' '-'.
Inserted/updated <TESTBASE>/test/local/Maildir/new rows matched: 0
Checking <TESTBASE>/test/local/Maildir/new/* ..
New file: <TESTBASE>/test/local/Maildir/cur
csync_check_file_same_dev_inode <TESTBASE>/test/local/Maildir/cur <TESTBASE>/test/local/Maildir/cur
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local/Maildir/cur' '-'.
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local/Maildir/cur' '-'.
Inserted/updated <TESTBASE>/test/local/Maildir/cur rows matched: 0
Checking <TESTBASE>/test/local/Maildir/cur/* ..
New file: <TESTBASE>/test/local/Maildir/.Trash
csync_check_file_same_dev_inode <TESTBASE>/test/local/Maildir/.Trash <TESTBASE>/test/local/Maildir/.Trash
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local/Maildir/.Trash' '-'.
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local/Maildir/.Trash' '-'.
Inserted/updated <TESTBASE>/test/local/Maildir/.Trash rows matched: 0
Checking <TESTBASE>/test/local/Maildir/.Trash/* ..
New file: <TESTBASE>/test/local/Maildir/.Trash/cur
csync_check_file_same_dev_inode <TESTBASE>/test/local/Maildir/.Trash/cur <TESTBASE>/test/local/Maildir/.Trash/cur
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local/Maildir/.Trash/cur' '-'.
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local/Maildir/.Trash/cur' '-'.
Inserted/updated <TESTBASE>/test/local/Maildir/.Trash/cur rows matched: 0
Checking <TESTBASE>/test/local/Maildir/.Trash/cur/* ..
Checking for deleted files <TESTBASE>/test recursive.
csync_file_args: '<TESTBASE>/test' flags 65 
dirty: peer:<TESTBASE>/test/local/Maildir/tmp v2:mtime=xxxxxxxxxx:mode=16877:user=dennis:group=schafroth:type=dir ''
dirty: peer:<TESTBASE>/test/local/Maildir/new v2:mtime=xxxxxxxxxx:mode=16877:user=dennis:group=schafroth:type=dir ''
dirty: peer:<TESTBASE>/test/local/Maildir/cur v2:mtime=xxxxxxxxxx:mode=16877:user=dennis:group=schafroth:type=dir ''
dirty: peer:<TESTBASE>/test/local/Maildir/.Trash/cur v2:mtime=xxxxxxxxxx:mode=16877:user=dennis:group=schafroth:type=dir ''
dirty: peer:<TESTBASE>/test/local/Maildir/.Trash v2:mtime=xxxxxxxxxx:mode=16877:user=dennis:group=schafroth:type=dir ''
dirty: peer:<TESTBASE>/test/local/Maildir v2:mtime=xxxxxxxxxx:mode=16877:user=dennis:group=schafroth:type=dir ''
dirty: peer:<TESTBASE>/test/local v2:mtime=xxxxxxxxxx:mode=16877:user=dennis:group=schafroth:type=dir ''
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
CONN peer < SIG %25test%25 user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local RC 32
CONN peer < MKDIR %25test%25 - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local (0)
Updating (MKDIR) 'peer:<TESTBASE>/test/local/Maildir' ''
CONN peer < SIG %25test%25/Maildir user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/Maildir RC 32
CONN peer < MKDIR %25test%25/Maildir - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/Maildir (0)
Updating (MKDIR) 'peer:<TESTBASE>/test/local/Maildir/.Trash' ''
CONN peer < SIG %25test%25/Maildir/.Trash user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/Maildir/.Trash RC 32
CONN peer < MKDIR %25test%25/Maildir/.Trash - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/Maildir/.Trash (0)
Updating (MKDIR) 'peer:<TESTBASE>/test/local/Maildir/.Trash/cur' ''
CONN peer < SIG %25test%25/Maildir/.Trash/cur user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/Maildir/.Trash/cur RC 32
CONN peer < MKDIR %25test%25/Maildir/.Trash/cur - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/Maildir/.Trash/cur (0)
Updating (MKDIR) 'peer:<TESTBASE>/test/local/Maildir/cur' ''
CONN peer < SIG %25test%25/Maildir/cur user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/Maildir/cur RC 32
CONN peer < MKDIR %25test%25/Maildir/cur - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/Maildir/cur (0)
Updating (MKDIR) 'peer:<TESTBASE>/test/local/Maildir/new' ''
CONN peer < SIG %25test%25/Maildir/new user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/Maildir/new RC 32
CONN peer < MKDIR %25test%25/Maildir/new - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/Maildir/new (0)
Updating (MKDIR) 'peer:<TESTBASE>/test/local/Maildir/tmp' ''
CONN peer < SIG %25test%25/Maildir/tmp user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/Maildir/tmp RC 32
CONN peer < MKDIR %25test%25/Maildir/tmp - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/Maildir/tmp (0)
CONN peer < SETTIME %25test%25/Maildir/.Trash 
CONN peer > 'OK (cmd_finished).'
CONN peer < SETTIME %25test%25/Maildir 
CONN peer > 'OK (cmd_finished).'
CONN peer < SETTIME %25test%25 
CONN peer > 'OK (cmd_finished).'
CONN peer < BYE

CONN peer > 'OK (cu_later).'
