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
Command: local: SIG <TESTBASE>/test/peer/new user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxx
Command: local: MKDIR <TESTBASE>/test/peer/new - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxx
Running check for <TESTBASE>/test/peer/new ...
Checking for modified files <TESTBASE>/test/peer/new 
Checking for deleted files <TESTBASE>/test/peer/new.
Updated(mkdir) local:<TESTBASE>/test/peer/new  
IDENT (cmd_finished).
Command: local: SIG <TESTBASE>/test/peer/new/new_file user/group 1234 1000 dennis schafroth 33188 - 4 xxxxxxxx
Command: local: CREATE <TESTBASE>/test/peer/new/new_file - 1234 1000 dennis schafroth 33188 - 4 xxxxxxxx
Running check for <TESTBASE>/test/peer/new/new_file ...
Checking for modified files <TESTBASE>/test/peer/new/new_file 
Checking for deleted files <TESTBASE>/test/peer/new/new_file.
daemon CREATE <TESTBASE>/test/peer/new/new_file 1 0
Updated(create) local:<TESTBASE>/test/peer/new/new_file  
IDENT (cmd_finished).
Command: local: SIG <TESTBASE>/test/peer/new/hardlinked user/group 1234 1000 dennis schafroth 33188 - 4 xxxxxxxx
Command: local: SIG <TESTBASE>/test/peer/new/new_file user/group 1234 1000 dennis schafroth 33188 - 4 xxxxxxxx
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
Command: local: SIG <TESTBASE>/test/peer/new user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxx
Command: local: MOD <TESTBASE>/test/peer/new - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxx
Running check for <TESTBASE>/test/peer/new ...
Checking for modified files <TESTBASE>/test/peer/new 
Checking for deleted files <TESTBASE>/test/peer/new.
Updated(mod) local:<TESTBASE>/test/peer/new  
IDENT (cmd_finished).
Command: local: SIG <TESTBASE>/test/peer/new/hardlinked_2 user/group 1234 1000 dennis schafroth 33188 - 4 xxxxxxxx
Command: local: SIG <TESTBASE>/test/peer/new/new_file user/group 1234 1000 dennis schafroth 33188 - 4 xxxxxxxx
Command: local: MKHARDLINK <TESTBASE>/test/peer/new/hardlinked_2 <TESTBASE>/test/peer/new/new_file        
Running check for <TESTBASE>/test/peer/new/hardlinked_2 ...
Checking for modified files <TESTBASE>/test/peer/new/hardlinked_2 
Checking for deleted files <TESTBASE>/test/peer/new/hardlinked_2.
HARDLINK: <TESTBASE>/test/peer/new/new_file -> <TESTBASE>/test/peer/new/hardlinked_2 
Updated(mkhardlink) local:<TESTBASE>/test/peer/new/hardlinked_2 <TESTBASE>/test/peer/new/new_file 
Command: local: SIG <TESTBASE>/test/peer/new/hardlinked_3 user/group 1234 1000 dennis schafroth 33188 - 4 xxxxxxxx
Command: local: SIG <TESTBASE>/test/peer/new/new_file user/group 1234 1000 dennis schafroth 33188 - 4 xxxxxxxx
Command: local: MKHARDLINK <TESTBASE>/test/peer/new/hardlinked_3 <TESTBASE>/test/peer/new/new_file        
Running check for <TESTBASE>/test/peer/new/hardlinked_3 ...
Checking for modified files <TESTBASE>/test/peer/new/hardlinked_3 
Checking for deleted files <TESTBASE>/test/peer/new/hardlinked_3.
HARDLINK: <TESTBASE>/test/peer/new/new_file -> <TESTBASE>/test/peer/new/hardlinked_3 
Updated(mkhardlink) local:<TESTBASE>/test/peer/new/hardlinked_3 <TESTBASE>/test/peer/new/new_file 
Command: local: SETTIME <TESTBASE>/test/peer/new xxxxxxxx        
Command: local: SETTIME <TESTBASE>/test/peer xxxxxxxx        
Command: local: BYE          
goto nofork.
Command: (null): DEBUG          
Command: local HELLO
HELLO from local. Response: OK
Command: local: SIG <TESTBASE>/test/peer user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxx
Command: local: SIG <TESTBASE>/test/peer/new user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxx
Command: local: SIG <TESTBASE>/test/peer/new/hardlinked user/group 1234 1000 dennis schafroth 33188 - 4 xxxxxxxx
Command: local: SIG <TESTBASE>/test/peer/new/hardlinked_2 user/group 1234 1000 dennis schafroth 33188 - 4 xxxxxxxx
Command: local: SIG <TESTBASE>/test/peer/new/hardlinked_3 user/group 1234 1000 dennis schafroth 33188 - 4 xxxxxxxx
Command: local: SIG <TESTBASE>/test/peer/new/hardlinked_4 user/group 1234 1000 dennis schafroth 33188 - 4 xxxxxxxx
Command: local: SIG <TESTBASE>/test/peer/new/hardlinked_5 user/group 1234 1000 dennis schafroth 33188 - 4 xxxxxxxx
Command: local: SIG <TESTBASE>/test/peer/new/new_file user/group 1234 1000 dennis schafroth 33188 - 4 xxxxxxxx
Command: local: BYE          
goto nofork.
Command: (null): DEBUG          
Command: local HELLO
HELLO from local. Response: OK
Command: local: SIG <TESTBASE>/test/peer/new user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxx
Command: local: MOD <TESTBASE>/test/peer/new - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxx
Running check for <TESTBASE>/test/peer/new ...
Checking for modified files <TESTBASE>/test/peer/new 
Checking for deleted files <TESTBASE>/test/peer/new.
Updated(mod) local:<TESTBASE>/test/peer/new  
IDENT (cmd_finished).
Command: local: SIG <TESTBASE>/test/peer/new/hardlinked_4 user/group 1234 1000 dennis schafroth 33188 - 4 xxxxxxxx
Command: local: SIG <TESTBASE>/test/peer/new/hardlinked_2 user/group 1234 1000 dennis schafroth 33188 32a0617aab4c9fe725f1b5bc441291180ad25b73 4 xxxxxxxx
Command: local: MKHARDLINK <TESTBASE>/test/peer/new/hardlinked_4 <TESTBASE>/test/peer/new/hardlinked_2        
Running check for <TESTBASE>/test/peer/new/hardlinked_4 ...
Checking for modified files <TESTBASE>/test/peer/new/hardlinked_4 
Checking for deleted files <TESTBASE>/test/peer/new/hardlinked_4.
HARDLINK: <TESTBASE>/test/peer/new/hardlinked_2 -> <TESTBASE>/test/peer/new/hardlinked_4 
Updated(mkhardlink) local:<TESTBASE>/test/peer/new/hardlinked_4 <TESTBASE>/test/peer/new/hardlinked_2 
Command: local: SIG <TESTBASE>/test/peer/new/hardlinked_5 user/group 1234 1000 dennis schafroth 33188 - 4 xxxxxxxx
Command: local: SIG <TESTBASE>/test/peer/new/hardlinked_4 user/group 1234 1000 dennis schafroth 33188 32a0617aab4c9fe725f1b5bc441291180ad25b73 4 xxxxxxxx
Command: local: MKHARDLINK <TESTBASE>/test/peer/new/hardlinked_5 <TESTBASE>/test/peer/new/hardlinked_4        
Running check for <TESTBASE>/test/peer/new/hardlinked_5 ...
Checking for modified files <TESTBASE>/test/peer/new/hardlinked_5 
Checking for deleted files <TESTBASE>/test/peer/new/hardlinked_5.
HARDLINK: <TESTBASE>/test/peer/new/hardlinked_4 -> <TESTBASE>/test/peer/new/hardlinked_5 
Updated(mkhardlink) local:<TESTBASE>/test/peer/new/hardlinked_5 <TESTBASE>/test/peer/new/hardlinked_4 
Command: local: SETTIME <TESTBASE>/test/peer/new xxxxxxxx        
Command: local: SETTIME <TESTBASE>/test/peer xxxxxxxx        
Command: local: BYE          
goto nofork.
Command: (null): DEBUG          
Command: local HELLO
HELLO from local. Response: OK
Command: local: SIG <TESTBASE>/test/peer/new user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxx
Command: local: MOD <TESTBASE>/test/peer/new - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxx
Running check for <TESTBASE>/test/peer/new ...
Checking for modified files <TESTBASE>/test/peer/new 
Checking for deleted files <TESTBASE>/test/peer/new.
Updated(mod) local:<TESTBASE>/test/peer/new  
IDENT (cmd_finished).
Command: local: SIG <TESTBASE>/test/peer/new/was_hardlink user/group 1234 1000 dennis schafroth 33188 - 4 xxxxxxxx
Command: local: CREATE <TESTBASE>/test/peer/new/was_hardlink - 1234 1000 dennis schafroth 33188 - 4 xxxxxxxx
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
