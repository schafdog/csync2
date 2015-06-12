cmd x "move Maildir/new/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764 Maildir/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2," local
Reading symbols from shared library libmysqlclient.so
Running recursive check for /export/home/dennis/Projects/csync2/csync2/tests/test ...
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/tests/test recursive.
mark other operation: RM peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764 '-'.
mark other operation: RM other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764 '-'.
mark other: Old operation: NEW '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764' '(null)' mark operation NEW -> NOP other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764 deleted before syncing. Removing from dirty.
mark other operation: NEW peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2, '-'.
mark other: Old operation: RM '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764' '(null)' mark other operation: NEW other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2, '-'.
Connecting to host peer (PLAIN) ...
CONN peer < CONFIG 

CONN peer < HELLO local

Updating 'peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local' MKDIR ''
CONN peer < SIG %25test%25 user/group 1000 1000 dennis schafroth 16877 
Updating 'peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,' NEW ''
CONN peer < SIG %25test%25/Maildir/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764%3A2, user/group 1000 1000 dennis schafroth 33188 
?M: peer            /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,
check_link_move: Other file not found. Posible MOVE operation: /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764
OPERATION: MOVE /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764 to /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,
check move: /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2, /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764 
 CONN peer < MV %25test%25/Maildir/new/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764 
Succes: MV /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764 /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,
Deleting peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764
CONN peer < SIG %25test%25/Maildir/new/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764 
peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764 is already up to date on peer. 
CONN peer < SETTIME %25test%25/Maildir/new 
CONN peer < SETTIME %25test%25/Maildir/cur 
CONN peer < BYE

Finished succesfully.
