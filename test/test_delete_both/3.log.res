cmd x "2 Removed both" local
Running recursive check for /export/home/dennis/Projects/csync2/csync2/test/test ...
Checking recursive for modified files /export/home/dennis/Projects/csync2/csync2/test/test 
mark other operation: 'MOD_DIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local' '-'.
mark other operation: 'MOD_DIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local' '-'.
mark other: Old operation: MKDIR '/export/home/dennis/Projects/csync2/csync2/test/test/local' '(null)'
mark operation NEW -> MOD => NEW other:/export/home/dennis/Projects/csync2/csync2/test/test/local (not synced) .
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local rows affected: 1
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test recursive.
mark other operation: 'RM' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/file' '-'.
mark other operation: 'RM' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/file' '-'.
mark other: Old operation: NEW '/export/home/dennis/Projects/csync2/csync2/test/test/local/file' '(null)'
mark operation NEW -> RM other:/export/home/dennis/Projects/csync2/csync2/test/test/local/file deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/dir' '-'.
mark other operation: 'RM' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/dir' '-'.
mark other: Old operation: MKDIR '/export/home/dennis/Projects/csync2/csync2/test/test/local/dir' '(null)'
mark operation MKDIR -> RM other:/export/home/dennis/Projects/csync2/csync2/test/test/local/dir deleted before syncing. Removing from dirty.
Connecting to host peer (PLAIN) ...
Updating (MOD_DIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local' ''
Deleting peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/file
peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/file is already up to date on peer.
Deleting peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/dir
peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/dir is already up to date on peer.
Finished succesfully.
