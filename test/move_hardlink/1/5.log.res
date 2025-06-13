cmd c "4 Read and deleted (check)" local peer test
Running recursive check for <TESTBASE>/test ...
Checking recursive for modified files <TESTBASE>/test 
mark other operation: 'MOD_DIR' 'peer:<TESTBASE>/test/local/Maildir/.Trash/cur' '-'.
mark other operation: 'MOD_DIR' 'other:<TESTBASE>/test/local/Maildir/.Trash/cur' '-'.
mark operation NEW -> MOD => NEW other:<TESTBASE>/test/local/Maildir/.Trash/cur (not synced) .
Found HARDLINK <TESTBASE>/test/local/Maildir/cur/123,Sab -> <TESTBASE>/test/local/Maildir/.Trash/cur/123,Sab 
mark other operation: 'HARDLINK' 'peer:<TESTBASE>/test/local/Maildir/.Trash/cur/123,Sab' '<TESTBASE>/test/local/Maildir/cur/123,Sab'.
mark other operation: 'HARDLINK' 'other:<TESTBASE>/test/local/Maildir/.Trash/cur/123,Sab' '<TESTBASE>/test/local/Maildir/cur/123,Sab'.
Checking for deleted files <TESTBASE>/test recursive.
