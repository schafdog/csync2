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
Command: local: SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer/ÆØÅ Café.utf8 user/group 1234 1000 dennis schafroth 33188 - 4 xxxxxxxx
Command: local: CREATE /export/home/dennis/Projects/csync2/csync2/test/test/peer/ÆØÅ Café.utf8 - 1234 1000 dennis schafroth 33188 - 4 xxxxxxxx
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/ÆØÅ Café.utf8 ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/ÆØÅ Café.utf8 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/ÆØÅ Café.utf8.
daemon CREATE /export/home/dennis/Projects/csync2/csync2/test/test/peer/ÆØÅ Café.utf8 1 0
Updated(create) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/ÆØÅ Café.utf8  
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
Command: local: SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer/ÆØÅ Café.utf8 user/group        
Command: local: DEL /export/home/dennis/Projects/csync2/csync2/test/test/peer/ÆØÅ Café.utf8         
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/ÆØÅ Café.utf8 ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/ÆØÅ Café.utf8 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/ÆØÅ Café.utf8.
Changing owner of /tmp/csync2/export/home to user 0 and group 0, rc= -1 
Updated(del) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/ÆØÅ Café.utf8  
Command: local: BYE          
goto nofork.
