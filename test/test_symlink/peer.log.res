Found my alias peer localhost 30861 
Binding to 30861 IPv0 
Command: HELLO local
HELLO from local. Response: OK
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer.
Updated(mkdir) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer  
IDENT (cmd_finished).
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all.
Updated(patch) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all  
IDENT (cmd_finished).
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all.link ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all.link 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all.link.
Updated(mklink) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all.link new_file 'N' all 
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all.link ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all.link 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all.link.
Updated(setown) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all.link  
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all.link ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all.link 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all.link.
goto nofork.
Command: HELLO local
HELLO from local. Response: OK
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer.
Updated(mod) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer  
IDENT (cmd_finished).
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/bad.link ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/bad.link 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/bad.link.
Updated(mklink) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/bad.link missing 
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/bad.link ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/bad.link 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/bad.link.
Updated(setown) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/bad.link  
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/bad.link ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/bad.link 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/bad.link.
daemon_setmod: Ignoring fail setmod on missing file: /export/home/dennis/Projects/csync2/csync2/test/test/peer/bad.link. Symlink?
goto nofork.
Command: HELLO local
HELLO from local. Response: OK
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer.
Deleting recursive from clean directory (/export/home/dennis/Projects/csync2/csync2/test/test/peer): 3 
Calling csync_rmdir_recursive local:/export/home/dennis/Projects/csync2/csync2/test/test/peer. Errors 0
Removing  /export/home/dennis/Projects/csync2/csync2/test/test/peer/* ..
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all.link ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all.link 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all.link.
Removing file /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all.link
Changing owner of /tmp/csync2/export to user 0 and group 0, rc= -1 
Changing owner of /tmp/csync2/export/home to user 0 and group 0, rc= -1 
Removing /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all.link from file db.
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all 
mark other operation: 'MOD' 'local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all' '-'.
mark other operation: 'MOD' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all' '-'.
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all.
File /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all is dirty here: NEW 130
File is dirty /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/bad.link ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/bad.link 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/bad.link.
Removing file /export/home/dennis/Projects/csync2/csync2/test/test/peer/bad.link
Removing /export/home/dennis/Projects/csync2/csync2/test/test/peer/bad.link from file db.
Removing directory /export/home/dennis/Projects/csync2/csync2/test/test/peer -1
Called csync_rmdir_recursive local:/export/home/dennis/Projects/csync2/csync2/test/test/peer. RC: 0 11
Deleted recursive from clean directory (/export/home/dennis/Projects/csync2/csync2/test/test/peer): 3 0 
Updated(del) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer  
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all 
mark other operation: 'NEW' 'local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all' '-'.
WARN: operation changed: NEW(2) => NEW(130)
mark other operation: 'NEW' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all' '-'.
WARN: operation changed: NEW(2) => NEW(130)
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all.
File /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all is dirty here: NEW 2
ERROR: File is also marked dirty here! (/export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all)
goto nofork.
