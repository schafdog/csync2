cmd x "9 Remove files. Removed from other" local peer test
Running recursive check for <TESTBASE>/test ...
Checking recursive for modified files <TESTBASE>/test 
mark other operation: 'MOD_DIR' 'peer:<TESTBASE>/test/local/Maildir/cur' '-'.
mark other operation: 'MOD_DIR' 'other:<TESTBASE>/test/local/Maildir/cur' '-'.
mark operation NEW -> MOD => NEW other:<TESTBASE>/test/local/Maildir/cur (not synced) .
mark other operation: 'MOD_DIR' 'peer:<TESTBASE>/test/local/Maildir/.Trash/cur' '-'.
mark other operation: 'MOD_DIR' 'other:<TESTBASE>/test/local/Maildir/.Trash/cur' '-'.
mark operation NEW -> MOD => NEW other:<TESTBASE>/test/local/Maildir/.Trash/cur (not synced) .
Checking for deleted files <TESTBASE>/test recursive.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S' '-'.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST' '-'.
mark operation NEW -> RM other:<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST deleted before syncing. Removing from dirty.
Got dirty files from host peer
Connecting to host peer (PLAIN) ...
Updating (MOD_DIR) 'peer:<TESTBASE>/test/local/Maildir/cur' ''
?M: peer            <TESTBASE>/test/local/Maildir/cur
Updating (MOD_DIR) 'peer:<TESTBASE>/test/local/Maildir/.Trash/cur' ''
?M: peer            <TESTBASE>/test/local/Maildir/.Trash/cur
Deleting peer:<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
Deleting peer:<TESTBASE>/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S
