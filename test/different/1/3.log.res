cmd x "Both updated (peer dirty)" local peer test
Running recursive check for <TESTBASE>/test ...
Checking recursive for modified files <TESTBASE>/test 
mark other operation: 'MOD_DIR' 'other:<TESTBASE>/test/local' '-'.
mark operation NEW -> MOD => NEW other:<TESTBASE>/test/local (not synced) .
mark other operation: 'MOD_DIR' 'peer:<TESTBASE>/test/local' '-'.
mark other operation: 'NEW' 'other:<TESTBASE>/test/local/different' '-'.
mark other operation: 'NEW' 'peer:<TESTBASE>/test/local/different' '-'.
Checking for deleted files <TESTBASE>/test recursive.
Got 2 dirty files from host peer
Connecting to host peer (PLAIN) ...
Updating (MOD_DIR) 'peer:<TESTBASE>/test/local' ''
Updating (NEW) 'peer:<TESTBASE>/test/local/different' ''
?F: peer            <TESTBASE>/test/local/different
While syncing file: <TESTBASE>/test/local/different
ERROR from peer: File is also marked dirty here! (<TESTBASE>/test/peer/different) rc: -11 
