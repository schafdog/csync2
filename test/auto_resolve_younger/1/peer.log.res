Found my alias peer localhost 30861 
Binding to 30861 IPv0 
Command: (null): DEBUG          
Command: local HELLO
HELLO from local. Response: OK
Command: local: SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer user/group 1234 1000 dennis schafroth 16877 - 4096 1620424800
Command: local: MKDIR /export/home/dennis/Projects/csync2/csync2/test/test/peer - 1234 1000 dennis schafroth 16877 - 4096 1620424800
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer.
Updated(mkdir) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer  
IDENT (cmd_finished).
Command: local: SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto user/group 1234 1000 dennis schafroth 16877 - 4096 1620424800
Command: local: MKDIR /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto - 1234 1000 dennis schafroth 16877 - 4096 1620424800
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto.
Updated(mkdir) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto  
IDENT (cmd_finished).
Command: local: SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger user/group 1234 1000 dennis schafroth 16877 - 4096 1620424800
Command: local: MKDIR /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger - 1234 1000 dennis schafroth 16877 - 4096 1620424800
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger.
Updated(mkdir) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger  
IDENT (cmd_finished).
Command: local: SETTIME /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto 1620424800        
Command: local: SETTIME /export/home/dennis/Projects/csync2/csync2/test/test/peer 1620424800        
Command: local: BYE          
goto nofork.
Command: (null): DEBUG          
Command: local HELLO
HELLO from local. Response: OK
Command: local: SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest user/group 1234 1000 dennis schafroth 33188 - 12 1620424800
Command: local: PATCH /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest - 1234 1000 dennis schafroth 33188 - 12 1620424800
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest 
mark other operation: 'NEW' 'local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest' '-'.
mark other operation: 'NEW' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest' '-'.
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest.
File /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest is dirty here: NEW 2
ERROR: File is also marked dirty here! (/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest)
Command: local: GETTM /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest         
Command: local: SETTIME /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger 1620424800        
Command: local: BYE          
goto nofork.
Command: (null): DEBUG          
Command: local HELLO
HELLO from local. Response: OK
Command: local: SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer user/group 1234 1000 dennis schafroth 16877 - 4096 1625695200
Command: local: MOD /export/home/dennis/Projects/csync2/csync2/test/test/peer - 1234 1000 dennis schafroth 16877 - 4096 1625695200
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer.
Updated(mod) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer  
IDENT (cmd_finished).
Command: local: SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto user/group 1234 1000 dennis schafroth 16877 - 4096 1625695200
Command: local: MOD /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto - 1234 1000 dennis schafroth 16877 - 4096 1625695200
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto.
Updated(mod) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto  
IDENT (cmd_finished).
Command: local: SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger user/group 1234 1000 dennis schafroth 16877 - 4096 1625695200
check_auto_resolve: Remote local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger won auto resolve
daemon dispatch: Remote local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger won auto resolved. clear dirty
Command: local: MOD /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger - 1234 1000 dennis schafroth 16877 - 4096 1625695200
check_auto_resolve: Remote local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger won auto resolve
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger.
check_auto_resolve: Remote local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger won auto resolve
daemon dispatch: Remote local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger won auto resolved. clear dirty
Updated(mod) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger  
IDENT (cmd_finished).
Command: local: SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest user/group 1234 1000 dennis schafroth 33188 - 14 1625695200
check_auto_resolve: Remote local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest won auto resolve
daemon dispatch: Remote local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest won auto resolved. clear dirty
Command: local: PATCH /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest - 1234 1000 dennis schafroth 33188 - 14 1625695200
check_auto_resolve: Remote local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest won auto resolve
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest.
check_auto_resolve: Remote local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest won auto resolve
daemon dispatch: Remote local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest won auto resolved. clear dirty
Changing owner of /tmp/csync2/export to user 0 and group 0, rc= -1 
Changing owner of /tmp/csync2/export/home to user 0 and group 0, rc= -1 
Updated(patch) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest  
IDENT (cmd_finished).
Command: local: SETTIME /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger 1625695200        
Command: local: SETTIME /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto 1625695200        
Command: local: SETTIME /export/home/dennis/Projects/csync2/csync2/test/test/peer 1625695200        
Command: local: BYE          
goto nofork.
Command: (null): DEBUG          
Command: local HELLO
HELLO from local. Response: OK
Command: local: SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer user/group        
Command: local: DEL /export/home/dennis/Projects/csync2/csync2/test/test/peer         
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer.
Deleting recursive from clean directory (/export/home/dennis/Projects/csync2/csync2/test/test/peer): 3 
Calling csync_rmdir_recursive local:/export/home/dennis/Projects/csync2/csync2/test/test/peer. Errors 0
Removing /export/home/dennis/Projects/csync2/csync2/test/test/peer/* ..
Removing /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/* ..
Removing /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/* ..
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest.
Removing file /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest
Changing owner of /tmp/csync2/export to user 0 and group 0, rc= -1 
Changing owner of /tmp/csync2/export/home to user 0 and group 0, rc= -1 
Removing /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest from file db.
Removed directory /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger 0
Removed directory /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto 0
Removed directory /export/home/dennis/Projects/csync2/csync2/test/test/peer 0
Called csync_rmdir_recursive local:/export/home/dennis/Projects/csync2/csync2/test/test/peer. RC: 1 0
Deleted recursive from clean directory (/export/home/dennis/Projects/csync2/csync2/test/test/peer): 3 1 
Updated(del) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer  
IDENT (cmd_finished).
Command: local: BYE          
goto nofork.
