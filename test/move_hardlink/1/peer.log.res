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
Command: local: SIG <TESTBASE>/test/peer/Maildir user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Command: local: MKDIR <TESTBASE>/test/peer/Maildir - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Running check for <TESTBASE>/test/peer/Maildir ...
Checking for modified files <TESTBASE>/test/peer/Maildir 
Checking for deleted files <TESTBASE>/test/peer/Maildir.
Updated(mkdir) local:<TESTBASE>/test/peer/Maildir  
IDENT (cmd_finished).
Command: local: SIG <TESTBASE>/test/peer/Maildir/.Trash user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Command: local: MKDIR <TESTBASE>/test/peer/Maildir/.Trash - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Running check for <TESTBASE>/test/peer/Maildir/.Trash ...
Checking for modified files <TESTBASE>/test/peer/Maildir/.Trash 
Checking for deleted files <TESTBASE>/test/peer/Maildir/.Trash.
Updated(mkdir) local:<TESTBASE>/test/peer/Maildir/.Trash  
IDENT (cmd_finished).
Command: local: SIG <TESTBASE>/test/peer/Maildir/.Trash/cur user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Command: local: MKDIR <TESTBASE>/test/peer/Maildir/.Trash/cur - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Running check for <TESTBASE>/test/peer/Maildir/.Trash/cur ...
Checking for modified files <TESTBASE>/test/peer/Maildir/.Trash/cur 
Checking for deleted files <TESTBASE>/test/peer/Maildir/.Trash/cur.
Updated(mkdir) local:<TESTBASE>/test/peer/Maildir/.Trash/cur  
IDENT (cmd_finished).
Command: local: SIG <TESTBASE>/test/peer/Maildir/cur user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Command: local: MKDIR <TESTBASE>/test/peer/Maildir/cur - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Running check for <TESTBASE>/test/peer/Maildir/cur ...
Checking for modified files <TESTBASE>/test/peer/Maildir/cur 
Checking for deleted files <TESTBASE>/test/peer/Maildir/cur.
Updated(mkdir) local:<TESTBASE>/test/peer/Maildir/cur  
IDENT (cmd_finished).
Command: local: SIG <TESTBASE>/test/peer/Maildir/tmp user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Command: local: MKDIR <TESTBASE>/test/peer/Maildir/tmp - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Running check for <TESTBASE>/test/peer/Maildir/tmp ...
Checking for modified files <TESTBASE>/test/peer/Maildir/tmp 
Checking for deleted files <TESTBASE>/test/peer/Maildir/tmp.
Updated(mkdir) local:<TESTBASE>/test/peer/Maildir/tmp  
IDENT (cmd_finished).
Command: local: SIG <TESTBASE>/test/peer/Maildir/tmp/123 user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Command: local: CREATE <TESTBASE>/test/peer/Maildir/tmp/123 - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Running check for <TESTBASE>/test/peer/Maildir/tmp/123 ...
Checking for modified files <TESTBASE>/test/peer/Maildir/tmp/123 
Checking for deleted files <TESTBASE>/test/peer/Maildir/tmp/123.
daemon CREATE <TESTBASE>/test/peer/Maildir/tmp/123 1 0
Updated(create) local:<TESTBASE>/test/peer/Maildir/tmp/123  
IDENT (cmd_finished).
Command: local: SETTIME <TESTBASE>/test/peer/Maildir/tmp xxxxxxxx        
Command: local: SETTIME <TESTBASE>/test/peer/Maildir/.Trash xxxxxxxx        
Command: local: SETTIME <TESTBASE>/test/peer/Maildir xxxxxxxx        
Command: local: SETTIME <TESTBASE>/test/peer xxxxxxxx        
Command: local: BYE          
goto nofork.
Command: (null): DEBUG          
Command: local HELLO
HELLO from local. Response: OK
Command: local: SIG <TESTBASE>/test/peer/Maildir/.Trash/cur user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Command: local: MOD <TESTBASE>/test/peer/Maildir/.Trash/cur - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Running check for <TESTBASE>/test/peer/Maildir/.Trash/cur ...
Checking for modified files <TESTBASE>/test/peer/Maildir/.Trash/cur 
Checking for deleted files <TESTBASE>/test/peer/Maildir/.Trash/cur.
Updated(mod) local:<TESTBASE>/test/peer/Maildir/.Trash/cur  
IDENT (cmd_finished).
Command: local: SIG <TESTBASE>/test/peer/Maildir/cur user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Command: local: MOD <TESTBASE>/test/peer/Maildir/cur - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Running check for <TESTBASE>/test/peer/Maildir/cur ...
Checking for modified files <TESTBASE>/test/peer/Maildir/cur 
Checking for deleted files <TESTBASE>/test/peer/Maildir/cur.
Updated(mod) local:<TESTBASE>/test/peer/Maildir/cur  
IDENT (cmd_finished).
Command: local: SIG <TESTBASE>/test/peer/Maildir/tmp user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Command: local: MOD <TESTBASE>/test/peer/Maildir/tmp - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Running check for <TESTBASE>/test/peer/Maildir/tmp ...
Checking for modified files <TESTBASE>/test/peer/Maildir/tmp 
Checking for deleted files <TESTBASE>/test/peer/Maildir/tmp.
Updated(mod) local:<TESTBASE>/test/peer/Maildir/tmp  
IDENT (cmd_finished).
Command: local: MV <TESTBASE>/test/peer/Maildir/tmp/123 <TESTBASE>/test/peer/Maildir/cur/123,Sab        
DAEMON_MV <TESTBASE>/test/peer/Maildir/tmp/123 Locking MOVED_TO:<TESTBASE>/test/peer/Maildir/cur/123,Sab 1
SQL MOVE: UPDATE file set filename = concat(?::text,substring(filename,?)) WHERE (filename = ? or filename like ?) 
Updated(mv) local:<TESTBASE>/test/peer/Maildir/tmp/123 <TESTBASE>/test/peer/Maildir/cur/123,Sab 
Command: local: SIG <TESTBASE>/test/peer/Maildir/.Trash/cur/123,Sab user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Command: local: SIG <TESTBASE>/test/peer/Maildir/cur/123,Sab user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Command: local: MKHARDLINK <TESTBASE>/test/peer/Maildir/.Trash/cur/123,Sab <TESTBASE>/test/peer/Maildir/cur/123,Sab        
Running check for <TESTBASE>/test/peer/Maildir/.Trash/cur/123,Sab ...
Checking for modified files <TESTBASE>/test/peer/Maildir/.Trash/cur/123,Sab 
Checking for deleted files <TESTBASE>/test/peer/Maildir/.Trash/cur/123,Sab.
HARDLINK: <TESTBASE>/test/peer/Maildir/cur/123,Sab -> <TESTBASE>/test/peer/Maildir/.Trash/cur/123,Sab 
Updated(mkhardlink) local:<TESTBASE>/test/peer/Maildir/.Trash/cur/123,Sab <TESTBASE>/test/peer/Maildir/cur/123,Sab 
Command: local: SETTIME <TESTBASE>/test/peer/Maildir/.Trash/cur xxxxxxxx        
Command: local: SETTIME <TESTBASE>/test/peer/Maildir/tmp xxxxxxxx        
Command: local: SETTIME <TESTBASE>/test/peer/Maildir/cur xxxxxxxx        
Command: local: SETTIME <TESTBASE>/test/peer/Maildir xxxxxxxx        
Command: local: SETTIME <TESTBASE>/test/peer/Maildir/.Trash xxxxxxxx        
Command: local: BYE          
goto nofork.
