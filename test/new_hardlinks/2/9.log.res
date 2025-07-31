cmd c "9 hardlinked when checked" local peer test
Config-File:   csync2_<DB>_<PEER>.cfg
My hostname is local.
Database File: <CONN_STR>
DB Version:    2
IP Version:    IPv4
csync_file_args: '<TESTBASE>/test' flags 65 
Running recursive check for <TESTBASE>/test ...
Checking recursive for modified files <TESTBASE>/test 
Checking <TESTBASE>/test/* ..
Calling check_mod on <TESTBASE>/test/peer from <TESTBASE>/test
No match. Don't check at all: <TESTBASE>/test/peer
Calling check_mod on <TESTBASE>/test/local from <TESTBASE>/test
Checking <TESTBASE>/test/local/* ..
Calling check_mod on <TESTBASE>/test/local/new from <TESTBASE>/test/local
mark other operation: 'MOD_DIR' 'peer:<TESTBASE>/test/local/new' '-'.
mark other operation: 'MOD_DIR' 'other:<TESTBASE>/test/local/new' '-'.
check_old_operation: MOD_DIR(129) Old operation: MKDIR(1) '<TESTBASE>/test/local/new' '(null)'
mark operation NEW -> MOD => NEW other:<TESTBASE>/test/local/new (not synced) .
Inserted/updated <TESTBASE>/test/local/new rows matched: 1
Checking <TESTBASE>/test/local/new/* ..
Calling check_mod on <TESTBASE>/test/local/new/was_hardlink from <TESTBASE>/test/local/new
New file: <TESTBASE>/test/local/new/was_hardlink
csync_check_file_same_dev_inode <TESTBASE>/test/local/new/was_hardlink <TESTBASE>/test/local/new/was_hardlink
mark other operation: 'NEW' 'peer:<TESTBASE>/test/local/new/was_hardlink' '-'.
mark other operation: 'NEW' 'other:<TESTBASE>/test/local/new/was_hardlink' '-'.
Inserted/updated <TESTBASE>/test/local/new/was_hardlink rows matched: 1
Calling check_mod on <TESTBASE>/test/local/new/new_file from <TESTBASE>/test/local/new
Calling check_mod on <TESTBASE>/test/local/new/hardlinked_6 from <TESTBASE>/test/local/new
New file: <TESTBASE>/test/local/new/hardlinked_6
csync_check_file_same_dev_inode <TESTBASE>/test/local/new/hardlinked_6 <TESTBASE>/test/local/new/hardlinked_6
1 files with same dev:inode (x:y) as file: <TESTBASE>/test/local/new/hardlinked_6
check same file (32) <TESTBASE>/test/local/new/was_hardlink -> <TESTBASE>/test/local/new/hardlinked_6 
Found HARDLINK <TESTBASE>/test/local/new/was_hardlink -> <TESTBASE>/test/local/new/hardlinked_6 
mark other operation: 'HARDLINK' 'peer:<TESTBASE>/test/local/new/hardlinked_6' '<TESTBASE>/test/local/new/was_hardlink'.
check_old_operation: HARDLINK(32) Old operation: NEW(2) '<TESTBASE>/test/local/new/was_hardlink' '(null)'
mark other operation: 'HARDLINK' 'other:<TESTBASE>/test/local/new/hardlinked_6' '<TESTBASE>/test/local/new/was_hardlink'.
check_old_operation: HARDLINK(32) Old operation: NEW(2) '<TESTBASE>/test/local/new/was_hardlink' '(null)'
Inserted/updated <TESTBASE>/test/local/new/hardlinked_6 rows matched: 1
Calling check_mod on <TESTBASE>/test/local/new/hardlinked_5 from <TESTBASE>/test/local/new
Calling check_mod on <TESTBASE>/test/local/new/hardlinked_4 from <TESTBASE>/test/local/new
Calling check_mod on <TESTBASE>/test/local/new/hardlinked_3 from <TESTBASE>/test/local/new
Calling check_mod on <TESTBASE>/test/local/new/hardlinked_2 from <TESTBASE>/test/local/new
Calling check_mod on <TESTBASE>/test/local/new/hardlinked from <TESTBASE>/test/local/new
Checking for deleted files <TESTBASE>/test recursive.
