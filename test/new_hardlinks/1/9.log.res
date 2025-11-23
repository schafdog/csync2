cmd c "9 hardlinked when checked" local peer test
Running recursive check for <TESTBASE>/test ...
Checking recursive for modified files <TESTBASE>/test 
mark other operation: 'MOD_DIR' 'other:<TESTBASE>/test/local/new' '-'.
mark operation NEW -> MOD => NEW other:<TESTBASE>/test/local/new (not synced) .
mark other operation: 'MOD_DIR' 'peer:<TESTBASE>/test/local/new' '-'.
mark other operation: 'NEW' 'other:<TESTBASE>/test/local/new/was_hardlink' '-'.
mark other operation: 'NEW' 'peer:<TESTBASE>/test/local/new/was_hardlink' '-'.
Found HARDLINK <TESTBASE>/test/local/new/was_hardlink -> <TESTBASE>/test/local/new/hardlinked_6 
mark other operation: 'HARDLINK' 'other:<TESTBASE>/test/local/new/hardlinked_6' '<TESTBASE>/test/local/new/was_hardlink'.
mark other operation: 'HARDLINK' 'peer:<TESTBASE>/test/local/new/hardlinked_6' '<TESTBASE>/test/local/new/was_hardlink'.
Checking for deleted files <TESTBASE>/test recursive.
