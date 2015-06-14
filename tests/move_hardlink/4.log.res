cmd u "5 Read and deleted (update)" local
Reading symbols from shared library libmysqlclient.so
Connecting to host peer (PLAIN) ...
CONN peer < CONFIG 

CONN peer < HELLO local

Updating 'peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur' MOD_DIR ''
CONN peer < SIG %25test%25/Maildir/.Trash/cur user/group 1000 1000 dennis schafroth 16877 
?M: peer            /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur
CONN peer < MKDIR %25test%25/Maildir/.Trash/cur - 1000 1000 dennis schafroth 16877 
Updating 'peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/123,Sab' NEW ''
CONN peer < SIG %25test%25/Maildir/.Trash/cur/123,Sab user/group 1000 1000 dennis schafroth 33188 
?M: peer            /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/123,Sab
csync_check_link_move: OPERATION MHARDLINK /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,Sab to /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/123,Sab
csync_check_link_move: OPERATION MHARDLINK /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,Sab to /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/123,Sab
check_link_move: Other file not found. Posible MOVE operation: /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp/123
OPERATION: MOVE /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp/123 to /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/123,Sab
check move: /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/123,Sab /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp/123 
 CONN peer < MV %25test%25/Maildir/tmp/123 
Succes: MV /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp/123 /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/123,Sab
Updating 'peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur' MOD_DIR ''
CONN peer < SIG %25test%25/Maildir/cur user/group 1000 1000 dennis schafroth 16877 
?M: peer            /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur
CONN peer < MKDIR %25test%25/Maildir/cur - 1000 1000 dennis schafroth 16877 
Updating 'peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,Sab' NEW ''
CONN peer < SIG %25test%25/Maildir/cur/123,Sab user/group 1000 1000 dennis schafroth 33188 
?M: peer            /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,Sab
csync_check_link_move: OPERATION MHARDLINK /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/123,Sab to /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,Sab
check hardlink: /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,Sab /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/123,Sab 
 Hardlinking peer /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/123,Sab -> /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,Sab
CONN peer < MKHARDLINK %25test%25/Maildir/.Trash/cur/123,Sab %25test%25/Maildir/cur/123,Sab 
Updating 'peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp' MOD_DIR ''
CONN peer < SIG %25test%25/Maildir/tmp user/group 1000 1000 dennis schafroth 16877 
Deleting peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp/123
CONN peer < SIG %25test%25/Maildir/tmp/123 
peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp/123 is already up to date on peer. 
CONN peer < SETTIME %25test%25/Maildir/tmp 
CONN peer < SETTIME %25test%25/Maildir/cur 
CONN peer < SETTIME %25test%25/Maildir 
CONN peer < SETTIME %25test%25/Maildir/.Trash/cur 
CONN peer < SETTIME %25test%25/Maildir/.Trash 
CONN peer < BYE

Finished succesfully.
