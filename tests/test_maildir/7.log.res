cmd x "clean up" local
Reading symbols from shared library libmysqlclient.so
Running recursive check for /export/home/dennis/Projects/csync2/csync2/tests/test ...
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/tests/test recursive.
mark other operation: RM peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp '-'.
mark other operation: RM other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp '-'.
mark other: Old operation: MKDIR '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp' '(null)' mark operation MKDIR -> NOP other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp deleted before syncing. Removing from dirty.
mark other operation: RM peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new '-'.
mark other operation: RM other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new '-'.
mark other: Old operation: MKDIR '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new' '(null)' mark operation MKDIR -> NOP other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new deleted before syncing. Removing from dirty.
mark other operation: RM peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,ST '-'.
mark other operation: RM other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,ST '-'.
mark other: Old operation: NEW '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,ST' '(null)' mark operation NEW -> NOP other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,ST deleted before syncing. Removing from dirty.
mark other operation: RM peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur '-'.
mark other operation: RM other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur '-'.
mark other: Old operation: MKDIR '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur' '(null)' mark operation MKDIR -> NOP other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur deleted before syncing. Removing from dirty.
mark other operation: RM peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,S '-'.
mark other: Old operation: RM '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,ST' '(null)' mark other operation: RM other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,S '-'.
mark other: Old operation: NEW '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,S' '(null)' mark operation NEW -> NOP other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,S deleted before syncing. Removing from dirty.
mark other operation: RM peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur '-'.
mark other operation: RM other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur '-'.
mark other: Old operation: MKDIR '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur' '(null)' mark operation MKDIR -> NOP other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur deleted before syncing. Removing from dirty.
mark other operation: RM peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash '-'.
mark other operation: RM other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash '-'.
mark other: Old operation: MKDIR '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash' '(null)' mark operation MKDIR -> NOP other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash deleted before syncing. Removing from dirty.
mark other operation: RM peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir '-'.
mark other operation: RM other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir '-'.
mark other: Old operation: MKDIR '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir' '(null)' mark operation MKDIR -> NOP other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir deleted before syncing. Removing from dirty.
mark other operation: MOD_DIR peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local '-'.
mark other operation: MOD_DIR other:/export/home/dennis/Projects/csync2/csync2/tests/test/local '-'.
mark other: Old operation: MKDIR '/export/home/dennis/Projects/csync2/csync2/tests/test/local' '(null)' mark operation MOD_DIR -> MKDIR other:/export/home/dennis/Projects/csync2/csync2/tests/test/local (not synced) .
Connecting to host peer (PLAIN) ...
CONN peer < CONFIG 

CONN peer < HELLO local

Updating 'peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local' MOD_DIR ''
CONN peer < SIG %25test%25 user/group 1000 1000 dennis schafroth 16877 
?M: peer            /export/home/dennis/Projects/csync2/csync2/tests/test/local
CONN peer < MKDIR %25test%25 - 1000 1000 dennis schafroth 16877 
Deleting peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp
CONN peer < SIG %25test%25/Maildir/tmp 
CONN peer < DEL %25test%25/Maildir/tmp 
Deleting peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new
CONN peer < SIG %25test%25/Maildir/new 
CONN peer < DEL %25test%25/Maildir/new 
Deleting peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,ST
CONN peer < SIG %25test%25/Maildir/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764%3A2,ST 
CONN peer < DEL %25test%25/Maildir/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764%3A2,ST 
Deleting peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur
CONN peer < SIG %25test%25/Maildir/cur 
CONN peer < DEL %25test%25/Maildir/cur 
Deleting peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,S
CONN peer < SIG %25test%25/Maildir/.Trash/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764%3A2,S 
CONN peer < DEL %25test%25/Maildir/.Trash/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764%3A2,S 
Deleting peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur
CONN peer < SIG %25test%25/Maildir/.Trash/cur 
CONN peer < DEL %25test%25/Maildir/.Trash/cur 
Deleting peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash
CONN peer < SIG %25test%25/Maildir/.Trash 
CONN peer < DEL %25test%25/Maildir/.Trash 
Deleting peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir
CONN peer < SIG %25test%25/Maildir 
CONN peer < DEL %25test%25/Maildir 
CONN peer < SETTIME %25test%25 
CONN peer < BYE

Finished succesfully.
