Found my alias peer localhost 30861 
Command: (null): DEBUG          
DEBUG daemon: check update rc=0 '(null)' '' '-' 
Command: local HELLO
HELLO from local. Response: OK
Command: local: SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxx
Command: local: MKDIR /export/home/dennis/Projects/csync2/csync2/test/test/peer - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxx
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer.
DEBUG daemon: check update rc=1 'local' '/export/home/dennis/Projects/csync2/csync2/test/test/peer' '-' 
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer
daemon_file_update DONE: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer
Updated(mkdir) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer  
IDENT (cmd_finished).
Command: local: SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer/ÆØÅ Café.utf8 user/group 1234 1000 dennis schafroth 33188 - 4 xxxxxxxx
Command: local: CREATE /export/home/dennis/Projects/csync2/csync2/test/test/peer/ÆØÅ Café.utf8 - 1234 1000 dennis schafroth 33188 - 4 xxxxxxxx
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/ÆØÅ Café.utf8 ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/ÆØÅ Café.utf8 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/ÆØÅ Café.utf8.
daemon CREATE /export/home/dennis/Projects/csync2/csync2/test/test/peer/ÆØÅ Café.utf8 1 0
DEBUG daemon: check update rc=1 'local' '/export/home/dennis/Projects/csync2/csync2/test/test/peer/ÆØÅ Café.utf8' '-' 
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/ÆØÅ Café.utf8
daemon_file_update DONE: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/ÆØÅ Café.utf8
Updated(create) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/ÆØÅ Café.utf8  
IDENT (cmd_finished).
Command: local: SETTIME /export/home/dennis/Projects/csync2/csync2/test/test/peer xxxxxxxx        
DEBUG daemon: check update rc=0 'local' '/export/home/dennis/Projects/csync2/csync2/test/test/peer' '-' 
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer
daemon_file_update DONE: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer
Command: local: BYE          
goto nofork.
Command: (null): DEBUG          
DEBUG daemon: check update rc=0 '(null)' '' '-' 
Command: local HELLO
HELLO from local. Response: OK
Command: local: STAT /export/home/dennis/Projects/csync2/csync2/test/test/peer/ÆØÅ Café.utf8 user/group        
DEBUG daemon: check update rc=0 'local' '/export/home/dennis/Projects/csync2/csync2/test/test/peer/ÆØÅ Café.utf8' '-' 
Command: local: DEL /export/home/dennis/Projects/csync2/csync2/test/test/peer/ÆØÅ Café.utf8         
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/ÆØÅ Café.utf8 ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/ÆØÅ Café.utf8 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/ÆØÅ Café.utf8.
Changing owner of /tmp/csync2/export/home to user 0 and group 0, rc= -1 
DEBUG daemon: check update rc=0 'local' '/export/home/dennis/Projects/csync2/csync2/test/test/peer/ÆØÅ Café.utf8' '-' 
Updated(del) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/ÆØÅ Café.utf8  
Command: local: BYE          
goto nofork.
