cmd x "New local/ÆØÅ Café with utf8 and latin1 (removed)" local peer test
Running recursive check for <TESTBASE>/test ...
Checking recursive for modified files <TESTBASE>/test 
mark other operation: 'MOD_DIR' 'peer:<TESTBASE>/test/local' '-'.
mark other operation: 'MOD_DIR' 'other:<TESTBASE>/test/local' '-'.
mark operation NEW -> MOD => NEW other:<TESTBASE>/test/local (not synced) .
Checking for deleted files <TESTBASE>/test recursive.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/ÆØÅ Café.utf8' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/ÆØÅ Café.utf8' '-'.
mark operation NEW -> RM other:<TESTBASE>/test/local/ÆØÅ Café.utf8 deleted before syncing. Removing from dirty.
Got 2 dirty files from host peer
Connecting to host peer (PLAIN) ...
Updating (MOD_DIR) 'peer:<TESTBASE>/test/local' ''
?M: peer            <TESTBASE>/test/local
Deleting peer:<TESTBASE>/test/local/ÆØÅ Café.utf8
