cmd x "4. clean up" local peer test
Running recursive check for <TESTBASE>/test ...
Checking recursive for modified files <TESTBASE>/test 
Checking for deleted files <TESTBASE>/test recursive.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/recursive/1/2/3/4/5/file.c' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/recursive/1/2/3/4/5/file.c' '-'.
mark operation NEW -> RM other:<TESTBASE>/test/local/recursive/1/2/3/4/5/file.c deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/recursive/1/2/3/4/5' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/recursive/1/2/3/4/5' '-'.
WARN: operation - op mismatch: MKDIR(1) <> MKDIR(129)
mark operation MKDIR -> RM other:<TESTBASE>/test/local/recursive/1/2/3/4/5 deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/recursive/1/2/3/4' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/recursive/1/2/3/4' '-'.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/recursive/1/2/3' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/recursive/1/2/3' '-'.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/recursive/1/2' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/recursive/1/2' '-'.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/recursive/1' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/recursive/1' '-'.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/recursive' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/recursive' '-'.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local' '-'.
Got 8 dirty files from host peer
Connecting to host peer (PLAIN) ...
Deleting peer:<TESTBASE>/test/local
