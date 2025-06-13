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
Command: local: SIG <TESTBASE>/test/peer/new user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Command: local: MKDIR <TESTBASE>/test/peer/new - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Running check for <TESTBASE>/test/peer/new ...
Checking for modified files <TESTBASE>/test/peer/new 
Checking for deleted files <TESTBASE>/test/peer/new.
Updated(mkdir) local:<TESTBASE>/test/peer/new  
IDENT (cmd_finished).
Command: local: SIG <TESTBASE>/test/peer/new/new_file user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Command: local: CREATE <TESTBASE>/test/peer/new/new_file - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Running check for <TESTBASE>/test/peer/new/new_file ...
Checking for modified files <TESTBASE>/test/peer/new/new_file 
Checking for deleted files <TESTBASE>/test/peer/new/new_file.
daemon CREATE <TESTBASE>/test/peer/new/new_file 1 0
Updated(create) local:<TESTBASE>/test/peer/new/new_file  
IDENT (cmd_finished).
Command: local: SIG <TESTBASE>/test/peer/new/hardlinked user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Command: local: SIG <TESTBASE>/test/peer/new/new_file user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Command: local: MKHARDLINK <TESTBASE>/test/peer/new/hardlinked <TESTBASE>/test/peer/new/new_file        
Running check for <TESTBASE>/test/peer/new/hardlinked ...
Checking for modified files <TESTBASE>/test/peer/new/hardlinked 
Checking for deleted files <TESTBASE>/test/peer/new/hardlinked.
HARDLINK: <TESTBASE>/test/peer/new/new_file -> <TESTBASE>/test/peer/new/hardlinked 
Updated(mkhardlink) local:<TESTBASE>/test/peer/new/hardlinked <TESTBASE>/test/peer/new/new_file 
Command: local: SETTIME <TESTBASE>/test/peer/new xxxxxxxx        
Command: local: SETTIME <TESTBASE>/test/peer xxxxxxxx        
Command: local: BYE          
goto nofork.
Command: (null): DEBUG          
Command: local HELLO
HELLO from local. Response: OK
Command: local: SIG <TESTBASE>/test/peer/new user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Command: local: MOD <TESTBASE>/test/peer/new - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Running check for <TESTBASE>/test/peer/new ...
Checking for modified files <TESTBASE>/test/peer/new 
Checking for deleted files <TESTBASE>/test/peer/new.
Updated(mod) local:<TESTBASE>/test/peer/new  
IDENT (cmd_finished).
Command: local: SIG <TESTBASE>/test/peer/new/hardlinked_2 user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Command: local: SIG <TESTBASE>/test/peer/new/hardlinked user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Command: local: MKHARDLINK <TESTBASE>/test/peer/new/hardlinked_2 <TESTBASE>/test/peer/new/hardlinked        
Running check for <TESTBASE>/test/peer/new/hardlinked_2 ...
Checking for modified files <TESTBASE>/test/peer/new/hardlinked_2 
Checking for deleted files <TESTBASE>/test/peer/new/hardlinked_2.
HARDLINK: <TESTBASE>/test/peer/new/hardlinked -> <TESTBASE>/test/peer/new/hardlinked_2 
Updated(mkhardlink) local:<TESTBASE>/test/peer/new/hardlinked_2 <TESTBASE>/test/peer/new/hardlinked 
Command: local: SIG <TESTBASE>/test/peer/new/hardlinked_3 user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Command: local: SIG <TESTBASE>/test/peer/new/hardlinked user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Command: local: MKHARDLINK <TESTBASE>/test/peer/new/hardlinked_3 <TESTBASE>/test/peer/new/hardlinked        
Running check for <TESTBASE>/test/peer/new/hardlinked_3 ...
Checking for modified files <TESTBASE>/test/peer/new/hardlinked_3 
Checking for deleted files <TESTBASE>/test/peer/new/hardlinked_3.
HARDLINK: <TESTBASE>/test/peer/new/hardlinked -> <TESTBASE>/test/peer/new/hardlinked_3 
Updated(mkhardlink) local:<TESTBASE>/test/peer/new/hardlinked_3 <TESTBASE>/test/peer/new/hardlinked 
Command: local: SETTIME <TESTBASE>/test/peer/new xxxxxxxx        
Command: local: SETTIME <TESTBASE>/test/peer xxxxxxxx        
Command: local: BYE          
goto nofork.
Command: (null): DEBUG          
Command: local HELLO
HELLO from local. Response: OK
Command: local: SIG <TESTBASE>/test/peer user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Command: local: SIG <TESTBASE>/test/peer/new user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Command: local: SIG <TESTBASE>/test/peer/new/hardlinked user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Command: local: SIG <TESTBASE>/test/peer/new/hardlinked_2 user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Command: local: SIG <TESTBASE>/test/peer/new/hardlinked_3 user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Command: local: SIG <TESTBASE>/test/peer/new/hardlinked_4 user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Command: local: SIG <TESTBASE>/test/peer/new/hardlinked_5 user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Command: local: SIG <TESTBASE>/test/peer/new/new_file user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Command: local: BYE          
goto nofork.
Command: (null): DEBUG          
Command: local HELLO
HELLO from local. Response: OK
Command: local: SIG <TESTBASE>/test/peer/new user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Command: local: MOD <TESTBASE>/test/peer/new - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Running check for <TESTBASE>/test/peer/new ...
Checking for modified files <TESTBASE>/test/peer/new 
Checking for deleted files <TESTBASE>/test/peer/new.
Updated(mod) local:<TESTBASE>/test/peer/new  
IDENT (cmd_finished).
Command: local: SIG <TESTBASE>/test/peer/new/hardlinked_4 user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Command: local: SIG <TESTBASE>/test/peer/new/new_file user/group <UID> <GID> <USER> <GROUP> 33188 32a0617aab4c9fe725f1b5bc441291180ad25b73 4 xxxxxxxx
Command: local: MKHARDLINK <TESTBASE>/test/peer/new/hardlinked_4 <TESTBASE>/test/peer/new/new_file        
Running check for <TESTBASE>/test/peer/new/hardlinked_4 ...
Checking for modified files <TESTBASE>/test/peer/new/hardlinked_4 
Checking for deleted files <TESTBASE>/test/peer/new/hardlinked_4.
HARDLINK: <TESTBASE>/test/peer/new/new_file -> <TESTBASE>/test/peer/new/hardlinked_4 
Updated(mkhardlink) local:<TESTBASE>/test/peer/new/hardlinked_4 <TESTBASE>/test/peer/new/new_file 
Command: local: SIG <TESTBASE>/test/peer/new/hardlinked_5 user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Command: local: SIG <TESTBASE>/test/peer/new/new_file user/group <UID> <GID> <USER> <GROUP> 33188 32a0617aab4c9fe725f1b5bc441291180ad25b73 4 xxxxxxxx
Command: local: MKHARDLINK <TESTBASE>/test/peer/new/hardlinked_5 <TESTBASE>/test/peer/new/new_file        
Running check for <TESTBASE>/test/peer/new/hardlinked_5 ...
Checking for modified files <TESTBASE>/test/peer/new/hardlinked_5 
Checking for deleted files <TESTBASE>/test/peer/new/hardlinked_5.
HARDLINK: <TESTBASE>/test/peer/new/new_file -> <TESTBASE>/test/peer/new/hardlinked_5 
Updated(mkhardlink) local:<TESTBASE>/test/peer/new/hardlinked_5 <TESTBASE>/test/peer/new/new_file 
Command: local: SETTIME <TESTBASE>/test/peer/new xxxxxxxx        
Command: local: SETTIME <TESTBASE>/test/peer xxxxxxxx        
Command: local: BYE          
goto nofork.
Command: (null): DEBUG          
Command: local HELLO
HELLO from local. Response: OK
Command: local: SIG <TESTBASE>/test/peer/new user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Command: local: MOD <TESTBASE>/test/peer/new - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Running check for <TESTBASE>/test/peer/new ...
Checking for modified files <TESTBASE>/test/peer/new 
Checking for deleted files <TESTBASE>/test/peer/new.
Updated(mod) local:<TESTBASE>/test/peer/new  
IDENT (cmd_finished).
Command: local: SIG <TESTBASE>/test/peer/new/was_hardlink user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Command: local: CREATE <TESTBASE>/test/peer/new/was_hardlink - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Running check for <TESTBASE>/test/peer/new/was_hardlink ...
Checking for modified files <TESTBASE>/test/peer/new/was_hardlink 
Checking for deleted files <TESTBASE>/test/peer/new/was_hardlink.
daemon CREATE <TESTBASE>/test/peer/new/was_hardlink 1 0
Updated(create) local:<TESTBASE>/test/peer/new/was_hardlink  
IDENT (cmd_finished).
Command: local: SETTIME <TESTBASE>/test/peer/new xxxxxxxx        
Command: local: SETTIME <TESTBASE>/test/peer xxxxxxxx        
Command: local: BYE          
goto nofork.
