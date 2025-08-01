cmd c "move A Z => new Z " local peer test
Running recursive check for <TESTBASE>/test ...
Checking recursive for modified files <TESTBASE>/test 
mark other operation: 'MOD_DIR' 'peer:<TESTBASE>/test/local' '-'.
mark operation NEW -> MOD => NEW peer:<TESTBASE>/test/local (not synced) .
mark other operation: 'MOD_DIR' 'other:<TESTBASE>/test/local' '-'.
mark operation NEW -> MOD => NEW other:<TESTBASE>/test/local (not synced) .
Found MOVE <TESTBASE>/test/local/A -> <TESTBASE>/test/local/Z 
mark other operation: 'MV' 'peer:<TESTBASE>/test/local/Z' '<TESTBASE>/test/local/A'.
mark operation NEW->MV => NEW peer '<TESTBASE>/test/local/Z' '<TESTBASE>/test/local/A' '<TESTBASE>/test/local/A'.
mark other operation: 'MV' 'other:<TESTBASE>/test/local/Z' '<TESTBASE>/test/local/A'.
mark operation NEW->MV => NEW other '<TESTBASE>/test/local/Z' '<TESTBASE>/test/local/A' '<TESTBASE>/test/local/A'.
Checking for deleted files <TESTBASE>/test recursive.
