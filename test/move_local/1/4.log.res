cmd c "move B newdir/C => new newdir/C" local peer test
Running recursive check for <TESTBASE>/test ...
Checking recursive for modified files <TESTBASE>/test 
mark other operation: 'MOD_DIR' 'other:<TESTBASE>/test/local' '-'.
mark operation NEW -> MOD => NEW other:<TESTBASE>/test/local (not synced) .
mark other operation: 'MOD_DIR' 'peer:<TESTBASE>/test/local' '-'.
mark operation NEW -> MOD => NEW peer:<TESTBASE>/test/local (not synced) .
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local/newdir' '-'.
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local/newdir' '-'.
Found MOVE <TESTBASE>/test/local/B -> <TESTBASE>/test/local/newdir/C 
mark other operation: 'MV' 'other:<TESTBASE>/test/local/newdir/C' '<TESTBASE>/test/local/B'.
mark operation NEW->MV => NEW other '<TESTBASE>/test/local/newdir/C' '<TESTBASE>/test/local/B' '<TESTBASE>/test/local/B'.
mark other operation: 'MV' 'peer:<TESTBASE>/test/local/newdir/C' '<TESTBASE>/test/local/B'.
mark operation NEW->MV => NEW peer '<TESTBASE>/test/local/newdir/C' '<TESTBASE>/test/local/B' '<TESTBASE>/test/local/B'.
Checking for deleted files <TESTBASE>/test recursive.
