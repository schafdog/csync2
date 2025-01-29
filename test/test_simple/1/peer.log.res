Found my alias peer localhost 30861 
Binding to 30861 IPv0 
Command: HELLO local
HELLO from local. Response: OK
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer.
Updated(mkdir) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer  
IDENT (cmd_finished).
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/A ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/A 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/A.
daemon CREATE /export/home/dennis/Projects/csync2/csync2/test/test/peer/A
Updated(create) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/A  
IDENT (cmd_finished).
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all.
daemon CREATE /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all
Updated(create) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all  
IDENT (cmd_finished).
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/.Test ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/.Test 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/.Test.
daemon CREATE /export/home/dennis/Projects/csync2/csync2/test/test/peer/.Test
Updated(create) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/.Test  
IDENT (cmd_finished).
goto nofork.
Command: HELLO local
HELLO from local. Response: OK
peername: local file: /export/home/dennis/Projects/csync2/csync2/test/test/peer key: 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV recursive 1
goto nofork.
Command: HELLO local
HELLO from local. Response: OK
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer.
Deleting recursive from clean directory (/export/home/dennis/Projects/csync2/csync2/test/test/peer): 3 
Calling csync_rmdir_recursive local:/export/home/dennis/Projects/csync2/csync2/test/test/peer. Errors 0
Removing /export/home/dennis/Projects/csync2/csync2/test/test/peer/* ..
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all.
Removing file /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all
Changing owner of /tmp/csync2/export to user 0 and group 0, rc= -1 
Changing owner of /tmp/csync2/export/home to user 0 and group 0, rc= -1 
Removing /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all from file db.
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/A ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/A 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/A.
Removing file /export/home/dennis/Projects/csync2/csync2/test/test/peer/A
Changing owner of /tmp/csync2/export to user 0 and group 0, rc= -1 
Changing owner of /tmp/csync2/export/home to user 0 and group 0, rc= -1 
Removing /export/home/dennis/Projects/csync2/csync2/test/test/peer/A from file db.
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/.Test ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/.Test 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/.Test.
Removing file /export/home/dennis/Projects/csync2/csync2/test/test/peer/.Test
Changing owner of /tmp/csync2/export to user 0 and group 0, rc= -1 
Changing owner of /tmp/csync2/export/home to user 0 and group 0, rc= -1 
Removing /export/home/dennis/Projects/csync2/csync2/test/test/peer/.Test from file db.
Removed directory /export/home/dennis/Projects/csync2/csync2/test/test/peer 0
Called csync_rmdir_recursive local:/export/home/dennis/Projects/csync2/csync2/test/test/peer. RC: 1 0
Deleted recursive from clean directory (/export/home/dennis/Projects/csync2/csync2/test/test/peer): 3 1 
Updated(del) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer  
IDENT (cmd_finished).
goto nofork.
