cmd c "7 Check local (younger)" local peer test
Running recursive check for <TESTBASE>/test ...
Checking recursive for modified files <TESTBASE>/test 
mark other operation: 'MOD_DIR' 'other:<TESTBASE>/test/local' '-'.
mark operation NEW -> MOD => NEW other:<TESTBASE>/test/local (not synced) .
mark other operation: 'MOD_DIR' 'peer:<TESTBASE>/test/local' '-'.
mark other operation: 'MOD_DIR' 'other:<TESTBASE>/test/local/auto' '-'.
mark operation NEW -> MOD => NEW other:<TESTBASE>/test/local/auto (not synced) .
mark other operation: 'MOD_DIR' 'peer:<TESTBASE>/test/local/auto' '-'.
mark other operation: 'MOD_DIR' 'other:<TESTBASE>/test/local/auto/younger' '-'.
mark operation NEW -> MOD => NEW other:<TESTBASE>/test/local/auto/younger (not synced) .
mark other operation: 'MOD_DIR' 'peer:<TESTBASE>/test/local/auto/younger' '-'.
mark other operation: 'MOD' 'other:<TESTBASE>/test/local/auto/younger/local_oldest' '-'.
mark operation NEW -> MOD => NEW other:<TESTBASE>/test/local/auto/younger/local_oldest (not synced) .
mark other operation: 'MOD' 'peer:<TESTBASE>/test/local/auto/younger/local_oldest' '-'.
mark operation NEW -> MOD => NEW peer:<TESTBASE>/test/local/auto/younger/local_oldest (not synced) .
Checking for deleted files <TESTBASE>/test recursive.
