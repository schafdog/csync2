cmd c "move Z B => new B " local peer test
Running recursive check for <TESTBASE>/test ...
Checking recursive for modified files <TESTBASE>/test 
mark other operation: 'MOD_DIR' 'other:<TESTBASE>/test/local' '-'.
mark operation NEW -> MOD => NEW other:<TESTBASE>/test/local (not synced) .
mark other operation: 'MOD_DIR' 'peer:<TESTBASE>/test/local' '-'.
mark operation NEW -> MOD => NEW peer:<TESTBASE>/test/local (not synced) .
Found MOVE <TESTBASE>/test/local/Z -> <TESTBASE>/test/local/B 
mark other operation: 'MV' 'other:<TESTBASE>/test/local/B' '<TESTBASE>/test/local/Z'.
mark operation NEW->MV => NEW other '<TESTBASE>/test/local/B' '<TESTBASE>/test/local/Z' '<TESTBASE>/test/local/Z'.
mark other operation: 'MV' 'peer:<TESTBASE>/test/local/B' '<TESTBASE>/test/local/Z'.
mark operation NEW->MV => NEW peer '<TESTBASE>/test/local/B' '<TESTBASE>/test/local/Z' '<TESTBASE>/test/local/Z'.
Checking for deleted files <TESTBASE>/test recursive.
