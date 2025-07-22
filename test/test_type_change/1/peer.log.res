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
Command: local: SIG <TESTBASE>/test/peer/type_change user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Command: local: MKDIR <TESTBASE>/test/peer/type_change - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Running check for <TESTBASE>/test/peer/type_change ...
Checking for modified files <TESTBASE>/test/peer/type_change 
Checking for deleted files <TESTBASE>/test/peer/type_change.
Updated(mkdir) local:<TESTBASE>/test/peer/type_change  
IDENT (cmd_finished).
Command: local: SIG <TESTBASE>/test/peer/type_change/new_file 'N' all user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Command: local: CREATE <TESTBASE>/test/peer/type_change/new_file 'N' all - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Running check for <TESTBASE>/test/peer/type_change/new_file 'N' all ...
Checking for modified files <TESTBASE>/test/peer/type_change/new_file 'N' all 
Checking for deleted files <TESTBASE>/test/peer/type_change/new_file 'N' all.
daemon CREATE <TESTBASE>/test/peer/type_change/new_file 'N' all 1 0
Updated(create) local:<TESTBASE>/test/peer/type_change/new_file 'N' all  
IDENT (cmd_finished).
Command: local: SETTIME <TESTBASE>/test/peer/type_change xxxxxxxx        
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
Command: local: SIG <TESTBASE>/test/peer/type_change user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Command: local: PATCH <TESTBASE>/test/peer/type_change - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Running check for <TESTBASE>/test/peer/type_change ...
Checking for modified files <TESTBASE>/test/peer/type_change 
Checking for deleted files <TESTBASE>/test/peer/type_change.
Unlinking entry due to different type: 32768 16384 
Deleting recursive from clean directory (<TESTBASE>/test/peer/type_change): 1 
Calling csync_rmdir_recursive local:<TESTBASE>/test/peer/type_change. Errors 0
Removing <TESTBASE>/test/peer/type_change/* ..
Running check for <TESTBASE>/test/peer/type_change/new_file 'N' all ...
Checking for modified files <TESTBASE>/test/peer/type_change/new_file 'N' all 
Checking for deleted files <TESTBASE>/test/peer/type_change/new_file 'N' all.
Removing file <TESTBASE>/test/peer/type_change/new_file 'N' all
Changing owner of /tmp/csync2/export/home to user <UID> and group <GID>, rc= -1 
Removing <TESTBASE>/test/peer/type_change/new_file 'N' all from file db.
Removing directory <TESTBASE>/test/peer/type_change 0
Deleted recursive from clean directory (<TESTBASE>/test/peer/type_change): 1 1 
Updated(patch) local:<TESTBASE>/test/peer/type_change  
IDENT (cmd_finished).
Command: local: STAT <TESTBASE>/test/peer/type_change/new_file 'N' all user/group <UID> <GID> <USER> <GROUP>    
ERROR: Check for directory failed with non-directory <TESTBASE>/test/peer/type_change: 33188
Path not found <TESTBASE>/test/peer/type_change
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
Updated(mod) local:<TESTBASE>/test/peer  
IDENT (cmd_finished).
Command: local: SIG <TESTBASE>/test/peer/type_change user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Command: local: MKDIR <TESTBASE>/test/peer/type_change - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Running check for <TESTBASE>/test/peer/type_change ...
Checking for modified files <TESTBASE>/test/peer/type_change 
Checking for deleted files <TESTBASE>/test/peer/type_change.
Unlinking entry due to different type: 16384 32768 
Changing owner of /tmp/csync2/export/home to user <UID> and group <GID>, rc= -1 
Updated(mkdir) local:<TESTBASE>/test/peer/type_change  
IDENT (cmd_finished).
Command: local: SIG <TESTBASE>/test/peer/type_change/new_file 'N' all user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Command: local: CREATE <TESTBASE>/test/peer/type_change/new_file 'N' all - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Running check for <TESTBASE>/test/peer/type_change/new_file 'N' all ...
Checking for modified files <TESTBASE>/test/peer/type_change/new_file 'N' all 
Checking for deleted files <TESTBASE>/test/peer/type_change/new_file 'N' all.
daemon CREATE <TESTBASE>/test/peer/type_change/new_file 'N' all 1 0
Updated(create) local:<TESTBASE>/test/peer/type_change/new_file 'N' all  
IDENT (cmd_finished).
Command: local: SETTIME <TESTBASE>/test/peer/type_change xxxxxxxx        
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
Updated(mod) local:<TESTBASE>/test/peer  
IDENT (cmd_finished).
Command: local: SIG <TESTBASE>/test/peer/type_change user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Command: local: PATCH <TESTBASE>/test/peer/type_change - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Running check for <TESTBASE>/test/peer/type_change ...
Checking for modified files <TESTBASE>/test/peer/type_change 
Checking for deleted files <TESTBASE>/test/peer/type_change.
Unlinking entry due to different type: 32768 16384 
Deleting recursive from clean directory (<TESTBASE>/test/peer/type_change): 1 
Calling csync_rmdir_recursive local:<TESTBASE>/test/peer/type_change. Errors 0
Removing <TESTBASE>/test/peer/type_change/* ..
Running check for <TESTBASE>/test/peer/type_change/new_file 'N' all ...
Checking for modified files <TESTBASE>/test/peer/type_change/new_file 'N' all 
Checking for deleted files <TESTBASE>/test/peer/type_change/new_file 'N' all.
Removing file <TESTBASE>/test/peer/type_change/new_file 'N' all
Changing owner of /tmp/csync2/export/home to user <UID> and group <GID>, rc= -1 
Removing <TESTBASE>/test/peer/type_change/new_file 'N' all from file db.
Removing directory <TESTBASE>/test/peer/type_change 0
Deleted recursive from clean directory (<TESTBASE>/test/peer/type_change): 1 1 
Updated(patch) local:<TESTBASE>/test/peer/type_change  
IDENT (cmd_finished).
Command: local: STAT <TESTBASE>/test/peer/type_change/new_file 'N' all user/group <UID> <GID> <USER> <GROUP>    
ERROR: Check for directory failed with non-directory <TESTBASE>/test/peer/type_change: 33188
Path not found <TESTBASE>/test/peer/type_change
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
Deleting recursive from clean directory (<TESTBASE>/test/peer): 1 
Calling csync_rmdir_recursive local:<TESTBASE>/test/peer. Errors 0
Removing <TESTBASE>/test/peer/* ..
Running check for <TESTBASE>/test/peer/type_change ...
Checking for modified files <TESTBASE>/test/peer/type_change 
Checking for deleted files <TESTBASE>/test/peer/type_change.
Removing file <TESTBASE>/test/peer/type_change
Changing owner of /tmp/csync2/export/home to user <UID> and group <GID>, rc= -1 
Removing <TESTBASE>/test/peer/type_change from file db.
Removing directory <TESTBASE>/test/peer 0
Deleted recursive from clean directory (<TESTBASE>/test/peer): 1 1 
Updated(del) local:<TESTBASE>/test/peer  
IDENT (cmd_finished).
Command: local: BYE          
goto nofork.
