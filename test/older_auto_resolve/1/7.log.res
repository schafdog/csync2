cmd c "7 Check local (older)" local peer test
Running recursive check for <TESTBASE>/test ...
Checking recursive for modified files <TESTBASE>/test 
mark other operation: 'MOD_DIR' 'peer:<TESTBASE>/test/local' '-'.
mark other operation: 'MOD_DIR' 'other:<TESTBASE>/test/local' '-'.
mark operation NEW -> MOD => NEW other:<TESTBASE>/test/local (not synced) .
mark other operation: 'MOD_DIR' 'peer:<TESTBASE>/test/local/auto' '-'.
mark other operation: 'MOD_DIR' 'other:<TESTBASE>/test/local/auto' '-'.
mark operation NEW -> MOD => NEW other:<TESTBASE>/test/local/auto (not synced) .
mark other operation: 'MOD_DIR' 'peer:<TESTBASE>/test/local/auto/older' '-'.
mark other operation: 'MOD_DIR' 'other:<TESTBASE>/test/local/auto/older' '-'.
mark operation NEW -> MOD => NEW other:<TESTBASE>/test/local/auto/older (not synced) .
mark other operation: 'MOD' 'peer:<TESTBASE>/test/local/auto/older/update_both' '-'.
mark operation NEW -> MOD => NEW peer:<TESTBASE>/test/local/auto/older/update_both (not synced) .
mark other operation: 'MOD' 'other:<TESTBASE>/test/local/auto/older/update_both' '-'.
mark operation NEW -> MOD => NEW other:<TESTBASE>/test/local/auto/older/update_both (not synced) .
Checking for deleted files <TESTBASE>/test recursive.
