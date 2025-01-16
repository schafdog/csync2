Found my alias peer localhost 30861 
Binding to 30861 IPv0 
Command: HELLO local
HELLO from local. Response: OK
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer.
Updated(mkdir) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer  
IDENT (cmd_finished).
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto.
Updated(mkdir) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto  
IDENT (cmd_finished).
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger.
Updated(mkdir) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger  
IDENT (cmd_finished).
goto nofork.
Command: HELLO local
HELLO from local. Response: OK
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest 
mark other operation: 'NEW' 'local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest' '-'.
mark other operation: 'NEW' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest' '-'.
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest.
File /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest is dirty here: NEW 2
ERROR: File is also marked dirty here! (/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest)
goto nofork.
Command: HELLO local
HELLO from local. Response: OK
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer.
Updated(mod) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer  
IDENT (cmd_finished).
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto.
Updated(mod) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto  
IDENT (cmd_finished).
check_auto_resolve: Remote local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger won auto resolve
daemon dispatch: Remote local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger won auto resolved. clear dirty
check_auto_resolve: Remote local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger won auto resolve
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger.
check_auto_resolve: Remote local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger won auto resolve
daemon dispatch: Remote local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger won auto resolved. clear dirty
Updated(mod) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger  
IDENT (cmd_finished).
check_auto_resolve: Remote local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest won auto resolve
daemon dispatch: Remote local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest won auto resolved. clear dirty
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
goto nofork.
Command: HELLO local
HELLO from local. Response: OK
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
goto nofork.
