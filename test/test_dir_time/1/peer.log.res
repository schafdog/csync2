Found my alias peer localhost 30861 
Command: (null): DEBUG          
Command: local HELLO
HELLO from local. Response: OK
Command: local: SIG <TESTBASE>/test/peer user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxx
Command: local: MKDIR <TESTBASE>/test/peer - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxx
Running check for <TESTBASE>/test/peer ...
Checking for modified files <TESTBASE>/test/peer 
Checking for deleted files <TESTBASE>/test/peer.
Updated(mkdir) local:<TESTBASE>/test/peer  
IDENT (cmd_finished).
Command: local: SIG <TESTBASE>/test/peer/usr user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxx
Command: local: MKDIR <TESTBASE>/test/peer/usr - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxx
Running check for <TESTBASE>/test/peer/usr ...
Checking for modified files <TESTBASE>/test/peer/usr 
Checking for deleted files <TESTBASE>/test/peer/usr.
Updated(mkdir) local:<TESTBASE>/test/peer/usr  
IDENT (cmd_finished).
Command: local: SIG <TESTBASE>/test/peer/usr/local user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxx
Command: local: MKDIR <TESTBASE>/test/peer/usr/local - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxx
Running check for <TESTBASE>/test/peer/usr/local ...
Checking for modified files <TESTBASE>/test/peer/usr/local 
Checking for deleted files <TESTBASE>/test/peer/usr/local.
Updated(mkdir) local:<TESTBASE>/test/peer/usr/local  
IDENT (cmd_finished).
Command: local: SIG <TESTBASE>/test/peer/usr/local/sbin user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxx
Command: local: MKDIR <TESTBASE>/test/peer/usr/local/sbin - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxx
Running check for <TESTBASE>/test/peer/usr/local/sbin ...
Checking for modified files <TESTBASE>/test/peer/usr/local/sbin 
Checking for deleted files <TESTBASE>/test/peer/usr/local/sbin.
Updated(mkdir) local:<TESTBASE>/test/peer/usr/local/sbin  
IDENT (cmd_finished).
Command: local: SETTIME <TESTBASE>/test/peer/usr/local xxxxxxxx        
Command: local: SETTIME <TESTBASE>/test/peer/usr xxxxxxxx        
Command: local: SETTIME <TESTBASE>/test/peer xxxxxxxx        
Command: local: BYE          
goto nofork.
Command: (null): DEBUG          
Command: local HELLO
HELLO from local. Response: OK
Command: local: SIG <TESTBASE>/test/peer/usr/local/sbin user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxx
Command: local: MOD <TESTBASE>/test/peer/usr/local/sbin - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxx
Running check for <TESTBASE>/test/peer/usr/local/sbin ...
Checking for modified files <TESTBASE>/test/peer/usr/local/sbin 
Checking for deleted files <TESTBASE>/test/peer/usr/local/sbin.
Updated(mod) local:<TESTBASE>/test/peer/usr/local/sbin  
IDENT (cmd_finished).
Command: local: SETTIME <TESTBASE>/test/peer/usr/local xxxxxxxx        
Command: local: BYE          
goto nofork.
Command: (null): DEBUG          
Command: local HELLO
HELLO from local. Response: OK
Command: local: SIG <TESTBASE>/test/peer user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxx
Command: local: SIG <TESTBASE>/test/peer/usr user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxx
Command: local: SIG <TESTBASE>/test/peer/usr/local user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxx
Command: local: MOD <TESTBASE>/test/peer/usr/local - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxx
Running check for <TESTBASE>/test/peer/usr/local ...
Checking for modified files <TESTBASE>/test/peer/usr/local 
Checking for deleted files <TESTBASE>/test/peer/usr/local.
Updated(mod) local:<TESTBASE>/test/peer/usr/local  
IDENT (cmd_finished).
Command: local: SIG <TESTBASE>/test/peer/usr/local/sbin user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxx
Command: local: SETTIME <TESTBASE>/test/peer/usr/local xxxxxxxx        
Command: local: SETTIME <TESTBASE>/test/peer/usr xxxxxxxx        
Command: local: SETTIME <TESTBASE>/test/peer xxxxxxxx        
Command: local: BYE          
goto nofork.
Command: (null): DEBUG          
Command: local HELLO
HELLO from local. Response: OK
Command: local: SIG <TESTBASE>/test/peer/usr/local user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxx
Command: local: SIG <TESTBASE>/test/peer/usr/local/sbin user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxx
Command: local: MOD <TESTBASE>/test/peer/usr/local/sbin - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxx
Running check for <TESTBASE>/test/peer/usr/local/sbin ...
Checking for modified files <TESTBASE>/test/peer/usr/local/sbin 
Checking for deleted files <TESTBASE>/test/peer/usr/local/sbin.
Updated(mod) local:<TESTBASE>/test/peer/usr/local/sbin  
IDENT (cmd_finished).
Command: local: SIG <TESTBASE>/test/peer/usr/local/sbin/hej user/group 1234 1000 dennis schafroth 33188 - 4 xxxxxxxx
Command: local: CREATE <TESTBASE>/test/peer/usr/local/sbin/hej - 1234 1000 dennis schafroth 33188 - 4 xxxxxxxx
Running check for <TESTBASE>/test/peer/usr/local/sbin/hej ...
Checking for modified files <TESTBASE>/test/peer/usr/local/sbin/hej 
Checking for deleted files <TESTBASE>/test/peer/usr/local/sbin/hej.
daemon CREATE <TESTBASE>/test/peer/usr/local/sbin/hej 1 0
Updated(create) local:<TESTBASE>/test/peer/usr/local/sbin/hej  
IDENT (cmd_finished).
Command: local: SETTIME <TESTBASE>/test/peer/usr/local/sbin xxxxxxxx        
Command: local: SETTIME <TESTBASE>/test/peer/usr/local xxxxxxxx        
Command: local: SETTIME <TESTBASE>/test/peer/usr xxxxxxxx        
Command: local: BYE          
goto nofork.
Command: (null): DEBUG          
Command: local HELLO
HELLO from local. Response: OK
Command: local: SIG <TESTBASE>/test/peer/usr/local/sbin user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxx
Command: local: MOD <TESTBASE>/test/peer/usr/local/sbin - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxx
Running check for <TESTBASE>/test/peer/usr/local/sbin ...
Checking for modified files <TESTBASE>/test/peer/usr/local/sbin 
Checking for deleted files <TESTBASE>/test/peer/usr/local/sbin.
Updated(mod) local:<TESTBASE>/test/peer/usr/local/sbin  
IDENT (cmd_finished).
Command: local: STAT <TESTBASE>/test/peer/usr/local/sbin/hej user/group        
Command: local: DEL <TESTBASE>/test/peer/usr/local/sbin/hej         
Running check for <TESTBASE>/test/peer/usr/local/sbin/hej ...
Checking for modified files <TESTBASE>/test/peer/usr/local/sbin/hej 
Checking for deleted files <TESTBASE>/test/peer/usr/local/sbin/hej.
Changing owner of /tmp/csync2/export/home to user 0 and group 0, rc= -1 
Updated(del) local:<TESTBASE>/test/peer/usr/local/sbin/hej  
Command: local: SETTIME <TESTBASE>/test/peer/usr/local xxxxxxxx        
Command: local: BYE          
goto nofork.
Command: (null): DEBUG          
Command: local HELLO
HELLO from local. Response: OK
Command: local: STAT <TESTBASE>/test/peer user/group        
Command: local: DEL <TESTBASE>/test/peer         
Running check for <TESTBASE>/test/peer ...
Checking for modified files <TESTBASE>/test/peer 
Checking for deleted files <TESTBASE>/test/peer.
Deleting recursive from clean directory (<TESTBASE>/test/peer): 3 
Calling csync_rmdir_recursive local:<TESTBASE>/test/peer. Errors 0
Removing <TESTBASE>/test/peer/* ..
Removing <TESTBASE>/test/peer/usr/* ..
Removing <TESTBASE>/test/peer/usr/local/* ..
Removing <TESTBASE>/test/peer/usr/local/sbin/* ..
Removing directory <TESTBASE>/test/peer/usr/local/sbin 0
Removing directory <TESTBASE>/test/peer/usr/local 0
Removing directory <TESTBASE>/test/peer/usr 0
Removing directory <TESTBASE>/test/peer 0
Called csync_rmdir_recursive local:<TESTBASE>/test/peer. RC: 1 0
Deleted recursive from clean directory (<TESTBASE>/test/peer): 3 1 
Updated(del) local:<TESTBASE>/test/peer  
IDENT (cmd_finished).
Command: local: BYE          
goto nofork.
