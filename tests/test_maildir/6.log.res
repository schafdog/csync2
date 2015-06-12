cmd x "Delete email: ln Maildir/cur/123,S Maildir/.Trash/cur/123,S. mv 123,S 123,ST" local
Reading symbols from shared library libmysqlclient.so
Running recursive check for /export/home/dennis/Projects/csync2/csync2/tests/test ...
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/tests/test recursive.
mark other operation: RM peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,S '-'.
mark other operation: RM other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,S '-'.
mark other: Old operation: NEW '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,S' '(null)' mark operation NEW -> NOP other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,S deleted before syncing. Removing from dirty.
mark other operation: MOD_DIR peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur '-'.
mark other operation: MOD_DIR other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur '-'.
mark other: Old operation: MKDIR '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur' '(null)' mark operation MOD_DIR -> MKDIR other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur (not synced) .
mark other operation: NEW peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,ST '-'.
mark other: Old operation: RM '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,S' '(null)' mark other operation: NEW other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,ST '-'.
mark other operation: MOD_DIR peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur '-'.
mark other operation: MOD_DIR other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur '-'.
mark other: Old operation: MKDIR '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur' '(null)' mark operation MOD_DIR -> MKDIR other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur (not synced) .
mark other operation: NEW peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/123,S '-'.
mark other: Old operation: RM '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,S' '(null)' mark other operation: NEW other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/123,S '-'.
mark other: Old operation: NEW '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,ST' '(null)' Connecting to host peer (PLAIN) ...
CONN peer < CONFIG 

CONN peer < HELLO local

Updating 'peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur' MOD_DIR ''
CONN peer < SIG %25test%25/Maildir/.Trash/cur user/group 1000 1000 dennis schafroth 16877 
?M: peer            /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur
CONN peer < MKDIR %25test%25/Maildir/.Trash/cur - 1000 1000 dennis schafroth 16877 
Updating 'peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/123,S' NEW ''
CONN peer < SIG %25test%25/Maildir/.Trash/cur/123,S user/group 1000 1000 dennis schafroth 33188 
?M: peer            /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/123,S
OPERATION: MHARDLINK /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,ST to /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/123,S
OPERATION: MHARDLINK /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,ST to /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/123,S
check_link_move: Other file not found. Posible MOVE operation: /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,S
OPERATION: MOVE /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,S to /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/123,S
check move: /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/123,S /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,S 
 CONN peer < MV %25test%25/Maildir/cur/123,S 
Succes: MV /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,S /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/123,S
Updating 'peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur' MOD_DIR ''
CONN peer < SIG %25test%25/Maildir/cur user/group 1000 1000 dennis schafroth 16877 
Updating 'peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,ST' NEW ''
CONN peer < SIG %25test%25/Maildir/cur/123,ST user/group 1000 1000 dennis schafroth 33188 
?M: peer            /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,ST
OPERATION: MHARDLINK /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/123,S to /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,ST
Hardlinking %25test%25/Maildir/.Trash/cur/123,S -> %25test%25/Maildir/cur/123,ST
CONN peer < MKHARDLINK %25test%25/Maildir/.Trash/cur/123,S %25test%25/Maildir/cur/123,ST 
Deleting peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,S
CONN peer < SIG %25test%25/Maildir/cur/123,S 
peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,S is already up to date on peer. 
CONN peer < SETTIME %25test%25/Maildir/cur 
CONN peer < SETTIME %25test%25/Maildir 
CONN peer < SETTIME %25test%25/Maildir/.Trash/cur 
CONN peer < SETTIME %25test%25/Maildir/.Trash 
CONN peer < BYE

Freed active_peers 0x1229470
Finished succesfully.
