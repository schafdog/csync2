cmd x "clean up" local
Reading symbols from shared library libmysqlclient.so
Running recursive check for /export/home/dennis/Projects/csync2/csync2/tests/test ...
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/tests/test recursive.
mark other operation: RM peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp '-'.
mark other operation: RM other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp '-'.
mark other operation: RM peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new '-'.
mark other operation: RM other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new '-'.
mark other operation: RM peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,ST '-'.
mark other operation: RM other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,ST '-'.
mark other operation: RM peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur '-'.
mark other operation: RM other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur '-'.
mark other operation: RM peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/123,S '-'.
mark other operation: RM other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/123,S '-'.
mark other operation: RM peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur '-'.
mark other operation: RM other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur '-'.
mark other operation: RM peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash '-'.
mark other operation: RM other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash '-'.
mark other operation: RM peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir '-'.
mark other operation: RM other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir '-'.
mark other operation: MOD_DIR peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local '-'.
mark other operation: MOD_DIR other:/export/home/dennis/Projects/csync2/csync2/tests/test/local '-'.
Connecting to host peer (PLAIN) ...
CONN local> CONFIG 

CONN local> HELLO local

Updating 'peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local' MOD_DIR ''
CONN local> SIG %25test%25 user/group 1000 1000 dennis schafroth 16877 
?M: peer            /export/home/dennis/Projects/csync2/csync2/tests/test/local
CONN local> MKDIR %25test%25 - 1000 1000 dennis schafroth 16877 
Deleting peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp
CONN local> SIG %25test%25/Maildir/tmp 
CONN local> DEL %25test%25/Maildir/tmp 
Deleting peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new
CONN local> SIG %25test%25/Maildir/new 
CONN local> DEL %25test%25/Maildir/new 
Deleting peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,ST
CONN local> SIG %25test%25/Maildir/cur/123,ST 
CONN local> DEL %25test%25/Maildir/cur/123,ST 
Deleting peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur
CONN local> SIG %25test%25/Maildir/cur 
CONN local> DEL %25test%25/Maildir/cur 
Deleting peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/123,S
CONN local> SIG %25test%25/Maildir/.Trash/cur/123,S 
CONN local> DEL %25test%25/Maildir/.Trash/cur/123,S 
Deleting peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur
CONN local> SIG %25test%25/Maildir/.Trash/cur 
CONN local> DEL %25test%25/Maildir/.Trash/cur 
Deleting peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash
CONN local> SIG %25test%25/Maildir/.Trash 
CONN local> DEL %25test%25/Maildir/.Trash 
Deleting peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir
CONN local> SIG %25test%25/Maildir 
CONN local> DEL %25test%25/Maildir 
CONN local> SETTIME %25test%25 
CONN local> BYE

Finished succesfully.
