cmd c "Removed dir recursive (check)" local peer test
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
Checking for deleted files <TESTBASE>/test recursive.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/c/f1.txt' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/c/f1.txt' '-'.
check_old_operation: RM(64) Old operation: NEW(2) '<TESTBASE>/test/local/c/f1.txt' '(null)'
mark operation NEW -> RM other:<TESTBASE>/test/local/c/f1.txt deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/c/3/f1.txt' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/c/3/f1.txt' '-'.
check_old_operation: RM(64) Old operation: NEW(2) '<TESTBASE>/test/local/c/3/f1.txt' '(null)'
mark operation NEW -> RM other:<TESTBASE>/test/local/c/3/f1.txt deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/c/3/f/f1.txt' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/c/3/f/f1.txt' '-'.
check_old_operation: RM(64) Old operation: NEW(2) '<TESTBASE>/test/local/c/3/f/f1.txt' '(null)'
mark operation NEW -> RM other:<TESTBASE>/test/local/c/3/f/f1.txt deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/c/3/f' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/c/3/f' '-'.
check_old_operation: RM(64) Old operation: MKDIR(1) '<TESTBASE>/test/local/c/3/f' '(null)'
mark operation MKDIR -> RM other:<TESTBASE>/test/local/c/3/f deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/c/3/e/f1.txt' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/c/3/e/f1.txt' '-'.
check_old_operation: RM(64) Old operation: NEW(2) '<TESTBASE>/test/local/c/3/e/f1.txt' '(null)'
mark operation NEW -> RM other:<TESTBASE>/test/local/c/3/e/f1.txt deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/c/3/e' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/c/3/e' '-'.
check_old_operation: RM(64) Old operation: MKDIR(1) '<TESTBASE>/test/local/c/3/e' '(null)'
mark operation MKDIR -> RM other:<TESTBASE>/test/local/c/3/e deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/c/3/d/f1.txt' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/c/3/d/f1.txt' '-'.
check_old_operation: RM(64) Old operation: NEW(2) '<TESTBASE>/test/local/c/3/d/f1.txt' '(null)'
mark operation NEW -> RM other:<TESTBASE>/test/local/c/3/d/f1.txt deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/c/3/d' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/c/3/d' '-'.
check_old_operation: RM(64) Old operation: MKDIR(1) '<TESTBASE>/test/local/c/3/d' '(null)'
mark operation MKDIR -> RM other:<TESTBASE>/test/local/c/3/d deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/c/3' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/c/3' '-'.
check_old_operation: RM(64) Old operation: MKDIR(1) '<TESTBASE>/test/local/c/3' '(null)'
mark operation MKDIR -> RM other:<TESTBASE>/test/local/c/3 deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/c/2/f1.txt' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/c/2/f1.txt' '-'.
check_old_operation: RM(64) Old operation: NEW(2) '<TESTBASE>/test/local/c/2/f1.txt' '(null)'
mark operation NEW -> RM other:<TESTBASE>/test/local/c/2/f1.txt deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/c/2/f/f1.txt' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/c/2/f/f1.txt' '-'.
check_old_operation: RM(64) Old operation: NEW(2) '<TESTBASE>/test/local/c/2/f/f1.txt' '(null)'
mark operation NEW -> RM other:<TESTBASE>/test/local/c/2/f/f1.txt deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/c/2/f' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/c/2/f' '-'.
check_old_operation: RM(64) Old operation: MKDIR(1) '<TESTBASE>/test/local/c/2/f' '(null)'
mark operation MKDIR -> RM other:<TESTBASE>/test/local/c/2/f deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/c/2/e/f1.txt' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/c/2/e/f1.txt' '-'.
check_old_operation: RM(64) Old operation: NEW(2) '<TESTBASE>/test/local/c/2/e/f1.txt' '(null)'
mark operation NEW -> RM other:<TESTBASE>/test/local/c/2/e/f1.txt deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/c/2/e' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/c/2/e' '-'.
check_old_operation: RM(64) Old operation: MKDIR(1) '<TESTBASE>/test/local/c/2/e' '(null)'
mark operation MKDIR -> RM other:<TESTBASE>/test/local/c/2/e deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/c/2/d/f1.txt' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/c/2/d/f1.txt' '-'.
check_old_operation: RM(64) Old operation: NEW(2) '<TESTBASE>/test/local/c/2/d/f1.txt' '(null)'
mark operation NEW -> RM other:<TESTBASE>/test/local/c/2/d/f1.txt deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/c/2/d' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/c/2/d' '-'.
check_old_operation: RM(64) Old operation: MKDIR(1) '<TESTBASE>/test/local/c/2/d' '(null)'
mark operation MKDIR -> RM other:<TESTBASE>/test/local/c/2/d deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/c/2' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/c/2' '-'.
check_old_operation: RM(64) Old operation: MKDIR(1) '<TESTBASE>/test/local/c/2' '(null)'
mark operation MKDIR -> RM other:<TESTBASE>/test/local/c/2 deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/c/1/f1.txt' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/c/1/f1.txt' '-'.
check_old_operation: RM(64) Old operation: NEW(2) '<TESTBASE>/test/local/c/1/f1.txt' '(null)'
mark operation NEW -> RM other:<TESTBASE>/test/local/c/1/f1.txt deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/c/1/f/f1.txt' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/c/1/f/f1.txt' '-'.
check_old_operation: RM(64) Old operation: NEW(2) '<TESTBASE>/test/local/c/1/f/f1.txt' '(null)'
mark operation NEW -> RM other:<TESTBASE>/test/local/c/1/f/f1.txt deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/c/1/f' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/c/1/f' '-'.
check_old_operation: RM(64) Old operation: MKDIR(1) '<TESTBASE>/test/local/c/1/f' '(null)'
mark operation MKDIR -> RM other:<TESTBASE>/test/local/c/1/f deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/c/1/e/f1.txt' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/c/1/e/f1.txt' '-'.
check_old_operation: RM(64) Old operation: NEW(2) '<TESTBASE>/test/local/c/1/e/f1.txt' '(null)'
mark operation NEW -> RM other:<TESTBASE>/test/local/c/1/e/f1.txt deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/c/1/e' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/c/1/e' '-'.
check_old_operation: RM(64) Old operation: MKDIR(1) '<TESTBASE>/test/local/c/1/e' '(null)'
mark operation MKDIR -> RM other:<TESTBASE>/test/local/c/1/e deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/c/1/d/f1.txt' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/c/1/d/f1.txt' '-'.
check_old_operation: RM(64) Old operation: NEW(2) '<TESTBASE>/test/local/c/1/d/f1.txt' '(null)'
mark operation NEW -> RM other:<TESTBASE>/test/local/c/1/d/f1.txt deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/c/1/d' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/c/1/d' '-'.
check_old_operation: RM(64) Old operation: MKDIR(1) '<TESTBASE>/test/local/c/1/d' '(null)'
mark operation MKDIR -> RM other:<TESTBASE>/test/local/c/1/d deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/c/1' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/c/1' '-'.
check_old_operation: RM(64) Old operation: MKDIR(1) '<TESTBASE>/test/local/c/1' '(null)'
mark operation MKDIR -> RM other:<TESTBASE>/test/local/c/1 deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/c' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/c' '-'.
check_old_operation: RM(64) Old operation: MKDIR(1) '<TESTBASE>/test/local/c' '(null)'
mark operation MKDIR -> RM other:<TESTBASE>/test/local/c deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/b/f1.txt' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/b/f1.txt' '-'.
check_old_operation: RM(64) Old operation: NEW(2) '<TESTBASE>/test/local/b/f1.txt' '(null)'
mark operation NEW -> RM other:<TESTBASE>/test/local/b/f1.txt deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/b/3/f1.txt' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/b/3/f1.txt' '-'.
check_old_operation: RM(64) Old operation: NEW(2) '<TESTBASE>/test/local/b/3/f1.txt' '(null)'
mark operation NEW -> RM other:<TESTBASE>/test/local/b/3/f1.txt deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/b/3/f/f1.txt' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/b/3/f/f1.txt' '-'.
check_old_operation: RM(64) Old operation: NEW(2) '<TESTBASE>/test/local/b/3/f/f1.txt' '(null)'
mark operation NEW -> RM other:<TESTBASE>/test/local/b/3/f/f1.txt deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/b/3/f' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/b/3/f' '-'.
check_old_operation: RM(64) Old operation: MKDIR(1) '<TESTBASE>/test/local/b/3/f' '(null)'
mark operation MKDIR -> RM other:<TESTBASE>/test/local/b/3/f deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/b/3/e/f1.txt' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/b/3/e/f1.txt' '-'.
check_old_operation: RM(64) Old operation: NEW(2) '<TESTBASE>/test/local/b/3/e/f1.txt' '(null)'
mark operation NEW -> RM other:<TESTBASE>/test/local/b/3/e/f1.txt deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/b/3/e' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/b/3/e' '-'.
check_old_operation: RM(64) Old operation: MKDIR(1) '<TESTBASE>/test/local/b/3/e' '(null)'
mark operation MKDIR -> RM other:<TESTBASE>/test/local/b/3/e deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/b/3/d/f1.txt' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/b/3/d/f1.txt' '-'.
check_old_operation: RM(64) Old operation: NEW(2) '<TESTBASE>/test/local/b/3/d/f1.txt' '(null)'
mark operation NEW -> RM other:<TESTBASE>/test/local/b/3/d/f1.txt deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/b/3/d' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/b/3/d' '-'.
check_old_operation: RM(64) Old operation: MKDIR(1) '<TESTBASE>/test/local/b/3/d' '(null)'
mark operation MKDIR -> RM other:<TESTBASE>/test/local/b/3/d deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/b/3' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/b/3' '-'.
check_old_operation: RM(64) Old operation: MKDIR(1) '<TESTBASE>/test/local/b/3' '(null)'
mark operation MKDIR -> RM other:<TESTBASE>/test/local/b/3 deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/b/2/f1.txt' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/b/2/f1.txt' '-'.
check_old_operation: RM(64) Old operation: NEW(2) '<TESTBASE>/test/local/b/2/f1.txt' '(null)'
mark operation NEW -> RM other:<TESTBASE>/test/local/b/2/f1.txt deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/b/2/f/f1.txt' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/b/2/f/f1.txt' '-'.
check_old_operation: RM(64) Old operation: NEW(2) '<TESTBASE>/test/local/b/2/f/f1.txt' '(null)'
mark operation NEW -> RM other:<TESTBASE>/test/local/b/2/f/f1.txt deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/b/2/f' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/b/2/f' '-'.
check_old_operation: RM(64) Old operation: MKDIR(1) '<TESTBASE>/test/local/b/2/f' '(null)'
mark operation MKDIR -> RM other:<TESTBASE>/test/local/b/2/f deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/b/2/e/f1.txt' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/b/2/e/f1.txt' '-'.
check_old_operation: RM(64) Old operation: NEW(2) '<TESTBASE>/test/local/b/2/e/f1.txt' '(null)'
mark operation NEW -> RM other:<TESTBASE>/test/local/b/2/e/f1.txt deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/b/2/e' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/b/2/e' '-'.
check_old_operation: RM(64) Old operation: MKDIR(1) '<TESTBASE>/test/local/b/2/e' '(null)'
mark operation MKDIR -> RM other:<TESTBASE>/test/local/b/2/e deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/b/2/d/f1.txt' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/b/2/d/f1.txt' '-'.
check_old_operation: RM(64) Old operation: NEW(2) '<TESTBASE>/test/local/b/2/d/f1.txt' '(null)'
mark operation NEW -> RM other:<TESTBASE>/test/local/b/2/d/f1.txt deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/b/2/d' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/b/2/d' '-'.
check_old_operation: RM(64) Old operation: MKDIR(1) '<TESTBASE>/test/local/b/2/d' '(null)'
mark operation MKDIR -> RM other:<TESTBASE>/test/local/b/2/d deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/b/2' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/b/2' '-'.
check_old_operation: RM(64) Old operation: MKDIR(1) '<TESTBASE>/test/local/b/2' '(null)'
mark operation MKDIR -> RM other:<TESTBASE>/test/local/b/2 deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/b/1/f1.txt' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/b/1/f1.txt' '-'.
check_old_operation: RM(64) Old operation: NEW(2) '<TESTBASE>/test/local/b/1/f1.txt' '(null)'
mark operation NEW -> RM other:<TESTBASE>/test/local/b/1/f1.txt deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/b/1/f/f1.txt' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/b/1/f/f1.txt' '-'.
check_old_operation: RM(64) Old operation: NEW(2) '<TESTBASE>/test/local/b/1/f/f1.txt' '(null)'
mark operation NEW -> RM other:<TESTBASE>/test/local/b/1/f/f1.txt deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/b/1/f' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/b/1/f' '-'.
check_old_operation: RM(64) Old operation: MKDIR(1) '<TESTBASE>/test/local/b/1/f' '(null)'
mark operation MKDIR -> RM other:<TESTBASE>/test/local/b/1/f deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/b/1/e/f1.txt' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/b/1/e/f1.txt' '-'.
check_old_operation: RM(64) Old operation: NEW(2) '<TESTBASE>/test/local/b/1/e/f1.txt' '(null)'
mark operation NEW -> RM other:<TESTBASE>/test/local/b/1/e/f1.txt deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/b/1/e' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/b/1/e' '-'.
check_old_operation: RM(64) Old operation: MKDIR(1) '<TESTBASE>/test/local/b/1/e' '(null)'
mark operation MKDIR -> RM other:<TESTBASE>/test/local/b/1/e deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/b/1/d/f1.txt' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/b/1/d/f1.txt' '-'.
check_old_operation: RM(64) Old operation: NEW(2) '<TESTBASE>/test/local/b/1/d/f1.txt' '(null)'
mark operation NEW -> RM other:<TESTBASE>/test/local/b/1/d/f1.txt deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/b/1/d' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/b/1/d' '-'.
check_old_operation: RM(64) Old operation: MKDIR(1) '<TESTBASE>/test/local/b/1/d' '(null)'
mark operation MKDIR -> RM other:<TESTBASE>/test/local/b/1/d deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/b/1' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/b/1' '-'.
check_old_operation: RM(64) Old operation: MKDIR(1) '<TESTBASE>/test/local/b/1' '(null)'
mark operation MKDIR -> RM other:<TESTBASE>/test/local/b/1 deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/b' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/b' '-'.
check_old_operation: RM(64) Old operation: MKDIR(1) '<TESTBASE>/test/local/b' '(null)'
mark operation MKDIR -> RM other:<TESTBASE>/test/local/b deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/a/f1.txt' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/a/f1.txt' '-'.
check_old_operation: RM(64) Old operation: NEW(2) '<TESTBASE>/test/local/a/f1.txt' '(null)'
mark operation NEW -> RM other:<TESTBASE>/test/local/a/f1.txt deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/a/3/f1.txt' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/a/3/f1.txt' '-'.
check_old_operation: RM(64) Old operation: NEW(2) '<TESTBASE>/test/local/a/3/f1.txt' '(null)'
mark operation NEW -> RM other:<TESTBASE>/test/local/a/3/f1.txt deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/a/3/f/f1.txt' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/a/3/f/f1.txt' '-'.
check_old_operation: RM(64) Old operation: NEW(2) '<TESTBASE>/test/local/a/3/f/f1.txt' '(null)'
mark operation NEW -> RM other:<TESTBASE>/test/local/a/3/f/f1.txt deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/a/3/f' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/a/3/f' '-'.
check_old_operation: RM(64) Old operation: MKDIR(1) '<TESTBASE>/test/local/a/3/f' '(null)'
mark operation MKDIR -> RM other:<TESTBASE>/test/local/a/3/f deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/a/3/e/f1.txt' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/a/3/e/f1.txt' '-'.
check_old_operation: RM(64) Old operation: NEW(2) '<TESTBASE>/test/local/a/3/e/f1.txt' '(null)'
mark operation NEW -> RM other:<TESTBASE>/test/local/a/3/e/f1.txt deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/a/3/e' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/a/3/e' '-'.
check_old_operation: RM(64) Old operation: MKDIR(1) '<TESTBASE>/test/local/a/3/e' '(null)'
mark operation MKDIR -> RM other:<TESTBASE>/test/local/a/3/e deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/a/3/d/f1.txt' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/a/3/d/f1.txt' '-'.
check_old_operation: RM(64) Old operation: NEW(2) '<TESTBASE>/test/local/a/3/d/f1.txt' '(null)'
mark operation NEW -> RM other:<TESTBASE>/test/local/a/3/d/f1.txt deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/a/3/d' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/a/3/d' '-'.
check_old_operation: RM(64) Old operation: MKDIR(1) '<TESTBASE>/test/local/a/3/d' '(null)'
mark operation MKDIR -> RM other:<TESTBASE>/test/local/a/3/d deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/a/3' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/a/3' '-'.
check_old_operation: RM(64) Old operation: MKDIR(1) '<TESTBASE>/test/local/a/3' '(null)'
mark operation MKDIR -> RM other:<TESTBASE>/test/local/a/3 deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/a/2/f1.txt' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/a/2/f1.txt' '-'.
check_old_operation: RM(64) Old operation: NEW(2) '<TESTBASE>/test/local/a/2/f1.txt' '(null)'
mark operation NEW -> RM other:<TESTBASE>/test/local/a/2/f1.txt deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/a/2/f/f1.txt' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/a/2/f/f1.txt' '-'.
check_old_operation: RM(64) Old operation: NEW(2) '<TESTBASE>/test/local/a/2/f/f1.txt' '(null)'
mark operation NEW -> RM other:<TESTBASE>/test/local/a/2/f/f1.txt deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/a/2/f' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/a/2/f' '-'.
check_old_operation: RM(64) Old operation: MKDIR(1) '<TESTBASE>/test/local/a/2/f' '(null)'
mark operation MKDIR -> RM other:<TESTBASE>/test/local/a/2/f deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/a/2/e/f1.txt' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/a/2/e/f1.txt' '-'.
check_old_operation: RM(64) Old operation: NEW(2) '<TESTBASE>/test/local/a/2/e/f1.txt' '(null)'
mark operation NEW -> RM other:<TESTBASE>/test/local/a/2/e/f1.txt deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/a/2/e' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/a/2/e' '-'.
check_old_operation: RM(64) Old operation: MKDIR(1) '<TESTBASE>/test/local/a/2/e' '(null)'
mark operation MKDIR -> RM other:<TESTBASE>/test/local/a/2/e deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/a/2/d/f1.txt' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/a/2/d/f1.txt' '-'.
check_old_operation: RM(64) Old operation: NEW(2) '<TESTBASE>/test/local/a/2/d/f1.txt' '(null)'
mark operation NEW -> RM other:<TESTBASE>/test/local/a/2/d/f1.txt deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/a/2/d' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/a/2/d' '-'.
check_old_operation: RM(64) Old operation: MKDIR(1) '<TESTBASE>/test/local/a/2/d' '(null)'
mark operation MKDIR -> RM other:<TESTBASE>/test/local/a/2/d deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/a/2' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/a/2' '-'.
check_old_operation: RM(64) Old operation: MKDIR(1) '<TESTBASE>/test/local/a/2' '(null)'
mark operation MKDIR -> RM other:<TESTBASE>/test/local/a/2 deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/a/1/f1.txt' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/a/1/f1.txt' '-'.
check_old_operation: RM(64) Old operation: NEW(2) '<TESTBASE>/test/local/a/1/f1.txt' '(null)'
mark operation NEW -> RM other:<TESTBASE>/test/local/a/1/f1.txt deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/a/1/f/f1.txt' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/a/1/f/f1.txt' '-'.
check_old_operation: RM(64) Old operation: NEW(2) '<TESTBASE>/test/local/a/1/f/f1.txt' '(null)'
mark operation NEW -> RM other:<TESTBASE>/test/local/a/1/f/f1.txt deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/a/1/f' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/a/1/f' '-'.
check_old_operation: RM(64) Old operation: MKDIR(1) '<TESTBASE>/test/local/a/1/f' '(null)'
mark operation MKDIR -> RM other:<TESTBASE>/test/local/a/1/f deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/a/1/e/f1.txt' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/a/1/e/f1.txt' '-'.
check_old_operation: RM(64) Old operation: NEW(2) '<TESTBASE>/test/local/a/1/e/f1.txt' '(null)'
mark operation NEW -> RM other:<TESTBASE>/test/local/a/1/e/f1.txt deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/a/1/e' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/a/1/e' '-'.
check_old_operation: RM(64) Old operation: MKDIR(1) '<TESTBASE>/test/local/a/1/e' '(null)'
mark operation MKDIR -> RM other:<TESTBASE>/test/local/a/1/e deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/a/1/d/f1.txt' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/a/1/d/f1.txt' '-'.
check_old_operation: RM(64) Old operation: NEW(2) '<TESTBASE>/test/local/a/1/d/f1.txt' '(null)'
mark operation NEW -> RM other:<TESTBASE>/test/local/a/1/d/f1.txt deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/a/1/d' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/a/1/d' '-'.
check_old_operation: RM(64) Old operation: MKDIR(1) '<TESTBASE>/test/local/a/1/d' '(null)'
mark operation MKDIR -> RM other:<TESTBASE>/test/local/a/1/d deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/a/1' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/a/1' '-'.
check_old_operation: RM(64) Old operation: MKDIR(1) '<TESTBASE>/test/local/a/1' '(null)'
mark operation MKDIR -> RM other:<TESTBASE>/test/local/a/1 deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/a' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/a' '-'.
check_old_operation: RM(64) Old operation: MKDIR(1) '<TESTBASE>/test/local/a' '(null)'
mark operation MKDIR -> RM other:<TESTBASE>/test/local/a deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local' '-'.
check_old_operation: RM(64) Old operation: MKDIR(1) '<TESTBASE>/test/local' '(null)'
mark operation MKDIR -> RM other:<TESTBASE>/test/local deleted before syncing. Removing from dirty.
