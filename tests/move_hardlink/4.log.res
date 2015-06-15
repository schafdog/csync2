cmd u "5 Read and deleted (update)" local
Reading symbols from shared library libmysqlclient.so
Connecting to host peer (PLAIN) ...
Updating 'peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur' MOD_DIR ''
?M: peer            /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur
Updating 'peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/123,Sab' NEW ''
?M: peer            /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/123,Sab
csync_check_link_move: OPERATION MHARDLINK /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,Sab to /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/123,Sab
csync_check_link_move: OPERATION MHARDLINK /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,Sab to /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/123,Sab
check_link_move: Other file not found. Posible MOVE operation: /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp/123
OPERATION: MOVE /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp/123 to /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/123,Sab
check move: /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/123,Sab /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp/123 
 Succes: MV /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp/123 /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/123,Sab
Updating 'peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur' MOD_DIR ''
?M: peer            /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur
Updating 'peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,Sab' NEW ''
?M: peer            /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,Sab
csync_check_link_move: OPERATION MHARDLINK /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/123,Sab to /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,Sab
check hardlink: /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,Sab /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/123,Sab 
 Hardlinking peer /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/123,Sab -> /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,Sab
Updating 'peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp' MOD_DIR ''
Deleting peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp/123
peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp/123 is already up to date on peer. 
Finished succesfully.
