Found my alias peer localhost 30861 
Binding to 30861 IPv0 
Command: HELLO local
HELLO from local. Response: OK
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer.
Updated(mkdir) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer  
IDENT (cmd_finished).
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive.
Updated(mkdir) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive  
IDENT (cmd_finished).
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1 ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1.
Updated(mkdir) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1  
IDENT (cmd_finished).
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2 ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2.
Updated(mkdir) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2  
IDENT (cmd_finished).
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3 ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3.
Updated(mkdir) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3  
IDENT (cmd_finished).
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4 ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4.
Updated(mkdir) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4  
IDENT (cmd_finished).
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5 ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5.
Updated(mkdir) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5  
IDENT (cmd_finished).
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5/file.c ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5/file.c 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5/file.c.
Sending octet-stream of 12 bytes
Got octet-stream 17
Receiving 17 bytes (octet-stream)..
Updated(patch) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5/file.c  
IDENT (cmd_finished).
goto nofork.
Command: HELLO local
HELLO from local. Response: OK
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer.
Deleting recursive from clean directory (/export/home/dennis/Projects/csync2/csync2/test/test/peer): 7 
Calling csync_rmdir_recursive local:/export/home/dennis/Projects/csync2/csync2/test/test/peer. Errors 0
Removing /export/home/dennis/Projects/csync2/csync2/test/test/peer/* ..
Removing /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/* ..
Removing /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/* ..
Removing /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/* ..
Removing /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/* ..
Removing /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/* ..
Removing /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5/* ..
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5/file.c ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5/file.c 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5/file.c.
Removing file /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5/file.c
Changing owner of /tmp/csync2/export to user 0 and group 0, rc= -1 
Changing owner of /tmp/csync2/export/home to user 0 and group 0, rc= -1 
Removing /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5/file.c from file db.
Removed directory /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5 0
Removed directory /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4 0
Removed directory /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3 0
Removed directory /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2 0
Removed directory /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1 0
Removed directory /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive 0
Removed directory /export/home/dennis/Projects/csync2/csync2/test/test/peer 0
Called csync_rmdir_recursive local:/export/home/dennis/Projects/csync2/csync2/test/test/peer. RC: 1 11
Deleted recursive from clean directory (/export/home/dennis/Projects/csync2/csync2/test/test/peer): 7 1 
Updated(del) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer  
IDENT (cmd_finished).
goto nofork.
