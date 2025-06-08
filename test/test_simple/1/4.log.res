cmd x "clean up" local peer test/local
Running recursive check for <TESTBASE>/test/local ...
Checking recursive for modified files <TESTBASE>/test/local 
Checking for deleted files <TESTBASE>/test/local recursive.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/.Test' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/.Test' '-'.
mark operation NEW -> RM other:<TESTBASE>/test/local/.Test deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/new_file 'N' all' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/new_file 'N' all' '-'.
mark operation NEW -> RM other:<TESTBASE>/test/local/new_file 'N' all deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/A' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/A' '-'.
mark operation NEW -> RM other:<TESTBASE>/test/local/A deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local' '-'.
mark operation MKDIR -> RM other:<TESTBASE>/test/local deleted before syncing. Removing from dirty.
Got dirty files from host peer
Connecting to host peer (PLAIN) ...
Deleting peer:<TESTBASE>/test/local
