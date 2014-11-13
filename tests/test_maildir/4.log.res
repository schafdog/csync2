cmd x "move Maildir/cur/123 Maildir/cur/123,S (mark read)" local
Reading symbols from shared library libmysqlclient.so
Running recursive check for /export/home/dennis/Projects/csync2/csync2/tests/test ...
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/tests/test recursive.
mark other operation: RM peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123 '-'.
mark other operation: RM other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123 '-'.
mark other operation: MOD_DIR peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur '-'.
mark other operation: MOD_DIR other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur '-'.
mark other operation: NEW peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,S '-'.
mark other operation: NEW other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,S '-'.
Connecting to host peer (PLAIN) ...
CONN local> CONFIG 

CONN local> HELLO local

Updating 'peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur' MOD_DIR ''
CONN local> SIG %25test%25/Maildir/cur user/group 1000 1000 dennis schafroth 16877 
?M: peer            /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur
CONN local> MKDIR %25test%25/Maildir/cur - 1000 1000 dennis schafroth 16877 
Updating 'peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,S' NEW ''
CONN local> SIG %25test%25/Maildir/cur/123,S user/group 1000 1000 dennis schafroth 33188 
?M: peer            /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,S
Other file not found. Posible MOVE operation: /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123
OPERATION: MOVE /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123 to /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,S
check move: /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,S /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123 
 CONN local> MV %25test%25/Maildir/cur/123 
Succes: MV /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123 /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,S
Deleting peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123
CONN local> SIG %25test%25/Maildir/cur/123 
peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123 is already up to date on peer. 
CONN local> SETTIME %25test%25/Maildir/cur 
CONN local> SETTIME %25test%25/Maildir 
CONN local> BYE

Finished succesfully.
