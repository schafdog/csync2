cmd x "clean up" local peer test
Running recursive check for <TESTBASE>/test ...
Checking recursive for modified files <TESTBASE>/test 
Checking for deleted files <TESTBASE>/test recursive.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/tmp' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/tmp' '-'.
mark operation MKDIR -> RM other:<TESTBASE>/test/local/tmp deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/different' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/different' '-'.
mark operation NEW -> RM other:<TESTBASE>/test/local/different deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local' '-'.
mark operation MKDIR -> RM other:<TESTBASE>/test/local deleted before syncing. Removing from dirty.
Got 3 dirty files from host peer
Connecting to host peer (PLAIN) ...
Deleting peer:<TESTBASE>/test/local
peer:<TESTBASE>/test/local is already up to date on peer.
