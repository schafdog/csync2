cmd c "read (check)" local peer test
Running recursive check for <TESTBASE>/test ...
Checking recursive for modified files <TESTBASE>/test 
mark other operation: 'MOD_DIR' 'other:<TESTBASE>/test/local/Maildir/tmp' '-'.
mark operation NEW -> MOD => NEW other:<TESTBASE>/test/local/Maildir/tmp (not synced) .
mark other operation: 'MOD_DIR' 'peer:<TESTBASE>/test/local/Maildir/tmp' '-'.
mark other operation: 'MOD_DIR' 'other:<TESTBASE>/test/local/Maildir/cur' '-'.
mark operation NEW -> MOD => NEW other:<TESTBASE>/test/local/Maildir/cur (not synced) .
mark other operation: 'MOD_DIR' 'peer:<TESTBASE>/test/local/Maildir/cur' '-'.
Found MOVE <TESTBASE>/test/local/Maildir/tmp/123 -> <TESTBASE>/test/local/Maildir/cur/123,Sab 
mark other operation: 'MV' 'other:<TESTBASE>/test/local/Maildir/cur/123,Sab' '<TESTBASE>/test/local/Maildir/tmp/123'.
mark operation NEW->MV => NEW other '<TESTBASE>/test/local/Maildir/cur/123,Sab' '<TESTBASE>/test/local/Maildir/tmp/123' '<TESTBASE>/test/local/Maildir/tmp/123'.
mark other operation: 'MV' 'peer:<TESTBASE>/test/local/Maildir/cur/123,Sab' '<TESTBASE>/test/local/Maildir/tmp/123'.
Checking for deleted files <TESTBASE>/test recursive.
