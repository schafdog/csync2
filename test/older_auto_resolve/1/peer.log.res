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
Command: local: SIG <TESTBASE>/test/peer/auto user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Command: local: MKDIR <TESTBASE>/test/peer/auto - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Running check for <TESTBASE>/test/peer/auto ...
Checking for modified files <TESTBASE>/test/peer/auto 
Checking for deleted files <TESTBASE>/test/peer/auto.
Updated(mkdir) local:<TESTBASE>/test/peer/auto  
IDENT (cmd_finished).
Command: local: SIG <TESTBASE>/test/peer/auto/older user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Command: local: MKDIR <TESTBASE>/test/peer/auto/older - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Running check for <TESTBASE>/test/peer/auto/older ...
Checking for modified files <TESTBASE>/test/peer/auto/older 
Checking for deleted files <TESTBASE>/test/peer/auto/older.
Updated(mkdir) local:<TESTBASE>/test/peer/auto/older  
IDENT (cmd_finished).
Command: local: SETTIME <TESTBASE>/test/peer/auto xxxxxxxx        
Command: local: SETTIME <TESTBASE>/test/peer xxxxxxxx        
Command: local: BYE          
goto nofork.
Command: (null): DEBUG          
Command: local HELLO
HELLO from local. Response: OK
Command: local: SIG <TESTBASE>/test/peer/auto/older/update_both user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Command: local: PATCH <TESTBASE>/test/peer/auto/older/update_both - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Running check for <TESTBASE>/test/peer/auto/older/update_both ...
Checking for modified files <TESTBASE>/test/peer/auto/older/update_both 
mark other operation: 'NEW' 'local:<TESTBASE>/test/peer/auto/older/update_both' '-'.
mark other operation: 'NEW' 'other:<TESTBASE>/test/peer/auto/older/update_both' '-'.
Checking for deleted files <TESTBASE>/test/peer/auto/older/update_both.
File <TESTBASE>/test/peer/auto/older/update_both is dirty here: NEW 2
File local:<TESTBASE>/test/peer/auto/older/update_both is dirty here. Continuing.
ERROR: File is also marked dirty here! (<TESTBASE>/test/peer/auto/older/update_both)
Command: local: GETTM <TESTBASE>/test/peer/auto/older/update_both         
check_auto_resolve: Remote local:<TESTBASE>/test/peer/auto/older/update_both won auto resolve
daemon dispatch: Remote local:<TESTBASE>/test/peer/auto/older/update_both won auto resolved. clear dirty
Command: local: SETTIME <TESTBASE>/test/peer/auto/older xxxxxxxx        
check_auto_resolve: Remote local:<TESTBASE>/test/peer/auto/older won auto resolve
daemon dispatch: Remote local:<TESTBASE>/test/peer/auto/older won auto resolved. clear dirty
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
Command: local: SIG <TESTBASE>/test/peer/auto user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Command: local: MOD <TESTBASE>/test/peer/auto - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Running check for <TESTBASE>/test/peer/auto ...
Checking for modified files <TESTBASE>/test/peer/auto 
Checking for deleted files <TESTBASE>/test/peer/auto.
Updated(mod) local:<TESTBASE>/test/peer/auto  
IDENT (cmd_finished).
Command: local: SIG <TESTBASE>/test/peer/auto/older user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
check_auto_resolve: Remote local:<TESTBASE>/test/peer/auto/older won auto resolve
daemon dispatch: Remote local:<TESTBASE>/test/peer/auto/older won auto resolved. clear dirty
Command: local: MOD <TESTBASE>/test/peer/auto/older - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
check_auto_resolve: Remote local:<TESTBASE>/test/peer/auto/older won auto resolve
Running check for <TESTBASE>/test/peer/auto/older ...
Checking for modified files <TESTBASE>/test/peer/auto/older 
Checking for deleted files <TESTBASE>/test/peer/auto/older.
check_auto_resolve: Remote local:<TESTBASE>/test/peer/auto/older won auto resolve
daemon dispatch: Remote local:<TESTBASE>/test/peer/auto/older won auto resolved. clear dirty
Updated(mod) local:<TESTBASE>/test/peer/auto/older  
IDENT (cmd_finished).
Command: local: SIG <TESTBASE>/test/peer/auto/older/update_both user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
check_auto_resolve: Remote local:<TESTBASE>/test/peer/auto/older/update_both won auto resolve
daemon dispatch: Remote local:<TESTBASE>/test/peer/auto/older/update_both won auto resolved. clear dirty
Command: local: PATCH <TESTBASE>/test/peer/auto/older/update_both - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
check_auto_resolve: Remote local:<TESTBASE>/test/peer/auto/older/update_both won auto resolve
Running check for <TESTBASE>/test/peer/auto/older/update_both ...
Checking for modified files <TESTBASE>/test/peer/auto/older/update_both 
mark other operation: 'MOD' 'local:<TESTBASE>/test/peer/auto/older/update_both' '-'.
mark other operation: 'MOD' 'other:<TESTBASE>/test/peer/auto/older/update_both' '-'.
Checking for deleted files <TESTBASE>/test/peer/auto/older/update_both.
Remote local:<TESTBASE>/test/peer/auto/older/update_both won auto resolve.
check_auto_resolve: Remote local:<TESTBASE>/test/peer/auto/older/update_both won auto resolve
daemon dispatch: Remote local:<TESTBASE>/test/peer/auto/older/update_both won auto resolved. clear dirty
Updated(patch) local:<TESTBASE>/test/peer/auto/older/update_both  
IDENT (cmd_finished).
Command: local: SETTIME <TESTBASE>/test/peer/auto/older xxxxxxxx        
check_auto_resolve: Remote local:<TESTBASE>/test/peer/auto/older won auto resolve
daemon dispatch: Remote local:<TESTBASE>/test/peer/auto/older won auto resolved. clear dirty
Command: local: SETTIME <TESTBASE>/test/peer/auto xxxxxxxx        
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
Deleting recursive from clean directory (<TESTBASE>/test/peer): 3 
Calling csync_rmdir_recursive local:<TESTBASE>/test/peer. Errors 0
Removing <TESTBASE>/test/peer/* ..
Removing <TESTBASE>/test/peer/auto/* ..
Removing <TESTBASE>/test/peer/auto/older/* ..
Running check for <TESTBASE>/test/peer/auto/older/update_both ...
Checking for modified files <TESTBASE>/test/peer/auto/older/update_both 
Checking for deleted files <TESTBASE>/test/peer/auto/older/update_both.
Removing file <TESTBASE>/test/peer/auto/older/update_both
Removing <TESTBASE>/test/peer/auto/older/update_both from file db.
Removing directory <TESTBASE>/test/peer/auto/older 0
Removing directory <TESTBASE>/test/peer/auto 0
Removing directory <TESTBASE>/test/peer 0
Deleted recursive from clean directory (<TESTBASE>/test/peer): 3 1 
Updated(del) local:<TESTBASE>/test/peer  
IDENT (cmd_finished).
Command: local: BYE          
goto nofork.
