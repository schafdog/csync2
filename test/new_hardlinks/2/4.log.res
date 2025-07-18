cmd x "4 more files hardlinked (x)" local peer test
Config-File:   csync2_pgsql_local.cfg
My hostname is local.
Database File: pgsql://csync2:csync238@localhost/csync2_local
DB Version:    2
IP Version:    IPv4
db_schema_version: 2
Running recursive check for <TESTBASE>/test ...
Checking recursive for modified files <TESTBASE>/test 
Checking <TESTBASE>/test/* ..
No match. Don't check at all: <TESTBASE>/test/peer
Checking <TESTBASE>/test/local/* ..
mark other operation: 'MOD_DIR' 'peer:<TESTBASE>/test/local/new' '-'.
mark other operation: 'MOD_DIR' 'other:<TESTBASE>/test/local/new' '-'.
mark other: MOD_DIR(129) Old operation: MKDIR(1) '<TESTBASE>/test/local/new' ''
mark operation NEW -> MOD => NEW other:<TESTBASE>/test/local/new (not synced) .
Inserted/updated <TESTBASE>/test/local/new rows matched: 0
Checking <TESTBASE>/test/local/new/* ..
New file: <TESTBASE>/test/local/new/hardlinked_3
csync_check_file_same_dev_inode <TESTBASE>/test/local/new/hardlinked_3 <TESTBASE>/test/local/new/hardlinked_3
<<<<<<< HEAD
2 files with same dev:inode (2049:0) as file: <TESTBASE>/test/local/new/hardlinked_3
=======
2 files with same dev:inode (x:y) as file: <TESTBASE>/test/local/new/hardlinked_3
check same file (32) <TESTBASE>/test/local/new/new_file -> <TESTBASE>/test/local/new/hardlinked_3 
Found HARDLINK <TESTBASE>/test/local/new/new_file -> <TESTBASE>/test/local/new/hardlinked_3 
>>>>>>> 768622b8 (Filter dev:inode. Fix error code (wrong on macos))
check same file (32) <TESTBASE>/test/local/new/hardlinked -> <TESTBASE>/test/local/new/hardlinked_3 
Found HARDLINK <TESTBASE>/test/local/new/hardlinked -> <TESTBASE>/test/local/new/hardlinked_3 
check same file (32) <TESTBASE>/test/local/new/new_file -> <TESTBASE>/test/local/new/hardlinked_3 
Found HARDLINK <TESTBASE>/test/local/new/new_file -> <TESTBASE>/test/local/new/hardlinked_3 
mark other operation: 'HARDLINK' 'peer:<TESTBASE>/test/local/new/hardlinked_3' '<TESTBASE>/test/local/new/new_file'.
mark other operation: 'HARDLINK' 'other:<TESTBASE>/test/local/new/hardlinked_3' '<TESTBASE>/test/local/new/new_file'.
mark other: HARDLINK(32) Old operation: NEW(2) '<TESTBASE>/test/local/new/new_file' ''
Inserted/updated <TESTBASE>/test/local/new/hardlinked_3 rows matched: 0
New file: <TESTBASE>/test/local/new/hardlinked_2
csync_check_file_same_dev_inode <TESTBASE>/test/local/new/hardlinked_2 <TESTBASE>/test/local/new/hardlinked_2
<<<<<<< HEAD
3 files with same dev:inode (2049:0) as file: <TESTBASE>/test/local/new/hardlinked_2
=======
3 files with same dev:inode (x:y) as file: <TESTBASE>/test/local/new/hardlinked_2
check same file (32) <TESTBASE>/test/local/new/new_file -> <TESTBASE>/test/local/new/hardlinked_2 
Found HARDLINK <TESTBASE>/test/local/new/new_file -> <TESTBASE>/test/local/new/hardlinked_2 
>>>>>>> 768622b8 (Filter dev:inode. Fix error code (wrong on macos))
check same file (32) <TESTBASE>/test/local/new/hardlinked_3 -> <TESTBASE>/test/local/new/hardlinked_2 
Found HARDLINK <TESTBASE>/test/local/new/hardlinked_3 -> <TESTBASE>/test/local/new/hardlinked_2 
check same file (32) <TESTBASE>/test/local/new/hardlinked -> <TESTBASE>/test/local/new/hardlinked_2 
Found HARDLINK <TESTBASE>/test/local/new/hardlinked -> <TESTBASE>/test/local/new/hardlinked_2 
check same file (32) <TESTBASE>/test/local/new/new_file -> <TESTBASE>/test/local/new/hardlinked_2 
Found HARDLINK <TESTBASE>/test/local/new/new_file -> <TESTBASE>/test/local/new/hardlinked_2 
mark other operation: 'HARDLINK' 'peer:<TESTBASE>/test/local/new/hardlinked_2' '<TESTBASE>/test/local/new/new_file'.
mark other: HARDLINK(32) Old operation: HARDLINK(32) '<TESTBASE>/test/local/new/hardlinked_3' '<TESTBASE>/test/local/new/new_file'
mark other operation: 'HARDLINK' 'other:<TESTBASE>/test/local/new/hardlinked_2' '<TESTBASE>/test/local/new/new_file'.
mark other: HARDLINK(32) Old operation: NEW(2) '<TESTBASE>/test/local/new/new_file' ''
Inserted/updated <TESTBASE>/test/local/new/hardlinked_2 rows matched: 0
Checking for deleted files <TESTBASE>/test recursive.
csync_file_args: '<TESTBASE>/test' flags 65 
dirty: peer:<TESTBASE>/test/local/new/hardlinked_3 v2:mtime=xxxxxxxxxx:mode=33188:user=dennis:group=schafroth:type=reg:size=4 ''
dirty: peer:<TESTBASE>/test/local/new/hardlinked_2 v2:mtime=xxxxxxxxxx:mode=33188:user=dennis:group=schafroth:type=reg:size=4 ''
dirty: peer:<TESTBASE>/test/local/new v2:mtime=xxxxxxxxxx:mode=16877:user=dennis:group=schafroth:type=dir ''
Got dirty files from host peer
Connecting to host peer (PLAIN) ...
Connecting to localhost:30861 
CONN peer < CONFIG 

CONN peer > 'OK (cmd_finished).'
CONN peer < DEBUG 2

CONN peer > 'OK (cmd_finished).'
CONN peer < HELLO local

CONN peer > 'OK (cmd_finished).'
Updating (MOD_DIR) 'peer:<TESTBASE>/test/local/new' ''
CONN peer < SIG %25test%25/new user/group 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'OK (data_follows).'
update_file_sig <TESTBASE>/test/local/new RC 0
CONN peer > 'v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir'
<TESTBASE>/test/local/new is different on peer (cktxt char #-1).
>>> peer:	v2:mtime=xxxxxxxxxx:mode=16877:user=dennis:group=schafroth:type=dir
>>> LOCAL:	v2:mtime=xxxxxxxxxx:mode=16877:user=dennis:group=schafroth:type=dir
CONN peer > 'octet-stream 0'
Got octet-stream 0
Content length in buffer: 'octet-stream 0' size: 0 rc: 0 (octet-stream)
rs_check: Receiving signature 0 bytes for <TESTBASE>/test/local/new
CONN peer > 'OK (cmd_finished).'
?M: peer            <TESTBASE>/test/local/new
CONN peer < MOD %25test%25/new - 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/new (0)
Updating (HARDLINK) 'peer:<TESTBASE>/test/local/new/hardlinked_2' '<TESTBASE>/test/local/new/new_file'
CONN peer < SIG %25test%25/new/hardlinked_2 user/group 1234 1000 dennis schafroth 33188 - 4 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/new/hardlinked_2 RC 32
do hardlink check <TESTBASE>/test/local/new/hardlinked_2 <TESTBASE>/test/local/new/new_file 
CONN peer < SIG %25test%25/new/new_file user/group 1234 1000 dennis schafroth 33188 - 4 
CONN peer > 'OK (data_follows).'
update_file_sig <TESTBASE>/test/local/new/new_file RC 0
CONN peer > 'v2%3Amtime=xxxxxxxxxx%3Amode=33188%3Auser=dennis%3Agroup=schafroth%3Atype=reg%3Asize=4'
CONN peer > 'octet-stream 32'
Got octet-stream 32
Content length in buffer: 'octet-stream 32' size: 32 rc: 0 (octet-stream)
rs_check: Receiving signature 32 bytes for <TESTBASE>/test/local/new/new_file
CONN peer > 'OK (cmd_finished).'
?S: peer            <TESTBASE>/test/local/new/new_file
Hardlinking peer <TESTBASE>/test/local/new/new_file -> <TESTBASE>/test/local/new/hardlinked_2
CONN peer < MKHARDLINK %25test%25/new/hardlinked_2 %25test%25/new/new_file 
CONN peer > 'OK (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/new/hardlinked_2 (0)
clear dirty HARDLINK
Clear dirty peer:<TESTBASE>/test/local/new/hardlinked_2 (0)
Clear dirty peer:<TESTBASE>/test/local/new/new_file (0)
Updating (HARDLINK) 'peer:<TESTBASE>/test/local/new/hardlinked_3' '<TESTBASE>/test/local/new/new_file'
CONN peer < SIG %25test%25/new/hardlinked_3 user/group 1234 1000 dennis schafroth 33188 - 4 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/new/hardlinked_3 RC 32
do hardlink check <TESTBASE>/test/local/new/hardlinked_3 <TESTBASE>/test/local/new/new_file 
CONN peer < SIG %25test%25/new/new_file user/group 1234 1000 dennis schafroth 33188 - 4 
CONN peer > 'OK (data_follows).'
update_file_sig <TESTBASE>/test/local/new/new_file RC 0
CONN peer > 'v2%3Amtime=xxxxxxxxxx%3Amode=33188%3Auser=dennis%3Agroup=schafroth%3Atype=reg%3Asize=4'
CONN peer > 'octet-stream 32'
Got octet-stream 32
Content length in buffer: 'octet-stream 32' size: 32 rc: 0 (octet-stream)
rs_check: Receiving signature 32 bytes for <TESTBASE>/test/local/new/new_file
CONN peer > 'OK (cmd_finished).'
?S: peer            <TESTBASE>/test/local/new/new_file
Hardlinking peer <TESTBASE>/test/local/new/new_file -> <TESTBASE>/test/local/new/hardlinked_3
CONN peer < MKHARDLINK %25test%25/new/hardlinked_3 %25test%25/new/new_file 
CONN peer > 'OK (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/new/hardlinked_3 (0)
clear dirty HARDLINK
Clear dirty peer:<TESTBASE>/test/local/new/hardlinked_3 (0)
Clear dirty peer:<TESTBASE>/test/local/new/new_file (0)
CONN peer < SETTIME %25test%25/new 
CONN peer > 'OK (cmd_finished).'
CONN peer < SETTIME %25test%25 
CONN peer > 'OK (cmd_finished).'
CONN peer < BYE

CONN peer > 'OK (cu_later).'
