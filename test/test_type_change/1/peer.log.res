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
Command: local: SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxx
Command: local: MKDIR /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxx
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change.
Updated(mkdir) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change  
IDENT (cmd_finished).
Command: local: SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change/new_file 'N' all user/group 1234 1000 dennis schafroth 33188 - 4 xxxxxxxx
Command: local: CREATE /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change/new_file 'N' all - 1234 1000 dennis schafroth 33188 - 4 xxxxxxxx
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change/new_file 'N' all ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change/new_file 'N' all 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change/new_file 'N' all.
daemon CREATE /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change/new_file 'N' all 1 0
Updated(create) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change/new_file 'N' all  
IDENT (cmd_finished).
Command: local: SETTIME /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change xxxxxxxx        
Command: local: SETTIME /export/home/dennis/Projects/csync2/csync2/test/test/peer xxxxxxxx        
Command: local: BYE          
goto nofork.
Command: (null): DEBUG          
Command: local HELLO
HELLO from local. Response: OK
Command: local: LIST /export/home/dennis/Projects/csync2/csync2/test/test/peer 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV 1       
peername: local file: /export/home/dennis/Projects/csync2/csync2/test/test/peer key: 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV recursive 1
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
Command: local: SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change user/group 1234 1000 dennis schafroth 33188 - 9 xxxxxxxx
Command: local: PATCH /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change - 1234 1000 dennis schafroth 33188 - 9 xxxxxxxx
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change.
Unlinking entry due to different type: 32768 16384 
Deleting recursive from clean directory (/export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change): 1 
Calling csync_rmdir_recursive local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change. Errors 0
Removing /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change/* ..
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change/new_file 'N' all ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change/new_file 'N' all 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change/new_file 'N' all.
Removing file /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change/new_file 'N' all
Changing owner of /tmp/csync2/export/home to user 0 and group 0, rc= -1 
Removing /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change/new_file 'N' all from file db.
Removing directory /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change 0
Called csync_rmdir_recursive local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change. RC: 1 0
Deleted recursive from clean directory (/export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change): 1 1 
Updated(patch) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change  
IDENT (cmd_finished).
Command: local: STAT /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change/new_file 'N' all user/group        
ERROR: Check for directory failed with non-directory /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change: 33188
Command: local: SETTIME /export/home/dennis/Projects/csync2/csync2/test/test/peer xxxxxxxx        
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
Command: local: SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxx
Command: local: MKDIR /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxx
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change.
Unlinking entry due to different type: 16384 32768 
Changing owner of /tmp/csync2/export/home to user 0 and group 0, rc= -1 
Updated(mkdir) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change  
IDENT (cmd_finished).
Command: local: SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change/new_file 'N' all user/group 1234 1000 dennis schafroth 33188 - 4 xxxxxxxx
Command: local: CREATE /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change/new_file 'N' all - 1234 1000 dennis schafroth 33188 - 4 xxxxxxxx
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change/new_file 'N' all ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change/new_file 'N' all 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change/new_file 'N' all.
daemon CREATE /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change/new_file 'N' all 1 0
Updated(create) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change/new_file 'N' all  
IDENT (cmd_finished).
Command: local: SETTIME /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change xxxxxxxx        
Command: local: SETTIME /export/home/dennis/Projects/csync2/csync2/test/test/peer xxxxxxxx        
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
Command: local: SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change user/group 1234 1000 dennis schafroth 33188 - 11 xxxxxxxx
Command: local: PATCH /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change - 1234 1000 dennis schafroth 33188 - 11 xxxxxxxx
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change.
Unlinking entry due to different type: 32768 16384 
Deleting recursive from clean directory (/export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change): 1 
Calling csync_rmdir_recursive local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change. Errors 0
Removing /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change/* ..
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change/new_file 'N' all ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change/new_file 'N' all 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change/new_file 'N' all.
Removing file /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change/new_file 'N' all
Changing owner of /tmp/csync2/export/home to user 0 and group 0, rc= -1 
Removing /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change/new_file 'N' all from file db.
Removing directory /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change 0
Called csync_rmdir_recursive local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change. RC: 1 0
Deleted recursive from clean directory (/export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change): 1 1 
Updated(patch) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change  
IDENT (cmd_finished).
Command: local: STAT /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change/new_file 'N' all user/group        
ERROR: Check for directory failed with non-directory /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change: 33188
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
Deleting recursive from clean directory (/export/home/dennis/Projects/csync2/csync2/test/test/peer): 1 
Calling csync_rmdir_recursive local:/export/home/dennis/Projects/csync2/csync2/test/test/peer. Errors 0
Removing /export/home/dennis/Projects/csync2/csync2/test/test/peer/* ..
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change.
Removing file /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change
Changing owner of /tmp/csync2/export/home to user 0 and group 0, rc= -1 
Removing /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change from file db.
Removing directory /export/home/dennis/Projects/csync2/csync2/test/test/peer 0
Called csync_rmdir_recursive local:/export/home/dennis/Projects/csync2/csync2/test/test/peer. RC: 1 0
Deleted recursive from clean directory (/export/home/dennis/Projects/csync2/csync2/test/test/peer): 1 1 
Updated(del) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer  
IDENT (cmd_finished).
Command: local: STAT /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change user/group        
Command: local: BYE          
goto nofork.
