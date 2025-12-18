Found my alias peer localhost 30861
Command: (null): DEBUG          
Command: local HELLO
HELLO from local. Response: OK
Command: local: SIG <TESTBASE>/test/peer user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Command: local: MKDIR <TESTBASE>/test/peer - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Running check for <TESTBASE>/test/peer ...
Checking for modified files <TESTBASE>/test/peer 
Checking for deleted files <TESTBASE>/test/peer.
Updated(mkdir) local:<TESTBASE>/test/peer  
IDENT (cmd_finished).
Command: local: SIG <TESTBASE>/test/peer/.Test user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Command: local: CREATE <TESTBASE>/test/peer/.Test - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Running check for <TESTBASE>/test/peer/.Test ...
Checking for modified files <TESTBASE>/test/peer/.Test 
Checking for deleted files <TESTBASE>/test/peer/.Test.
daemon CREATE <TESTBASE>/test/peer/.Test 1 0
Updated(create) local:<TESTBASE>/test/peer/.Test  
IDENT (cmd_finished).
Command: local: SIG <TESTBASE>/test/peer/A user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Command: local: CREATE <TESTBASE>/test/peer/A - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Running check for <TESTBASE>/test/peer/A ...
Checking for modified files <TESTBASE>/test/peer/A 
Checking for deleted files <TESTBASE>/test/peer/A.
daemon CREATE <TESTBASE>/test/peer/A 1 0
Updated(create) local:<TESTBASE>/test/peer/A  
IDENT (cmd_finished).
Command: local: SIG <TESTBASE>/test/peer/new_file 'N' all user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Command: local: CREATE <TESTBASE>/test/peer/new_file 'N' all - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Running check for <TESTBASE>/test/peer/new_file 'N' all ...
Checking for modified files <TESTBASE>/test/peer/new_file 'N' all 
Checking for deleted files <TESTBASE>/test/peer/new_file 'N' all.
daemon CREATE <TESTBASE>/test/peer/new_file 'N' all 1 0
Updated(create) local:<TESTBASE>/test/peer/new_file 'N' all  
IDENT (cmd_finished).
Command: local: SETTIME <TESTBASE>/test/peer xxxxxxxx        
Command: local: BYE          
goto nofork.
Command: (null): DEBUG          
Command: local HELLO
HELLO from local. Response: OK
Command: local: LIST <TESTBASE>/test/peer 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV 1       
peername: local file: <TESTBASE>/test/peer key: 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV recursive 1
Command: local: BYE          
goto nofork.
Command: (null): DEBUG          
Command: local HELLO
HELLO from local. Response: OK
Command: local: SIG <TESTBASE>/test/peer user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Command: local: MOD <TESTBASE>/test/peer - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Running check for <TESTBASE>/test/peer ...
Checking for modified files <TESTBASE>/test/peer 
Checking for deleted files <TESTBASE>/test/peer.
Updated(mod) local:<TESTBASE>/test/peer  
IDENT (cmd_finished).
Command: local: SIG <TESTBASE>/test/peer/.Test user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Command: local: SIG <TESTBASE>/test/peer/A user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Command: local: SIG <TESTBASE>/test/peer/new_file 'N' all user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Command: local: SETTIME <TESTBASE>/test/peer xxxxxxxx        
Command: local: BYE          
goto nofork.
Command: (null): DEBUG          
Command: local HELLO
HELLO from local. Response: OK
Command: local: SIG <TESTBASE>/test/peer user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Command: local: SIG <TESTBASE>/test/peer/new_file 'N' all user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Command: local: PATCH <TESTBASE>/test/peer/new_file 'N' all - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Running check for <TESTBASE>/test/peer/new_file 'N' all ...
Checking for modified files <TESTBASE>/test/peer/new_file 'N' all 
Checking for deleted files <TESTBASE>/test/peer/new_file 'N' all.
Updated(patch) local:<TESTBASE>/test/peer/new_file 'N' all  
IDENT (cmd_finished).
Command: local: SIG <TESTBASE>/test/peer/mark user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Command: local: CREATE <TESTBASE>/test/peer/mark - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Running check for <TESTBASE>/test/peer/mark ...
Checking for modified files <TESTBASE>/test/peer/mark 
Checking for deleted files <TESTBASE>/test/peer/mark.
daemon CREATE <TESTBASE>/test/peer/mark 1 0
Updated(create) local:<TESTBASE>/test/peer/mark  
IDENT (cmd_finished).
Command: local: SETTIME <TESTBASE>/test/peer xxxxxxxx        
Command: local: BYE          
goto nofork.
Command: (null): DEBUG          
Command: local HELLO
HELLO from local. Response: OK
Command: local: STAT <TESTBASE>/test/peer user/group <UID> <GID> <USER> <GROUP>    
Command: local: DEL <TESTBASE>/test/peer         
Running check for <TESTBASE>/test/peer ...
Checking for modified files <TESTBASE>/test/peer 
Checking for deleted files <TESTBASE>/test/peer.
Deleting recursive from clean directory (<TESTBASE>/test/peer): 4 
Calling csync_rmdir_recursive local:<TESTBASE>/test/peer. Errors 0
Removing <TESTBASE>/test/peer/* ..
Running check for <TESTBASE>/test/peer/new_file 'N' all ...
Checking for modified files <TESTBASE>/test/peer/new_file 'N' all 
Checking for deleted files <TESTBASE>/test/peer/new_file 'N' all.
Removing file <TESTBASE>/test/peer/new_file 'N' all
Removing <TESTBASE>/test/peer/new_file 'N' all from file db.
Running check for <TESTBASE>/test/peer/mark ...
Checking for modified files <TESTBASE>/test/peer/mark 
Skipping <TESTBASE>/test/peer/mark. Locked by daemon at 1766071978
Checking for deleted files <TESTBASE>/test/peer/mark.
Removing file <TESTBASE>/test/peer/mark
Removing <TESTBASE>/test/peer/mark from file db.
Running check for <TESTBASE>/test/peer/A ...
Checking for modified files <TESTBASE>/test/peer/A 
Checking for deleted files <TESTBASE>/test/peer/A.
Removing file <TESTBASE>/test/peer/A
Removing <TESTBASE>/test/peer/A from file db.
Running check for <TESTBASE>/test/peer/.Test ...
Checking for modified files <TESTBASE>/test/peer/.Test 
Checking for deleted files <TESTBASE>/test/peer/.Test.
Removing file <TESTBASE>/test/peer/.Test
Removing <TESTBASE>/test/peer/.Test from file db.
Removing directory <TESTBASE>/test/peer 0
Deleted recursive from clean directory (<TESTBASE>/test/peer): 4 1 
Updated(del) local:<TESTBASE>/test/peer  
IDENT (cmd_finished).
Command: local: BYE          
goto nofork.
