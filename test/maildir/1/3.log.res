cmd x "New Maildir/new/1434.M21,S=6631,W=6764 with transit in tmp " local peer test
Running recursive check for <TESTBASE>/test ...
Checking recursive for modified files <TESTBASE>/test 
mark other operation: 'MOD_DIR' 'peer:<TESTBASE>/test/local/Maildir/tmp' '-'.
mark other operation: 'MOD_DIR' 'other:<TESTBASE>/test/local/Maildir/tmp' '-'.
mark operation NEW -> MOD => NEW other:<TESTBASE>/test/local/Maildir/tmp (not synced) .
mark other operation: 'MOD_DIR' 'peer:<TESTBASE>/test/local/Maildir/new' '-'.
mark other operation: 'MOD_DIR' 'other:<TESTBASE>/test/local/Maildir/new' '-'.
mark operation NEW -> MOD => NEW other:<TESTBASE>/test/local/Maildir/new (not synced) .
mark other operation: 'NEW' 'peer:<TESTBASE>/test/local/Maildir/new/1434.M21,S=6631,W=6764' '-'.
mark other operation: 'NEW' 'other:<TESTBASE>/test/local/Maildir/new/1434.M21,S=6631,W=6764' '-'.
Checking for deleted files <TESTBASE>/test recursive.
Got 3 dirty files from host peer
Connecting to host peer (PLAIN) ...
Updating (MOD_DIR) 'peer:<TESTBASE>/test/local/Maildir/new' ''
?M: peer            <TESTBASE>/test/local/Maildir/new
Updating (MOD_DIR) 'peer:<TESTBASE>/test/local/Maildir/tmp' ''
?M: peer            <TESTBASE>/test/local/Maildir/tmp
Updating (NEW) 'peer:<TESTBASE>/test/local/Maildir/new/1434.M21,S=6631,W=6764' ''
CREATE <TESTBASE>/test/local/Maildir/new/1434.M21,S=6631,W=6764 8
