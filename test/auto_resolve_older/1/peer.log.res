Found my alias peer localhost 30861 
Command: (null): DEBUG          
Command: local HELLO
HELLO from local. Response: OK
Command: local: SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxx
Command: local: MKDIR /export/home/dennis/Projects/csync2/csync2/test/test/peer - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxx
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer.
Updated(mkdir) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer  
IDENT (cmd_finished).
Command: local: SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxx
Command: local: MKDIR /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxx
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto.
Updated(mkdir) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto  
IDENT (cmd_finished).
Command: local: SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxx
Command: local: MKDIR /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxx
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older.
Updated(mkdir) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older  
IDENT (cmd_finished).
Command: local: SETTIME /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto xxxxxxxx        
Command: local: SETTIME /export/home/dennis/Projects/csync2/csync2/test/test/peer xxxxxxxx        
Command: local: BYE          
goto nofork.
Command: (null): DEBUG          
Command: local HELLO
HELLO from local. Response: OK
Command: local: SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both user/group 1234 1000 dennis schafroth 33188 - 14 xxxxxxxx
Command: local: PATCH /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both - 1234 1000 dennis schafroth 33188 - 14 xxxxxxxx
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both 
mark other operation: 'NEW' 'local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both' '-'.
mark other operation: 'NEW' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both' '-'.
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both.
File /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both is dirty here: NEW 2
File local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both is dirty here. Continuing.
ERROR: File is also marked dirty here! (/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both)
Command: local: GETTM /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both         
check_auto_resolve: Remote local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both won auto resolve
daemon dispatch: Remote local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both won auto resolved. clear dirty
Command: local: SETTIME /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older xxxxxxxx        
check_auto_resolve: Remote local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older won auto resolve
daemon dispatch: Remote local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older won auto resolved. clear dirty
Command: local: BYE          
goto nofork.
Command: (null): DEBUG          
Command: local HELLO
HELLO from local. Response: OK
Command: local: SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxx
Command: local: MOD /export/home/dennis/Projects/csync2/csync2/test/test/peer - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxx
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer.
Updated(mod) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer  
IDENT (cmd_finished).
Command: local: SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxx
Command: local: MOD /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxx
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto.
Updated(mod) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto  
IDENT (cmd_finished).
Command: local: SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxx
check_auto_resolve: Remote local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older won auto resolve
daemon dispatch: Remote local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older won auto resolved. clear dirty
Command: local: MOD /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxx
check_auto_resolve: Remote local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older won auto resolve
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older.
check_auto_resolve: Remote local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older won auto resolve
daemon dispatch: Remote local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older won auto resolved. clear dirty
Updated(mod) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older  
IDENT (cmd_finished).
Command: local: SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both user/group 1234 1000 dennis schafroth 33188 - 14 xxxxxxxx
check_auto_resolve: Remote local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both won auto resolve
daemon dispatch: Remote local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both won auto resolved. clear dirty
Command: local: PATCH /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both - 1234 1000 dennis schafroth 33188 - 14 xxxxxxxx
check_auto_resolve: Remote local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both won auto resolve
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both 
mark other operation: 'MOD' 'local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both' '-'.
mark other operation: 'MOD' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both' '-'.
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both.
Remote local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both won auto resolve.
check_auto_resolve: Remote local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both won auto resolve
daemon dispatch: Remote local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both won auto resolved. clear dirty
Changing owner of /tmp/csync2/export/home to user 0 and group 0, rc= -1 
Updated(patch) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both  
IDENT (cmd_finished).
Command: local: SETTIME /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older xxxxxxxx        
check_auto_resolve: Remote local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older won auto resolve
daemon dispatch: Remote local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older won auto resolved. clear dirty
Command: local: SETTIME /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto xxxxxxxx        
Command: local: SETTIME /export/home/dennis/Projects/csync2/csync2/test/test/peer xxxxxxxx        
Command: local: BYE          
goto nofork.
Command: (null): DEBUG          
Command: local HELLO
HELLO from local. Response: OK
Command: local: STAT /export/home/dennis/Projects/csync2/csync2/test/test/peer user/group        
Command: local: DEL /export/home/dennis/Projects/csync2/csync2/test/test/peer         
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer.
Deleting recursive from clean directory (/export/home/dennis/Projects/csync2/csync2/test/test/peer): 3 
Calling csync_rmdir_recursive local:/export/home/dennis/Projects/csync2/csync2/test/test/peer. Errors 0
Removing /export/home/dennis/Projects/csync2/csync2/test/test/peer/* ..
Removing /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/* ..
Removing /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/* ..
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both.
Removing file /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both
Changing owner of /tmp/csync2/export/home to user 0 and group 0, rc= -1 
Removing /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both from file db.
Removing directory /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older 0
Removing directory /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto 0
Removing directory /export/home/dennis/Projects/csync2/csync2/test/test/peer 0
Called csync_rmdir_recursive local:/export/home/dennis/Projects/csync2/csync2/test/test/peer. RC: 1 0
Deleted recursive from clean directory (/export/home/dennis/Projects/csync2/csync2/test/test/peer): 3 1 
Updated(del) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer  
IDENT (cmd_finished).
Command: local: STAT /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto user/group        
Command: local: BYE          
goto nofork.
