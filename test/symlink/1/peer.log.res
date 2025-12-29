Found my alias peer localhost 30861
Command: (null): DEBUG          
Command: local HELLO
HELLO from local. Response: OK
Command: local: SIG <TESTBASE>/test/peer user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Command: local: MKDIR <TESTBASE>/test/peer - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Running check for <TESTBASE>/test/peer ...
Checking for modified files <TESTBASE>/test/peer 
Checking for deleted files <TESTBASE>/test/peer.
Found 0 files to delete
Found 0 deleted files
Updated(mkdir) local:<TESTBASE>/test/peer  
IDENT (cmd_finished).
Command: local: SIG <TESTBASE>/test/peer/new_file 'N' all user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Command: local: CREATE <TESTBASE>/test/peer/new_file 'N' all - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Running check for <TESTBASE>/test/peer/new_file 'N' all ...
Checking for modified files <TESTBASE>/test/peer/new_file 'N' all 
Checking for deleted files <TESTBASE>/test/peer/new_file 'N' all.
Found 0 files to delete
Found 0 deleted files
daemon CREATE <TESTBASE>/test/peer/new_file 'N' all 1 0
Updated(create) local:<TESTBASE>/test/peer/new_file 'N' all  
IDENT (cmd_finished).
Command: local: SIG <TESTBASE>/test/peer/new_file 'N' all.link user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Command: local: MKLINK <TESTBASE>/test/peer/new_file 'N' all.link new_file 'N' all        
Running check for <TESTBASE>/test/peer/new_file 'N' all.link ...
Checking for modified files <TESTBASE>/test/peer/new_file 'N' all.link 
Checking for deleted files <TESTBASE>/test/peer/new_file 'N' all.link.
Found 0 files to delete
Found 0 deleted files
Updated(mklink) local:<TESTBASE>/test/peer/new_file 'N' all.link new_file 'N' all 
Command: local: SETOWN <TESTBASE>/test/peer/new_file 'N' all.link user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Running check for <TESTBASE>/test/peer/new_file 'N' all.link ...
Checking for modified files <TESTBASE>/test/peer/new_file 'N' all.link 
Checking for deleted files <TESTBASE>/test/peer/new_file 'N' all.link.
Found 0 files to delete
Found 0 deleted files
Updated(setown) local:<TESTBASE>/test/peer/new_file 'N' all.link  
Command: local: SETTIME <TESTBASE>/test/peer/new_file 'N' all.link xxxxxxxx        
Command: local: SETTIME <TESTBASE>/test/peer xxxxxxxx        
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
Found 0 files to delete
Found 0 deleted files
Updated(mod) local:<TESTBASE>/test/peer  
IDENT (cmd_finished).
Command: local: SIG <TESTBASE>/test/peer/bad.link user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Command: local: MKLINK <TESTBASE>/test/peer/bad.link missing        
Running check for <TESTBASE>/test/peer/bad.link ...
Checking for modified files <TESTBASE>/test/peer/bad.link 
Checking for deleted files <TESTBASE>/test/peer/bad.link.
Found 0 files to delete
Found 0 deleted files
Updated(mklink) local:<TESTBASE>/test/peer/bad.link missing 
Command: local: SETOWN <TESTBASE>/test/peer/bad.link user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Running check for <TESTBASE>/test/peer/bad.link ...
Checking for modified files <TESTBASE>/test/peer/bad.link 
Checking for deleted files <TESTBASE>/test/peer/bad.link.
Found 0 files to delete
Found 0 deleted files
Updated(setown) local:<TESTBASE>/test/peer/bad.link  
Command: local: SETTIME <TESTBASE>/test/peer/bad.link xxxxxxxx        
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
Found 0 files to delete
Found 0 deleted files
Deleting recursive from clean directory (<TESTBASE>/test/peer): 3 
Calling csync_rmdir_recursive local:<TESTBASE>/test/peer. Errors 0
Removing <TESTBASE>/test/peer/* ..
Running check for <TESTBASE>/test/peer/new_file 'N' all.link ...
Checking for modified files <TESTBASE>/test/peer/new_file 'N' all.link 
Checking for deleted files <TESTBASE>/test/peer/new_file 'N' all.link.
Found 0 files to delete
Found 0 deleted files
Removing file <TESTBASE>/test/peer/new_file 'N' all.link
Removing <TESTBASE>/test/peer/new_file 'N' all.link from file db.
Running check for <TESTBASE>/test/peer/new_file 'N' all ...
Checking for modified files <TESTBASE>/test/peer/new_file 'N' all 
Checking for deleted files <TESTBASE>/test/peer/new_file 'N' all.
Found 0 files to delete
Found 0 deleted files
Removing file <TESTBASE>/test/peer/new_file 'N' all
Removing <TESTBASE>/test/peer/new_file 'N' all from file db.
Running check for <TESTBASE>/test/peer/bad.link ...
Checking for modified files <TESTBASE>/test/peer/bad.link 
Checking for deleted files <TESTBASE>/test/peer/bad.link.
Found 0 files to delete
Found 0 deleted files
Removing file <TESTBASE>/test/peer/bad.link
Removing <TESTBASE>/test/peer/bad.link from file db.
Removing directory <TESTBASE>/test/peer 0
Deleted recursive from clean directory (<TESTBASE>/test/peer): 3 1 
Updated(del) local:<TESTBASE>/test/peer  
IDENT (cmd_finished).
Command: local: BYE          
goto nofork.
