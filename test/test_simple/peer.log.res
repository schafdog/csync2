Found my alias peer localhost 30861 
Binding to 30861 IPv0 
Command: HELLO local
HELLO from local. Response: OK
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer.
Updated(mkdir) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer  
IDENT (cmd_finished).
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all.
Updated(patch) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all  
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
Deleting recursive from clean directory (/export/home/dennis/Projects/csync2/csync2/test/test/peer): 1 
rm: Checking /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all 33188
Changing owner of /tmp/csync2/export to user 0 and group 0, rc= -1 
Changing owner of /tmp/csync2/export/home to user 0 and group 0, rc= -1 
Removing /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all from file db.
rm: Checking /export/home/dennis/Projects/csync2/csync2/test/test/peer 16877
rmdir /export/home/dennis/Projects/csync2/csync2/test/test/peer 0
Calling csync_rmdir_recursive local:/export/home/dennis/Projects/csync2/csync2/test/test/peer. Errors 0
Removing  /export/home/dennis/Projects/csync2/csync2/test/test/peer/* ..
No such file or directory in scandir: /export/home/dennis/Projects/csync2/csync2/test/test/peer (/export/home/dennis/Projects/csync2/csync2/test/test/peer)
Removing directory /export/home/dennis/Projects/csync2/csync2/test/test/peer -1
Called csync_rmdir_recursive local:/export/home/dennis/Projects/csync2/csync2/test/test/peer. RC: 0 11
Deleted recursive from clean directory (/export/home/dennis/Projects/csync2/csync2/test/test/peer): 1 0 
Updated(del) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer  
goto nofork.
