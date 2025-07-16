cmd x "3 Maildir tmp file" local peer test
Running recursive check for <TESTBASE>/test ...
Checking recursive for modified files <TESTBASE>/test 
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local' '-'.
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local' '-'.
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local/Maildir' '-'.
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local/Maildir' '-'.
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local/Maildir/tmp' '-'.
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local/Maildir/tmp' '-'.
mark other operation: 'NEW' 'peer:<TESTBASE>/test/local/Maildir/tmp/123' '-'.
mark other operation: 'NEW' 'other:<TESTBASE>/test/local/Maildir/tmp/123' '-'.
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local/Maildir/cur' '-'.
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local/Maildir/cur' '-'.
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local/Maildir/.Trash' '-'.
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local/Maildir/.Trash' '-'.
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local/Maildir/.Trash/cur' '-'.
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local/Maildir/.Trash/cur' '-'.
Checking for deleted files <TESTBASE>/test recursive.
Got dirty files from host peer
Connecting to host peer (PLAIN) ...
Updating (MKDIR) 'peer:<TESTBASE>/test/local' ''
Updating (MKDIR) 'peer:<TESTBASE>/test/local/Maildir' ''
Updating (MKDIR) 'peer:<TESTBASE>/test/local/Maildir/cur' ''
Updating (MKDIR) 'peer:<TESTBASE>/test/local/Maildir/tmp' ''
Updating (MKDIR) 'peer:<TESTBASE>/test/local/Maildir/.Trash' ''
Updating (MKDIR) 'peer:<TESTBASE>/test/local/Maildir/.Trash/cur' ''
Updating (NEW) 'peer:<TESTBASE>/test/local/Maildir/tmp/123' ''
CREATE <TESTBASE>/test/local/Maildir/tmp/123 4
