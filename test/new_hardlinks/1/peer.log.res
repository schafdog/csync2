Found my alias peer localhost 30861 
Binding to 30861 IPv0 
Command: (null): DEBUG          
Command: local HELLO
HELLO from local. Response: OK
Command: local: SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer user/group 1234 1000 dennis schafroth 16877 - 4096 1742889449
Command: local: MKDIR /export/home/dennis/Projects/csync2/csync2/test/test/peer - 1234 1000 dennis schafroth 16877 - 4096 1742889449
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer.
Updated(mkdir) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer  
IDENT (cmd_finished).
Command: local: SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer/new user/group 1234 1000 dennis schafroth 16877 - 4096 1742889449
Command: local: MKDIR /export/home/dennis/Projects/csync2/csync2/test/test/peer/new - 1234 1000 dennis schafroth 16877 - 4096 1742889449
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/new ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/new 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/new.
Updated(mkdir) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/new  
IDENT (cmd_finished).
Command: local: SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/new_file user/group 1234 1000 dennis schafroth 33188 - 4 1742889449
Command: local: CREATE /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/new_file - 1234 1000 dennis schafroth 33188 - 4 1742889449
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/new_file ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/new_file 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/new_file.
daemon CREATE /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/new_file 1 1742889450
Updated(create) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/new/new_file  
IDENT (cmd_finished).
Command: local: SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/hardlinked user/group 1234 1000 dennis schafroth 33188 - 4 1742889449
Command: local: SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/new_file user/group 1234 1000 dennis schafroth 33188 - 4 1742889449
Command: local: MKHARDLINK /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/new_file /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/hardlinked        
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/new_file ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/new_file 
Skipping /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/new_file. Locked by daemon at 1742889450
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/new_file.
HARDLINK: /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/new_file -> /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/hardlinked 
Updated(mkhardlink) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/new/new_file /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/hardlinked 
Command: local: SETTIME /export/home/dennis/Projects/csync2/csync2/test/test/peer/new 1742889449        
Command: local: SETTIME /export/home/dennis/Projects/csync2/csync2/test/test/peer 1742889449        
Command: local: BYE          
goto nofork.
Command: (null): DEBUG          
Command: local HELLO
HELLO from local. Response: OK
Command: local: SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer/new user/group 1234 1000 dennis schafroth 16877 - 4096 1742889451
Command: local: MOD /export/home/dennis/Projects/csync2/csync2/test/test/peer/new - 1234 1000 dennis schafroth 16877 - 4096 1742889451
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/new ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/new 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/new.
Updated(mod) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/new  
IDENT (cmd_finished).
Command: local: SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/hardlinked_2 user/group 1234 1000 dennis schafroth 33188 - 4 1742889449
Command: local: SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/new_file user/group 1234 1000 dennis schafroth 33188 - 4 1742889449
Command: local: MKHARDLINK /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/new_file /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/hardlinked_2        
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/new_file ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/new_file 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/new_file.
HARDLINK: /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/new_file -> /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/hardlinked_2 
Updated(mkhardlink) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/new/new_file /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/hardlinked_2 
Command: local: SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/hardlinked_3 user/group 1234 1000 dennis schafroth 33188 - 4 1742889449
Command: local: SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/new_file user/group 1234 1000 dennis schafroth 33188 - 4 1742889449
Command: local: MKHARDLINK /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/new_file /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/hardlinked_3        
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/new_file ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/new_file 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/new_file.
HARDLINK: /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/new_file -> /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/hardlinked_3 
Updated(mkhardlink) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/new/new_file /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/hardlinked_3 
Command: local: SETTIME /export/home/dennis/Projects/csync2/csync2/test/test/peer/new 1742889451        
Command: local: SETTIME /export/home/dennis/Projects/csync2/csync2/test/test/peer 1742889449        
Command: local: BYE          
goto nofork.
Command: (null): DEBUG          
Command: local HELLO
HELLO from local. Response: OK
Command: local: SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer user/group 1234 1000 dennis schafroth 16877 - 4096 1742889449
Command: local: SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer/new user/group 1234 1000 dennis schafroth 16877 - 4096 1742889452
Command: local: SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/hardlinked user/group 1234 1000 dennis schafroth 33188 - 4 1742889449
Command: local: SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/hardlinked_2 user/group 1234 1000 dennis schafroth 33188 - 4 1742889449
Command: local: SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/hardlinked_3 user/group 1234 1000 dennis schafroth 33188 - 4 1742889449
Command: local: SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/hardlinked_4 user/group 1234 1000 dennis schafroth 33188 - 4 1742889449
Command: local: SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/hardlinked_5 user/group 1234 1000 dennis schafroth 33188 - 4 1742889449
Command: local: SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/new_file user/group 1234 1000 dennis schafroth 33188 - 4 1742889449
Command: local: BYE          
goto nofork.
Command: (null): DEBUG          
Command: local HELLO
HELLO from local. Response: OK
Command: local: SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer/new user/group 1234 1000 dennis schafroth 16877 - 4096 1742889452
Command: local: MOD /export/home/dennis/Projects/csync2/csync2/test/test/peer/new - 1234 1000 dennis schafroth 16877 - 4096 1742889452
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/new ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/new 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/new.
Updated(mod) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/new  
IDENT (cmd_finished).
Command: local: SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/hardlinked_4 user/group 1234 1000 dennis schafroth 33188 - 4 1742889449
Command: local: SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/hardlinked_5 user/group 1234 1000 dennis schafroth 33188 32a0617aab4c9fe725f1b5bc441291180ad25b73 4 1742889449
Command: local: SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/hardlinked_2 user/group 1234 1000 dennis schafroth 33188 32a0617aab4c9fe725f1b5bc441291180ad25b73 4 1742889449
Command: local: MKHARDLINK /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/hardlinked_2 /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/hardlinked_4        
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/hardlinked_2 ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/hardlinked_2 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/hardlinked_2.
HARDLINK: /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/hardlinked_2 -> /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/hardlinked_4 
Updated(mkhardlink) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/new/hardlinked_2 /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/hardlinked_4 
Command: local: SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/hardlinked_2 user/group 1234 1000 dennis schafroth 33188 32a0617aab4c9fe725f1b5bc441291180ad25b73 4 1742889449
Command: local: MKHARDLINK /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/hardlinked_2 /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/hardlinked_4        
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/hardlinked_2 ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/hardlinked_2 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/hardlinked_2.
Updated(mkhardlink) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/new/hardlinked_2 /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/hardlinked_4 
Command: local: SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/hardlinked_5 user/group 1234 1000 dennis schafroth 33188 - 4 1742889449
Command: local: SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/hardlinked_4 user/group 1234 1000 dennis schafroth 33188 32a0617aab4c9fe725f1b5bc441291180ad25b73 4 1742889449
Command: local: MKHARDLINK /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/hardlinked_4 /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/hardlinked_5        
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/hardlinked_4 ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/hardlinked_4 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/hardlinked_4.
HARDLINK: /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/hardlinked_4 -> /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/hardlinked_5 
Updated(mkhardlink) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/new/hardlinked_4 /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/hardlinked_5 
Command: local: SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/hardlinked_4 user/group 1234 1000 dennis schafroth 33188 32a0617aab4c9fe725f1b5bc441291180ad25b73 4 1742889449
Command: local: MKHARDLINK /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/hardlinked_4 /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/hardlinked_5        
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/hardlinked_4 ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/hardlinked_4 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/hardlinked_4.
Updated(mkhardlink) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/new/hardlinked_4 /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/hardlinked_5 
Command: local: SETTIME /export/home/dennis/Projects/csync2/csync2/test/test/peer/new 1742889452        
Command: local: SETTIME /export/home/dennis/Projects/csync2/csync2/test/test/peer 1742889449        
Command: local: BYE          
goto nofork.
Command: (null): DEBUG          
Command: local HELLO
HELLO from local. Response: OK
Command: local: SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer/new user/group 1234 1000 dennis schafroth 16877 - 4096 1742889455
Command: local: MOD /export/home/dennis/Projects/csync2/csync2/test/test/peer/new - 1234 1000 dennis schafroth 16877 - 4096 1742889455
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/new ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/new 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/new.
Updated(mod) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/new  
IDENT (cmd_finished).
Command: local: SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/was_hardlink user/group 1234 1000 dennis schafroth 33188 - 4 1742889454
Command: local: CREATE /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/was_hardlink - 1234 1000 dennis schafroth 33188 - 4 1742889454
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/was_hardlink ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/was_hardlink 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/was_hardlink.
daemon CREATE /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/was_hardlink 1 1742889455
Updated(create) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/new/was_hardlink  
IDENT (cmd_finished).
Command: local: SETTIME /export/home/dennis/Projects/csync2/csync2/test/test/peer/new 1742889455        
Command: local: SETTIME /export/home/dennis/Projects/csync2/csync2/test/test/peer 1742889449        
Command: local: BYE          
goto nofork.
