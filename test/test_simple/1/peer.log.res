Found my alias peer localhost 30861 
Binding to 30861 IPv0 
Command: (null): DEBUG          
Command: local HELLO
HELLO from local. Response: OK
Command: local: SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer user/group 1234 1000 dennis schafroth 16877 - 4096 1742889475
Command: local: MKDIR /export/home/dennis/Projects/csync2/csync2/test/test/peer - 1234 1000 dennis schafroth 16877 - 4096 1742889475
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer.
Updated(mkdir) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer  
IDENT (cmd_finished).
Command: local: SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer/A user/group 1234 1000 dennis schafroth 33188 - 0 1742889475
Command: local: CREATE /export/home/dennis/Projects/csync2/csync2/test/test/peer/A - 1234 1000 dennis schafroth 33188 - 0 1742889475
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/A ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/A 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/A.
daemon CREATE /export/home/dennis/Projects/csync2/csync2/test/test/peer/A 1 1742889475
Updated(create) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/A  
IDENT (cmd_finished).
Command: local: SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all user/group 1234 1000 dennis schafroth 33188 - 4 1742889475
Command: local: CREATE /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all - 1234 1000 dennis schafroth 33188 - 4 1742889475
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all.
daemon CREATE /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all 1 1742889475
Updated(create) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all  
IDENT (cmd_finished).
Command: local: SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer/.Test user/group 1234 1000 dennis schafroth 33188 - 0 1742889475
Command: local: CREATE /export/home/dennis/Projects/csync2/csync2/test/test/peer/.Test - 1234 1000 dennis schafroth 33188 - 0 1742889475
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/.Test ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/.Test 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/.Test.
daemon CREATE /export/home/dennis/Projects/csync2/csync2/test/test/peer/.Test 1 1742889475
Updated(create) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/.Test  
IDENT (cmd_finished).
Command: local: SETTIME /export/home/dennis/Projects/csync2/csync2/test/test/peer 1742889475        
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
Command: local: SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer user/group        
Command: local: DEL /export/home/dennis/Projects/csync2/csync2/test/test/peer         
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer.
Deleting recursive from clean directory (/export/home/dennis/Projects/csync2/csync2/test/test/peer): 3 
Calling csync_rmdir_recursive local:/export/home/dennis/Projects/csync2/csync2/test/test/peer. Errors 0
Removing /export/home/dennis/Projects/csync2/csync2/test/test/peer/* ..
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all 
Skipping /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all. Locked by daemon at 1742889475
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all.
Removing file /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all
Changing owner of /tmp/csync2/export/home to user 0 and group 0, rc= -1 
Removing /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all from file db.
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/A ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/A 
Skipping /export/home/dennis/Projects/csync2/csync2/test/test/peer/A. Locked by daemon at 1742889475
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/A.
Removing file /export/home/dennis/Projects/csync2/csync2/test/test/peer/A
Changing owner of /tmp/csync2/export/home to user 0 and group 0, rc= -1 
Removing /export/home/dennis/Projects/csync2/csync2/test/test/peer/A from file db.
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/.Test ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/.Test 
Skipping /export/home/dennis/Projects/csync2/csync2/test/test/peer/.Test. Locked by daemon at 1742889475
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/.Test.
Removing file /export/home/dennis/Projects/csync2/csync2/test/test/peer/.Test
Changing owner of /tmp/csync2/export/home to user 0 and group 0, rc= -1 
Removing /export/home/dennis/Projects/csync2/csync2/test/test/peer/.Test from file db.
csync_redis_lock: ERR DELETE,ISDIR:/export/home/dennis/Projects/csync2/csync2/test/test/peer -1
Removed directory /export/home/dennis/Projects/csync2/csync2/test/test/peer 0
Called csync_rmdir_recursive local:/export/home/dennis/Projects/csync2/csync2/test/test/peer. RC: 1 0
Deleted recursive from clean directory (/export/home/dennis/Projects/csync2/csync2/test/test/peer): 3 1 
Updated(del) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer  
IDENT (cmd_finished).
Command: local: BYE          
goto nofork.
