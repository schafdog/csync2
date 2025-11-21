cmd x "Both updated with new dir (both dirty)" local peer test
Running recursive check for <TESTBASE>/test ...
Checking recursive for modified files <TESTBASE>/test 
mark other operation: 'MOD_DIR' 'peer:<TESTBASE>/test/local' '-'.
mark other operation: 'MOD_DIR' 'other:<TESTBASE>/test/local' '-'.
mark operation NEW -> MOD => NEW other:<TESTBASE>/test/local (not synced) .
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local/tmp' '-'.
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local/tmp' '-'.
Checking for deleted files <TESTBASE>/test recursive.
Got 2 dirty files from host peer
Connecting to host peer (PLAIN) ...
Updating (MOD_DIR) 'peer:<TESTBASE>/test/local' ''
?M: peer            <TESTBASE>/test/local
Updating (MKDIR) 'peer:<TESTBASE>/test/local/tmp' ''
?M: peer            <TESTBASE>/test/local/tmp
