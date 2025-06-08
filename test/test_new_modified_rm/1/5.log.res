cmd c "rm newdir (removed from dirty)" local peer test
Running recursive check for <TESTBASE>/test ...
Checking recursive for modified files <TESTBASE>/test 
mark other operation: 'MOD_DIR' 'peer:<TESTBASE>/test/local' '-'.
mark operation NEW -> MOD => NEW peer:<TESTBASE>/test/local (not synced) .
mark other operation: 'MOD_DIR' 'other:<TESTBASE>/test/local' '-'.
mark operation NEW -> MOD => NEW other:<TESTBASE>/test/local (not synced) .
Checking for deleted files <TESTBASE>/test recursive.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/newdir' '-'.
mark operation MKDIR -> RM peer:<TESTBASE>/test/local/newdir deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/newdir' '-'.
mark operation MKDIR -> RM other:<TESTBASE>/test/local/newdir deleted before syncing. Removing from dirty.
