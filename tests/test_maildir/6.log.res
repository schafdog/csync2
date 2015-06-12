cmd x "Delete email: ln Maildir/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,S Maildir/.Trash/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,S. mv 1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,S 1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,ST" local
Reading symbols from shared library libmysqlclient.so
Running recursive check for /export/home/dennis/Projects/csync2/csync2/tests/test ...
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/tests/test recursive.
mark other operation: RM peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,S '-'.
mark other operation: RM other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,S '-'.
mark other: Old operation: NEW '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,S' '(null)' mark operation NEW -> NOP other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,S deleted before syncing. Removing from dirty.
mark other operation: MOD_DIR peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur '-'.
mark other operation: MOD_DIR other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur '-'.
mark other: Old operation: MKDIR '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur' '(null)' mark operation MOD_DIR -> MKDIR other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur (not synced) .
mark other operation: NEW peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,ST '-'.
mark other: Old operation: RM '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,S' '(null)' mark other operation: NEW other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,ST '-'.
mark other operation: MOD_DIR peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur '-'.
mark other operation: MOD_DIR other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur '-'.
mark other: Old operation: MKDIR '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur' '(null)' mark operation MOD_DIR -> MKDIR other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur (not synced) .
mark other operation: NEW peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,S '-'.
mark other: Old operation: RM '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,S' '(null)' mark other operation: NEW other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,S '-'.
mark other: Old operation: NEW '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,ST' '(null)' Connecting to host peer (PLAIN) ...
CONN peer < CONFIG 

CONN peer < HELLO local

Updating 'peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur' MOD_DIR ''
CONN peer < SIG %25test%25/Maildir/.Trash/cur user/group 1000 1000 dennis schafroth 16877 
?M: peer            /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur
CONN peer < MKDIR %25test%25/Maildir/.Trash/cur - 1000 1000 dennis schafroth 16877 
Updating 'peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,S' NEW ''
CONN peer < SIG %25test%25/Maildir/.Trash/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764%3A2,S user/group 1000 1000 dennis schafroth 33188 
?M: peer            /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,S
csync_check_link_move: OPERATION MHARDLINK /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,ST to /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,S
csync_check_link_move: OPERATION MHARDLINK /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,ST to /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,S
check_link_move: Other file not found. Posible MOVE operation: /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,S
OPERATION: MOVE /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,S to /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,S
check move: /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,S /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,S 
 CONN peer < MV %25test%25/Maildir/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764%3A2,S 
Succes: MV /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,S /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,S
Updating 'peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur' MOD_DIR ''
CONN peer < SIG %25test%25/Maildir/cur user/group 1000 1000 dennis schafroth 16877 
Updating 'peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,ST' NEW ''
CONN peer < SIG %25test%25/Maildir/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764%3A2,ST user/group 1000 1000 dennis schafroth 33188 
?M: peer            /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,ST
csync_check_link_move: OPERATION MHARDLINK /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,S to /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,ST
check hardlink: /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,ST /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,S 
 Hardlinking peer /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,S -> /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,ST
CONN peer < MKHARDLINK %25test%25/Maildir/.Trash/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764%3A2,S %25test%25/Maildir/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764%3A2,ST 
Deleting peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,S
CONN peer < SIG %25test%25/Maildir/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764%3A2,S 
peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,S is already up to date on peer. 
CONN peer < SETTIME %25test%25/Maildir/cur 
CONN peer < SETTIME %25test%25/Maildir 
CONN peer < SETTIME %25test%25/Maildir/.Trash/cur 
CONN peer < SETTIME %25test%25/Maildir/.Trash 
CONN peer < BYE

Finished succesfully.
