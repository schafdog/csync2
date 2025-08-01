cmd x "6 Directory to file (type change)" local peer test/local
Running recursive check for <TESTBASE>/test/local ...
Checking recursive for modified files <TESTBASE>/test/local 
mark other operation: 'MOD_DIR' 'peer:<TESTBASE>/test/local' '-'.
mark other operation: 'MOD_DIR' 'other:<TESTBASE>/test/local' '-'.
mark operation NEW -> MOD => NEW other:<TESTBASE>/test/local (not synced) .
File <TESTBASE>/test/local/type_change has changed mode 16384 => 32768 
mark other operation: 'MOD' 'peer:<TESTBASE>/test/local/type_change' '-'.
mark other operation: 'MOD' 'other:<TESTBASE>/test/local/type_change' '-'.
mark operation NEW -> MOD => NEW other:<TESTBASE>/test/local/type_change (not synced) .
Checking for deleted files <TESTBASE>/test/local recursive.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/type_change/new_file 'N' all' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/type_change/new_file 'N' all' '-'.
mark operation NEW -> RM other:<TESTBASE>/test/local/type_change/new_file 'N' all deleted before syncing. Removing from dirty.
Got dirty files from host peer
Connecting to host peer (PLAIN) ...
Updating (MOD_DIR) 'peer:<TESTBASE>/test/local' ''
?M: peer            <TESTBASE>/test/local
Updating (MOD) 'peer:<TESTBASE>/test/local/type_change' ''
?B: peer            <TESTBASE>/test/local/type_change
Deleting peer:<TESTBASE>/test/local/type_change/new_file 'N' all
peer:<TESTBASE>/test/local/type_change/new_file 'N' all is already up to date on peer.
