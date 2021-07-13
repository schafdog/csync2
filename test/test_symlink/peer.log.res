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
rm: Checking /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all.link 41471
Changing owner of /tmp/csync2/export to user 0 and group 0, rc= -1 
Changing owner of /tmp/csync2/export/home to user 0 and group 0, rc= -1 
Removing /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all.link from file db.
rm: Checking /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all 33188
Changing owner of /tmp/csync2/export to user 0 and group 0, rc= -1 
Changing owner of /tmp/csync2/export/home to user 0 and group 0, rc= -1 
Removing /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all from file db.
rm: Checking /export/home/dennis/Projects/csync2/csync2/test/test/peer/bad.link 41471
Removing /export/home/dennis/Projects/csync2/csync2/test/test/peer/bad.link from file db.
rm: Checking /export/home/dennis/Projects/csync2/csync2/test/test/peer 16877
rmdir /export/home/dennis/Projects/csync2/csync2/test/test/peer 0
Calling csync_rmdir_recursive local:/export/home/dennis/Projects/csync2/csync2/test/test/peer. Errors 0
Removing  /export/home/dennis/Projects/csync2/csync2/test/test/peer/* ..
No such file or directory in scandir: /export/home/dennis/Projects/csync2/csync2/test/test/peer (/export/home/dennis/Projects/csync2/csync2/test/test/peer)
Removing directory /export/home/dennis/Projects/csync2/csync2/test/test/peer -1
Called csync_rmdir_recursive local:/export/home/dennis/Projects/csync2/csync2/test/test/peer. RC: 0 11
Deleted recursive from clean directory (/export/home/dennis/Projects/csync2/csync2/test/test/peer): 3 0 
Updated(del) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer  
goto nofork.
