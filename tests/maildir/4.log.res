cmd x "move Maildir/new/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764 Maildir/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2," local
Reading symbols from shared library libmysqlclient.so
Running recursive check for /export/home/dennis/Projects/csync2/csync2/tests/test ...
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/tests/test recursive.
mark other operation: 'RM' 'peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764' '-'.
mark other operation: 'RM' 'other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764' '-'.
mark other: Old operation: NEW '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764' '(null)' 
mark operation NEW -> NOP other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764 deleted before syncing. Removing from dirty.
mark other operation: 'MOD_DIR' 'peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new' '-'.
mark other operation: 'MOD_DIR' 'other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new' '-'.
mark other: Old operation: MKDIR '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new' '(null)' 
mark operation MOD_DIR -> MKDIR other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new (not synced) .
mark other operation: 'MOD_DIR' 'peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur' '-'.
mark other operation: 'MOD_DIR' 'other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur' '-'.
mark other: Old operation: MKDIR '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur' '(null)' 
mark operation MOD_DIR -> MKDIR other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur (not synced) .
mark other operation: 'NEW' 'peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,' '-'.
mark other: Old operation: RM '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764' '(null)' 
mark other operation: 'NEW' 'other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,' '-'.
Connecting to host peer (PLAIN) ...
Updating 'peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur' MOD_DIR ''
?M: peer            /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur
Updating 'peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,' NEW ''
?M: peer            /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,
check_link_move: Other file not found. Posible MOVE operation: /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764
OPERATION: MOVE /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764 to /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,
check move: /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2, /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764 
 Succes: MV /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764 /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,
Updating 'peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new' MOD_DIR ''
Deleting peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764
peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764 is already up to date on peer. 
Finished succesfully.