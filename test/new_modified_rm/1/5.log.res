cmd c "rm newdir (removed from dirty)" local peer test
Running recursive check for <TESTBASE>/test ...
Checking recursive for modified files <TESTBASE>/test 
mark other operation: 'MOD_DIR' 'peer:<TESTBASE>/test/local' '-'.
mark operation NEW -> MOD => NEW peer:<TESTBASE>/test/local (not synced) .
mark other operation: 'MOD_DIR' 'other:<TESTBASE>/test/local' '-'.
mark operation NEW -> MOD => NEW other:<TESTBASE>/test/local (not synced) .
Checking for deleted files <TESTBASE>/test recursive.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/newdir' '-'.
mark operation MV->RM peer '<TESTBASE>/test/local/A' '<TESTBASE>/test/local/newdir' file: '<TESTBASE>/test/local/newdir' old_filename: '<TESTBASE>/test/local/newdir' .
mark other operation: 'RM' 'other:<TESTBASE>/test/local/newdir' '-'.
mark operation MV->RM other '<TESTBASE>/test/local/A' '<TESTBASE>/test/local/newdir' file: '<TESTBASE>/test/local/newdir' old_filename: '<TESTBASE>/test/local/newdir' .
