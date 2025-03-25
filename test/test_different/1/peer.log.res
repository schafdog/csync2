Found my alias peer localhost 30861 
Binding to 30861 IPv0 
Command: (null): DEBUG          
Command: local HELLO
HELLO from local. Response: OK
Command: local: SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxx
Command: local: MKDIR /export/home/dennis/Projects/csync2/csync2/test/test/peer - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxx
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer.
Updated(mkdir) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer  
IDENT (cmd_finished).
Command: local: BYE          
goto nofork.
Command: (null): DEBUG          
Command: local HELLO
HELLO from local. Response: OK
Command: local: SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxx
Command: local: SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer/different user/group 1234 1000 dennis schafroth 33188 - 4 xxxxxxxx
Command: local: PATCH /export/home/dennis/Projects/csync2/csync2/test/test/peer/different - 1234 1000 dennis schafroth 33188 - 4 xxxxxxxx
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/different ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/different 
mark other operation: 'NEW' 'local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/different' '-'.
mark other operation: 'NEW' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/peer/different' '-'.
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/different.
File /export/home/dennis/Projects/csync2/csync2/test/test/peer/different is dirty here: NEW 2
File local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/different is dirty here. Continuing.
ERROR: File is also marked dirty here! (/export/home/dennis/Projects/csync2/csync2/test/test/peer/different)
Command: local: SETTIME /export/home/dennis/Projects/csync2/csync2/test/test/peer xxxxxxxx        
Command: local: BYE          
goto nofork.
Command: (null): DEBUG          
Command: local HELLO
HELLO from local. Response: OK
Command: local: SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer/different user/group 1234 1000 dennis schafroth 33188 - 4 xxxxxxxx
Command: local: PATCH /export/home/dennis/Projects/csync2/csync2/test/test/peer/different - 1234 1000 dennis schafroth 33188 - 4 xxxxxxxx
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/different ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/different 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/different.
File /export/home/dennis/Projects/csync2/csync2/test/test/peer/different is dirty here: NEW 2
File local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/different is dirty here. Continuing.
ERROR: File is also marked dirty here! (/export/home/dennis/Projects/csync2/csync2/test/test/peer/different)
Command: local: SETTIME /export/home/dennis/Projects/csync2/csync2/test/test/peer xxxxxxxx        
Command: local: BYE          
goto nofork.
Command: (null): DEBUG          
Command: local HELLO
HELLO from local. Response: OK
Command: local: FLUSH /export/home/dennis/Projects/csync2/csync2/test/test/peer/different         
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/different ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/different 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/different.
Command: local: SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer/different user/group 1234 1000 dennis schafroth 33188 - 4 xxxxxxxx
Command: local: PATCH /export/home/dennis/Projects/csync2/csync2/test/test/peer/different - 1234 1000 dennis schafroth 33188 - 4 xxxxxxxx
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/different ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/different 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/different.
Changing owner of /tmp/csync2/export/home to user 0 and group 0, rc= -1 
Updated(patch) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/different  
IDENT (cmd_finished).
Command: local: SETTIME /export/home/dennis/Projects/csync2/csync2/test/test/peer xxxxxxxx        
Command: local: BYE          
goto nofork.
Command: (null): DEBUG          
Command: local HELLO
HELLO from local. Response: OK
Command: local: SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxx
Command: local: MOD /export/home/dennis/Projects/csync2/csync2/test/test/peer - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxx
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer.
Updated(mod) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer  
IDENT (cmd_finished).
Command: local: SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer/tmp user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxx
Command: local: MOD /export/home/dennis/Projects/csync2/csync2/test/test/peer/tmp - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxx
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/tmp ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/tmp 
mark other operation: 'MKDIR' 'local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/tmp' '-'.
mark other operation: 'MKDIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/peer/tmp' '-'.
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/tmp.
Ignoring dirty directory /export/home/dennis/Projects/csync2/csync2/test/test/peer/tmp
Updated(mod) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/tmp  
IDENT (cmd_finished).
Command: local: SETTIME /export/home/dennis/Projects/csync2/csync2/test/test/peer xxxxxxxx        
Command: local: BYE          
goto nofork.
Command: (null): DEBUG          
Command: local HELLO
HELLO from local. Response: OK
Command: local: SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer user/group        
Command: local: BYE          
goto nofork.
