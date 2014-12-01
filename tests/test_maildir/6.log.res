cmd x "Delete email: ln Maildir/cur/123,S Maildir/.Trash/cur/123,S. mv 123,S 123,ST" local
Reading symbols from shared library libmysqlclient.so
Running recursive check for /export/home/dennis/Projects/csync2/csync2/tests/test ...
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/tests/test recursive.
mark other operation: RM peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,S '-'.
mark other operation: RM other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,S '-'.
mark other operation: MOD_DIR peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur '-'.
mark other operation: MOD_DIR other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur '-'.
mark other operation: NEW peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,ST '-'.
mark other operation: NEW other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,ST '-'.
mark other operation: MOD_DIR peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur '-'.
mark other operation: MOD_DIR other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur '-'.
mark other operation: NEW peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/123,S '-'.
mark other operation: NEW other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/123,S '-'.
Connecting to host peer (PLAIN) ...
CONN local> CONFIG 

CONN local> HELLO local

Updating 'peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur' MOD_DIR ''
CONN local> SIG %25test%25/Maildir/.Trash/cur user/group 1000 1000 dennis schafroth 16877 
?M: peer            /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur
CONN local> MKDIR %25test%25/Maildir/.Trash/cur - 1000 1000 dennis schafroth 16877 
Updating 'peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/123,S' NEW ''
CONN local> SIG %25test%25/Maildir/.Trash/cur/123,S user/group 1000 1000 dennis schafroth 33188 
?M: peer            /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/123,S
OPERATION: MHARDLINK /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,ST to /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/123,S
OPERATION: MHARDLINK /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,ST to /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/123,S
Other file not found. Posible MOVE operation: /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,S
OPERATION: MOVE /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,S to /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/123,S
check move: /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/123,S /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,S 
 CONN local> MV %25test%25/Maildir/cur/123,S 
Succes: MV /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,S /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/123,S
Updating 'peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur' MOD_DIR ''
CONN local> SIG %25test%25/Maildir/cur user/group 1000 1000 dennis schafroth 16877 
Updating 'peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,ST' NEW ''
CONN local> SIG %25test%25/Maildir/cur/123,ST user/group 1000 1000 dennis schafroth 33188 
?M: peer            /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,ST
OPERATION: MHARDLINK /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/123,S to /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,ST
Hardlinking %25test%25/Maildir/.Trash/cur/123,S -> %25test%25/Maildir/cur/123,ST
CONN local> MKHARDLINK %25test%25/Maildir/.Trash/cur/123,S %25test%25/Maildir/cur/123,ST 
OPERATION: MHARDLINK /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/123,S to /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,ST
CONN local> SIG %25test%25/Maildir/.Trash/cur/123,S user/group 1000 1000 dennis schafroth 33188 
Hardlinking %25test%25/Maildir/.Trash/cur/123,S -> %25test%25/Maildir/cur/123,ST
CONN local> MKHARDLINK %25test%25/Maildir/.Trash/cur/123,S %25test%25/Maildir/cur/123,ST 
Deleting peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,S
CONN local> SIG %25test%25/Maildir/cur/123,S 
peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,S is already up to date on peer. 
CONN local> SETTIME %25test%25/Maildir/cur 
CONN local> SETTIME %25test%25/Maildir 
CONN local> SETTIME %25test%25/Maildir/.Trash/cur 
CONN local> SETTIME %25test%25/Maildir/.Trash 
CONN local> BYE

Finished succesfully.
