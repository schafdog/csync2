Found my alias peer localhost 30861 
Command: (null): DEBUG          
Command: local HELLO
HELLO from local. Response: OK
Command: local: SIG <TESTBASE>/test/peer/recursive/1/2/3/4/5 user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Path not found <TESTBASE>/test
Command: local: MKDIR <TESTBASE>/test/peer - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Running check for <TESTBASE>/test/peer ...
Checking for modified files <TESTBASE>/test/peer 
Checking for deleted files <TESTBASE>/test/peer.
Updated(mkdir) local:<TESTBASE>/test/peer  
IDENT (cmd_finished).
Command: local: MKDIR <TESTBASE>/test/peer/recursive - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Running check for <TESTBASE>/test/peer/recursive ...
Checking for modified files <TESTBASE>/test/peer/recursive 
Checking for deleted files <TESTBASE>/test/peer/recursive.
Updated(mkdir) local:<TESTBASE>/test/peer/recursive  
IDENT (cmd_finished).
Command: local: MKDIR <TESTBASE>/test/peer/recursive/1 - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Running check for <TESTBASE>/test/peer/recursive/1 ...
Checking for modified files <TESTBASE>/test/peer/recursive/1 
Checking for deleted files <TESTBASE>/test/peer/recursive/1.
Updated(mkdir) local:<TESTBASE>/test/peer/recursive/1  
IDENT (cmd_finished).
Command: local: MKDIR <TESTBASE>/test/peer/recursive/1/2 - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Running check for <TESTBASE>/test/peer/recursive/1/2 ...
Checking for modified files <TESTBASE>/test/peer/recursive/1/2 
Checking for deleted files <TESTBASE>/test/peer/recursive/1/2.
Updated(mkdir) local:<TESTBASE>/test/peer/recursive/1/2  
IDENT (cmd_finished).
Command: local: MKDIR <TESTBASE>/test/peer/recursive/1/2/3 - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Running check for <TESTBASE>/test/peer/recursive/1/2/3 ...
Checking for modified files <TESTBASE>/test/peer/recursive/1/2/3 
Checking for deleted files <TESTBASE>/test/peer/recursive/1/2/3.
Updated(mkdir) local:<TESTBASE>/test/peer/recursive/1/2/3  
IDENT (cmd_finished).
Command: local: MKDIR <TESTBASE>/test/peer/recursive/1/2/3/4 - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Running check for <TESTBASE>/test/peer/recursive/1/2/3/4 ...
Checking for modified files <TESTBASE>/test/peer/recursive/1/2/3/4 
Checking for deleted files <TESTBASE>/test/peer/recursive/1/2/3/4.
Updated(mkdir) local:<TESTBASE>/test/peer/recursive/1/2/3/4  
IDENT (cmd_finished).
Command: local: MKDIR <TESTBASE>/test/peer/recursive/1/2/3/4/5 - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Running check for <TESTBASE>/test/peer/recursive/1/2/3/4/5 ...
Checking for modified files <TESTBASE>/test/peer/recursive/1/2/3/4/5 
Checking for deleted files <TESTBASE>/test/peer/recursive/1/2/3/4/5.
Updated(mkdir) local:<TESTBASE>/test/peer/recursive/1/2/3/4/5  
IDENT (cmd_finished).
Command: local: SIG <TESTBASE>/test/peer/recursive/1/2/3/4/5/file.c user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Command: local: CREATE <TESTBASE>/test/peer/recursive/1/2/3/4/5/file.c - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Running check for <TESTBASE>/test/peer/recursive/1/2/3/4/5/file.c ...
Checking for modified files <TESTBASE>/test/peer/recursive/1/2/3/4/5/file.c 
Checking for deleted files <TESTBASE>/test/peer/recursive/1/2/3/4/5/file.c.
daemon CREATE <TESTBASE>/test/peer/recursive/1/2/3/4/5/file.c 1 0
Updated(create) local:<TESTBASE>/test/peer/recursive/1/2/3/4/5/file.c  
IDENT (cmd_finished).
Command: local: SETTIME <TESTBASE>/test/peer/recursive/1/2/3/4/5 xxxxxxxx        
Command: local: SETTIME <TESTBASE>/test/peer/recursive/1/2/3/4 xxxxxxxx        
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
Deleting recursive from clean directory (<TESTBASE>/test/peer): 7 
Calling csync_rmdir_recursive local:<TESTBASE>/test/peer. Errors 0
Removing <TESTBASE>/test/peer/* ..
Removing <TESTBASE>/test/peer/recursive/* ..
Removing <TESTBASE>/test/peer/recursive/1/* ..
Removing <TESTBASE>/test/peer/recursive/1/2/* ..
Removing <TESTBASE>/test/peer/recursive/1/2/3/* ..
Removing <TESTBASE>/test/peer/recursive/1/2/3/4/* ..
Removing <TESTBASE>/test/peer/recursive/1/2/3/4/5/* ..
Running check for <TESTBASE>/test/peer/recursive/1/2/3/4/5/file.c ...
Checking for modified files <TESTBASE>/test/peer/recursive/1/2/3/4/5/file.c 
Checking for deleted files <TESTBASE>/test/peer/recursive/1/2/3/4/5/file.c.
Removing file <TESTBASE>/test/peer/recursive/1/2/3/4/5/file.c
Changing owner of /tmp/csync2/<PATH> to user <UID> and group <GID>, rc= -1 
Changing owner of /tmp/csync2/<PATH> to user <UID> and group <GID>, rc= -1 
Removing <TESTBASE>/test/peer/recursive/1/2/3/4/5/file.c from file db.
Removing directory <TESTBASE>/test/peer/recursive/1/2/3/4/5 0
Removing directory <TESTBASE>/test/peer/recursive/1/2/3/4 0
Removing directory <TESTBASE>/test/peer/recursive/1/2/3 0
Removing directory <TESTBASE>/test/peer/recursive/1/2 0
Removing directory <TESTBASE>/test/peer/recursive/1 0
Removing directory <TESTBASE>/test/peer/recursive 0
Removing directory <TESTBASE>/test/peer 0
Called csync_rmdir_recursive local:<TESTBASE>/test/peer. RC: 1 0
Deleted recursive from clean directory (<TESTBASE>/test/peer): 7 1 
Updated(del) local:<TESTBASE>/test/peer  
IDENT (cmd_finished).
Command: local: BYE          
goto nofork.
