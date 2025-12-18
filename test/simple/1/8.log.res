cmd c "updated local/new_file 'N' all (MOD)" local peer test/local
Running recursive check for <TESTBASE>/test/local ...
Checking recursive for modified files <TESTBASE>/test/local 
mark other operation: 'MOD_DIR' 'other:<TESTBASE>/test/local' '-'.
mark operation NEW -> MOD => NEW other:<TESTBASE>/test/local (not synced) .
mark other operation: 'MOD_DIR' 'peer:<TESTBASE>/test/local' '-'.
mark other operation: 'MOD' 'other:<TESTBASE>/test/local/new_file 'N' all' '-'.
mark operation NEW -> MOD => NEW other:<TESTBASE>/test/local/new_file 'N' all (not synced) .
mark other operation: 'MOD' 'peer:<TESTBASE>/test/local/new_file 'N' all' '-'.
mark other operation: 'NEW' 'other:<TESTBASE>/test/local/mark' '-'.
mark other operation: 'NEW' 'peer:<TESTBASE>/test/local/mark' '-'.
Checking for deleted files <TESTBASE>/test/local recursive.
