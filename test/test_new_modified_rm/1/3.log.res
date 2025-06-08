cmd c "newdir newdir" local peer test
Running recursive check for <TESTBASE>/test ...
Checking recursive for modified files <TESTBASE>/test 
mark other operation: 'MOD_DIR' 'peer:<TESTBASE>/test/local' '-'.
mark operation NEW -> MOD => NEW peer:<TESTBASE>/test/local (not synced) .
mark other operation: 'MOD_DIR' 'other:<TESTBASE>/test/local' '-'.
mark operation NEW -> MOD => NEW other:<TESTBASE>/test/local (not synced) .
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local/newdir' '-'.
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local/newdir' '-'.
Checking for deleted files <TESTBASE>/test recursive.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/A' '-'.
mark operation NEW -> RM peer:<TESTBASE>/test/local/A deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/A' '-'.
mark operation NEW -> RM other:<TESTBASE>/test/local/A deleted before syncing. Removing from dirty.
