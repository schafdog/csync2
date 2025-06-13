cmd x "move Maildir/new/1434.M21,S=6631,W=6764 Maildir/cur/1434.M21,S=6631,W=6764:2," local peer test
Running recursive check for <TESTBASE>/test ...
Checking recursive for modified files <TESTBASE>/test 
mark other operation: 'MOD_DIR' 'peer:<TESTBASE>/test/local/Maildir/new' '-'.
mark other operation: 'MOD_DIR' 'other:<TESTBASE>/test/local/Maildir/new' '-'.
mark operation NEW -> MOD => NEW other:<TESTBASE>/test/local/Maildir/new (not synced) .
mark other operation: 'MOD_DIR' 'peer:<TESTBASE>/test/local/Maildir/cur' '-'.
mark other operation: 'MOD_DIR' 'other:<TESTBASE>/test/local/Maildir/cur' '-'.
mark operation NEW -> MOD => NEW other:<TESTBASE>/test/local/Maildir/cur (not synced) .
Found MOVE <TESTBASE>/test/local/Maildir/new/1434.M21,S=6631,W=6764 -> <TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2, 
mark other operation: 'MV' 'peer:<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,' '<TESTBASE>/test/local/Maildir/new/1434.M21,S=6631,W=6764'.
mark other operation: 'MV' 'other:<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,' '<TESTBASE>/test/local/Maildir/new/1434.M21,S=6631,W=6764'.
mark operation NEW->MV => NEW other '<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,' '<TESTBASE>/test/local/Maildir/new/1434.M21,S=6631,W=6764' '<TESTBASE>/test/local/Maildir/new/1434.M21,S=6631,W=6764'.
Checking for deleted files <TESTBASE>/test recursive.
Got dirty files from host peer
Connecting to host peer (PLAIN) ...
Updating (MOD_DIR) 'peer:<TESTBASE>/test/local/Maildir/cur' ''
?M: peer            <TESTBASE>/test/local/Maildir/cur
Updating (MOD_DIR) 'peer:<TESTBASE>/test/local/Maildir/new' ''
?M: peer            <TESTBASE>/test/local/Maildir/new
Updating (MV) 'peer:<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,' '<TESTBASE>/test/local/Maildir/new/1434.M21,S=6631,W=6764'
Succes: MV <TESTBASE>/test/local/Maildir/new/1434.M21,S=6631,W=6764 <TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,
