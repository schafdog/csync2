cmd x "clean up other" local peer test
Running recursive check for <TESTBASE>/test ...
Checking recursive for modified files <TESTBASE>/test 
Checking for deleted files <TESTBASE>/test recursive.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/usr/local/sbin' '-'.
mark operation MKDIR -> RM peer:<TESTBASE>/test/local/usr/local/sbin deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/usr/local/sbin' '-'.
mark operation MKDIR -> RM other:<TESTBASE>/test/local/usr/local/sbin deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/usr/local/def/hej' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/usr/local/def/hej' '-'.
mark operation NEW -> RM other:<TESTBASE>/test/local/usr/local/def/hej deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/usr/local/def' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/usr/local/def' '-'.
mark operation MKDIR -> RM other:<TESTBASE>/test/local/usr/local/def deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/usr/local/abc' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/usr/local/abc' '-'.
mark operation MKDIR -> RM other:<TESTBASE>/test/local/usr/local/abc deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/usr/local' '-'.
WARN: operation changed: MKDIR(1) => MKDIR(129)
mark operation MKDIR -> RM peer:<TESTBASE>/test/local/usr/local deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/usr/local' '-'.
mark operation MKDIR -> RM other:<TESTBASE>/test/local/usr/local deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/usr' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/usr' '-'.
mark operation MKDIR -> RM other:<TESTBASE>/test/local/usr deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local' '-'.
mark operation MKDIR -> RM other:<TESTBASE>/test/local deleted before syncing. Removing from dirty.
Got dirty files from host peer
Connecting to host peer (PLAIN) ...
Deleting peer:<TESTBASE>/test/local
