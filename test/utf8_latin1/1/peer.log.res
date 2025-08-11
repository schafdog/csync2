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
Command: local: SIG <TESTBASE>/test/peer/ÆØÅ Café.utf8 user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Command: local: CREATE <TESTBASE>/test/peer/ÆØÅ Café.utf8 - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Running check for <TESTBASE>/test/peer/ÆØÅ Café.utf8 ...
Checking for modified files <TESTBASE>/test/peer/ÆØÅ Café.utf8 
Checking for deleted files <TESTBASE>/test/peer/ÆØÅ Café.utf8.
daemon CREATE <TESTBASE>/test/peer/ÆØÅ Café.utf8 1 0
Updated(create) local:<TESTBASE>/test/peer/ÆØÅ Café.utf8  
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
Command: local: STAT <TESTBASE>/test/peer/ÆØÅ Café.utf8 user/group <UID> <GID> <USER> <GROUP>    
Command: local: DEL <TESTBASE>/test/peer/ÆØÅ Café.utf8         
Running check for <TESTBASE>/test/peer/ÆØÅ Café.utf8 ...
Checking for modified files <TESTBASE>/test/peer/ÆØÅ Café.utf8 
Checking for deleted files <TESTBASE>/test/peer/ÆØÅ Café.utf8.
Changing owner of /tmp/csync2/<BACKUP> to user <UID> and group <GID>, rc= -1 
Changing mode of /tmp/csync2/<BACKUP> to mode 16877, rc= -1 
Changing owner of /tmp/csync2/<BACKUP> to user <UID> and group <GID>, rc= -1 
Changing mode of /tmp/csync2/<BACKUP> to mode 16877, rc= -1 
Updated(del) local:<TESTBASE>/test/peer/ÆØÅ Café.utf8  
Command: local: BYE          
goto nofork.
