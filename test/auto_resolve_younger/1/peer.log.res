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
Command: local: SIG <TESTBASE>/test/peer/auto/younger user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Command: local: MKDIR <TESTBASE>/test/peer/auto/younger - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Running check for <TESTBASE>/test/peer/auto/younger ...
Checking for modified files <TESTBASE>/test/peer/auto/younger 
Checking for deleted files <TESTBASE>/test/peer/auto/younger.
Updated(mkdir) local:<TESTBASE>/test/peer/auto/younger  
IDENT (cmd_finished).
Command: local: SETTIME <TESTBASE>/test/peer/auto xxxxxxxx        
Command: local: SETTIME <TESTBASE>/test/peer xxxxxxxx        
Command: local: BYE          
goto nofork.
Command: (null): DEBUG          
Command: local HELLO
HELLO from local. Response: OK
Command: local: SIG <TESTBASE>/test/peer/auto/younger/local_oldest user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Command: local: PATCH <TESTBASE>/test/peer/auto/younger/local_oldest - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Running check for <TESTBASE>/test/peer/auto/younger/local_oldest ...
Checking for modified files <TESTBASE>/test/peer/auto/younger/local_oldest 
mark other operation: 'NEW' 'local:<TESTBASE>/test/peer/auto/younger/local_oldest' '-'.
mark other operation: 'NEW' 'other:<TESTBASE>/test/peer/auto/younger/local_oldest' '-'.
Checking for deleted files <TESTBASE>/test/peer/auto/younger/local_oldest.
File <TESTBASE>/test/peer/auto/younger/local_oldest is dirty here: NEW 2
File local:<TESTBASE>/test/peer/auto/younger/local_oldest is dirty here. Continuing.
ERROR: File is also marked dirty here! (<TESTBASE>/test/peer/auto/younger/local_oldest)
Command: local: GETTM <TESTBASE>/test/peer/auto/younger/local_oldest         
Command: local: SETTIME <TESTBASE>/test/peer/auto/younger xxxxxxxx        
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
Command: local: SIG <TESTBASE>/test/peer/auto/younger user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
check_auto_resolve: Remote local:<TESTBASE>/test/peer/auto/younger won auto resolve
daemon dispatch: Remote local:<TESTBASE>/test/peer/auto/younger won auto resolved. clear dirty
Command: local: MOD <TESTBASE>/test/peer/auto/younger - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
check_auto_resolve: Remote local:<TESTBASE>/test/peer/auto/younger won auto resolve
Running check for <TESTBASE>/test/peer/auto/younger ...
Checking for modified files <TESTBASE>/test/peer/auto/younger 
Checking for deleted files <TESTBASE>/test/peer/auto/younger.
check_auto_resolve: Remote local:<TESTBASE>/test/peer/auto/younger won auto resolve
daemon dispatch: Remote local:<TESTBASE>/test/peer/auto/younger won auto resolved. clear dirty
Updated(mod) local:<TESTBASE>/test/peer/auto/younger  
IDENT (cmd_finished).
Command: local: SIG <TESTBASE>/test/peer/auto/younger/local_oldest user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
check_auto_resolve: Remote local:<TESTBASE>/test/peer/auto/younger/local_oldest won auto resolve
daemon dispatch: Remote local:<TESTBASE>/test/peer/auto/younger/local_oldest won auto resolved. clear dirty
Command: local: PATCH <TESTBASE>/test/peer/auto/younger/local_oldest - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
check_auto_resolve: Remote local:<TESTBASE>/test/peer/auto/younger/local_oldest won auto resolve
Running check for <TESTBASE>/test/peer/auto/younger/local_oldest ...
Checking for modified files <TESTBASE>/test/peer/auto/younger/local_oldest 
Checking for deleted files <TESTBASE>/test/peer/auto/younger/local_oldest.
check_auto_resolve: Remote local:<TESTBASE>/test/peer/auto/younger/local_oldest won auto resolve
daemon dispatch: Remote local:<TESTBASE>/test/peer/auto/younger/local_oldest won auto resolved. clear dirty
Changing owner of /tmp/csync2/<PATH> to user <UID> and group <GID>, rc= -1 
Changing owner of /tmp/csync2/<PATH> to user <UID> and group <GID>, rc= -1 
Updated(patch) local:<TESTBASE>/test/peer/auto/younger/local_oldest  
IDENT (cmd_finished).
Command: local: SETTIME <TESTBASE>/test/peer/auto/younger xxxxxxxx        
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
Removing <TESTBASE>/test/peer/auto/younger/* ..
Running check for <TESTBASE>/test/peer/auto/younger/local_oldest ...
Checking for modified files <TESTBASE>/test/peer/auto/younger/local_oldest 
Checking for deleted files <TESTBASE>/test/peer/auto/younger/local_oldest.
Removing file <TESTBASE>/test/peer/auto/younger/local_oldest
Changing owner of /tmp/csync2/<PATH> to user <UID> and group <GID>, rc= -1 
Changing owner of /tmp/csync2/<PATH> to user <UID> and group <GID>, rc= -1 
Removing <TESTBASE>/test/peer/auto/younger/local_oldest from file db.
Removing directory <TESTBASE>/test/peer/auto/younger 0
Removing directory <TESTBASE>/test/peer/auto 0
Removing directory <TESTBASE>/test/peer 0
Called csync_rmdir_recursive local:<TESTBASE>/test/peer. RC: 1 0
Deleted recursive from clean directory (<TESTBASE>/test/peer): 3 1 
Updated(del) local:<TESTBASE>/test/peer  
IDENT (cmd_finished).
Command: local: BYE          
goto nofork.
