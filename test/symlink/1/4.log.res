cmd x "Clean up" local peer test
Running recursive check for <TESTBASE>/test ...
Checking recursive for modified files <TESTBASE>/test 
Checking for deleted files <TESTBASE>/test recursive.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/new_file 'N' all.link' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/new_file 'N' all.link' '-'.
mark operation NEW -> RM other:<TESTBASE>/test/local/new_file 'N' all.link deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/new_file 'N' all' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/new_file 'N' all' '-'.
mark operation NEW -> RM other:<TESTBASE>/test/local/new_file 'N' all deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/bad.link' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/bad.link' '-'.
mark operation NEW -> RM other:<TESTBASE>/test/local/bad.link deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local' '-'.
mark operation MKDIR -> RM other:<TESTBASE>/test/local deleted before syncing. Removing from dirty.
Got 4 dirty files from host peer
Connecting to host peer (PLAIN) ...
Deleting peer:<TESTBASE>/test/local
