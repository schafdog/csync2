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
Command: local: BYE          
goto nofork.
Command: (null): DEBUG          
Command: local HELLO
HELLO from local. Response: OK
Command: local: SIG <TESTBASE>/test/peer user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Command: local: SIG <TESTBASE>/test/peer/different user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Command: local: PATCH <TESTBASE>/test/peer/different - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Running check for <TESTBASE>/test/peer/different ...
Checking for modified files <TESTBASE>/test/peer/different 
mark other operation: 'NEW' 'local:<TESTBASE>/test/peer/different' '-'.
mark other operation: 'NEW' 'other:<TESTBASE>/test/peer/different' '-'.
Checking for deleted files <TESTBASE>/test/peer/different.
File <TESTBASE>/test/peer/different is dirty here: NEW 2
File local:<TESTBASE>/test/peer/different is dirty here. Continuing.
ERROR: File is also marked dirty here! (<TESTBASE>/test/peer/different)
Command: local: SETTIME <TESTBASE>/test/peer xxxxxxxx        
Command: local: BYE          
goto nofork.
Command: (null): DEBUG          
Command: local HELLO
HELLO from local. Response: OK
Command: local: SIG <TESTBASE>/test/peer/different user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Command: local: PATCH <TESTBASE>/test/peer/different - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Running check for <TESTBASE>/test/peer/different ...
Checking for modified files <TESTBASE>/test/peer/different 
Checking for deleted files <TESTBASE>/test/peer/different.
File <TESTBASE>/test/peer/different is dirty here: NEW 2
File local:<TESTBASE>/test/peer/different is dirty here. Continuing.
ERROR: File is also marked dirty here! (<TESTBASE>/test/peer/different)
Command: local: SETTIME <TESTBASE>/test/peer xxxxxxxx        
Command: local: BYE          
goto nofork.
Command: (null): DEBUG          
Command: local HELLO
HELLO from local. Response: OK
Command: local: FLUSH <TESTBASE>/test/peer/different         
Running check for <TESTBASE>/test/peer/different ...
Checking for modified files <TESTBASE>/test/peer/different 
Checking for deleted files <TESTBASE>/test/peer/different.
Command: local: SIG <TESTBASE>/test/peer/different user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Command: local: PATCH <TESTBASE>/test/peer/different - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Running check for <TESTBASE>/test/peer/different ...
Checking for modified files <TESTBASE>/test/peer/different 
Checking for deleted files <TESTBASE>/test/peer/different.
Changing owner of /tmp/csync2/<BACKUP> to user <UID> and group <GID>, rc= -1 
Changing mode of /tmp/csync2/<BACKUP> to mode 16877, rc= -1 
Changing owner of /tmp/csync2/<BACKUP> to user <UID> and group <GID>, rc= -1 
Changing mode of /tmp/csync2/<BACKUP> to mode 16877, rc= -1 
Updated(patch) local:<TESTBASE>/test/peer/different  
IDENT (cmd_finished).
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
Command: local: SIG <TESTBASE>/test/peer/tmp user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Command: local: MOD <TESTBASE>/test/peer/tmp - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Running check for <TESTBASE>/test/peer/tmp ...
Checking for modified files <TESTBASE>/test/peer/tmp 
mark other operation: 'MKDIR' 'local:<TESTBASE>/test/peer/tmp' '-'.
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/peer/tmp' '-'.
Checking for deleted files <TESTBASE>/test/peer/tmp.
Ignoring dirty directory <TESTBASE>/test/peer/tmp
Updated(mod) local:<TESTBASE>/test/peer/tmp  
IDENT (cmd_finished).
Command: local: SETTIME <TESTBASE>/test/peer xxxxxxxx        
Command: local: BYE          
goto nofork.
Command: (null): DEBUG          
Command: local HELLO
HELLO from local. Response: OK
Command: local: STAT <TESTBASE>/test/peer user/group <UID> <GID> <USER> <GROUP>    
Command: local: BYE          
goto nofork.
