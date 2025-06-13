cmd c "New file deleted (check)" local peer test
Running recursive check for <TESTBASE>/test ...
Checking recursive for modified files <TESTBASE>/test 
mark other operation: 'MOD_DIR' 'peer:<TESTBASE>/test/local/usr/local/sbin' '-'.
WARN: operation changed: MKDIR(1) => MKDIR(129)
mark operation NEW -> MOD => NEW peer:<TESTBASE>/test/local/usr/local/sbin (not synced) .
mark other operation: 'MOD_DIR' 'other:<TESTBASE>/test/local/usr/local/sbin' '-'.
mark operation NEW -> MOD => NEW other:<TESTBASE>/test/local/usr/local/sbin (not synced) .
Checking for deleted files <TESTBASE>/test recursive.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/usr/local/sbin/hej' '-'.
mark operation NEW -> RM peer:<TESTBASE>/test/local/usr/local/sbin/hej deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/usr/local/sbin/hej' '-'.
mark operation NEW -> RM other:<TESTBASE>/test/local/usr/local/sbin/hej deleted before syncing. Removing from dirty.
