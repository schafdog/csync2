cmd c "newdir newdir" local peer test
Running recursive check for <TESTBASE>/test ...
Checking recursive for modified files <TESTBASE>/test 
mark other operation: 'MOD_DIR' 'peer:<TESTBASE>/test/local' '-'.
mark operation NEW -> MOD => NEW peer:<TESTBASE>/test/local (not synced) .
mark other operation: 'MOD_DIR' 'other:<TESTBASE>/test/local' '-'.
mark operation NEW -> MOD => NEW other:<TESTBASE>/test/local (not synced) .
Found MOVE <TESTBASE>/test/local/A -> <TESTBASE>/test/local/newdir 
mark other operation: 'MV' 'peer:<TESTBASE>/test/local/newdir' '<TESTBASE>/test/local/A'.
mark other operation: 'MV' 'other:<TESTBASE>/test/local/newdir' '<TESTBASE>/test/local/A'.
Checking for deleted files <TESTBASE>/test recursive.
