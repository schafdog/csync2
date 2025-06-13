cmd c "check: Delete email: ln Maildir/cur/1434.M21,S=6631,W=6764:2,S Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S. mv 1434.M21,S=6631,W=6764:2,S 1434.M21,S=6631,W=6764:2,ST" local peer test
Running recursive check for <TESTBASE>/test ...
Checking recursive for modified files <TESTBASE>/test 
mark other operation: 'MOD_DIR' 'peer:<TESTBASE>/test/local/Maildir/cur' '-'.
mark other operation: 'MOD_DIR' 'other:<TESTBASE>/test/local/Maildir/cur' '-'.
mark operation NEW -> MOD => NEW other:<TESTBASE>/test/local/Maildir/cur (not synced) .
Found MOVE <TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,S -> <TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST 
mark other operation: 'MV' 'peer:<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST' '<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,S'.
mark other operation: 'MV' 'other:<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST' '<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,S'.
mark operation NEW->MV => NEW other '<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST' '<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,S' '<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,S'.
mark other operation: 'MOD_DIR' 'peer:<TESTBASE>/test/local/Maildir/.Trash/cur' '-'.
mark other operation: 'MOD_DIR' 'other:<TESTBASE>/test/local/Maildir/.Trash/cur' '-'.
mark operation NEW -> MOD => NEW other:<TESTBASE>/test/local/Maildir/.Trash/cur (not synced) .
Found HARDLINK <TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST -> <TESTBASE>/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S 
mark other operation: 'HARDLINK' 'peer:<TESTBASE>/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S' '<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST'.
mark other operation: 'HARDLINK' 'other:<TESTBASE>/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S' '<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST'.
Checking for deleted files <TESTBASE>/test recursive.
