Found my alias peer localhost 30861 
Binding to 30861 IPv0 
Command: HELLO local
HELLO from local. Response: OK
Running check for <TESTBASE>/test/peer ...
Checking for modified files <TESTBASE>/test/peer 
Checking for deleted files <TESTBASE>/test/peer.
Updated(mkdir) local:<TESTBASE>/test/peer  
IDENT (cmd_finished).
Running check for <TESTBASE>/test/peer/big_file ...
Checking for modified files <TESTBASE>/test/peer/big_file 
Checking for deleted files <TESTBASE>/test/peer/big_file.
Updated(patch) local:<TESTBASE>/test/peer/big_file  
IDENT (cmd_finished).
goto nofork.
Command: HELLO local
HELLO from local. Response: OK
peername: local file: <TESTBASE>/test/peer key: 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV recursive 1
goto nofork.
Command: HELLO local
HELLO from local. Response: OK
Running check for <TESTBASE>/test/peer ...
Checking for modified files <TESTBASE>/test/peer 
Checking for deleted files <TESTBASE>/test/peer.
Deleting recursive from clean directory (<TESTBASE>/test/peer): 1 
Calling csync_rmdir_recursive local:<TESTBASE>/test/peer. Errors 0
Removing <TESTBASE>/test/peer/* ..
Running check for <TESTBASE>/test/peer/big_file ...
Checking for modified files <TESTBASE>/test/peer/big_file 
Checking for deleted files <TESTBASE>/test/peer/big_file.
Removing file <TESTBASE>/test/peer/big_file
Changing owner of /tmp/csync2/<BACKUP> to user <UID> and group <GID>, rc= -1
Changing owner of /tmp/csync2/<BACKUP> to user <UID> and group <GID>, rc= -1
Removing <TESTBASE>/test/peer/big_file from file db.
Removed directory <TESTBASE>/test/peer 0
Called csync_rmdir_recursive local:<TESTBASE>/test/peer. RC: 1 11
Deleted recursive from clean directory (<TESTBASE>/test/peer): 1 1 
Updated(del) local:<TESTBASE>/test/peer  
IDENT (cmd_finished).
goto nofork.
