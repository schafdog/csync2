cmd c "New dir timestamp due to file (check)" local peer test
Running recursive check for <TESTBASE>/test ...
Checking recursive for modified files <TESTBASE>/test 
mark other operation: 'MOD_DIR' 'peer:<TESTBASE>/test/local/usr/local/sbin' '-'.
mark other operation: 'MOD_DIR' 'other:<TESTBASE>/test/local/usr/local/sbin' '-'.
mark operation NEW -> MOD => NEW other:<TESTBASE>/test/local/usr/local/sbin (not synced) .
Checking for deleted files <TESTBASE>/test recursive.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/usr/local/sbin/hej' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/usr/local/sbin/hej' '-'.
mark operation NEW -> RM other:<TESTBASE>/test/local/usr/local/sbin/hej deleted before syncing. Removing from dirty.
