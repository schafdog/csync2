cmd c "rm newdir (removed from dirty)" local peer test
Running recursive check for /export/home/dennis/Projects/csync2/csync2/test/test ...
Checking recursive for modified files /export/home/dennis/Projects/csync2/csync2/test/test 
mark other operation: 'MOD_DIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local' '-'.
mark operation NEW -> MOD => NEW peer:/export/home/dennis/Projects/csync2/csync2/test/test/local (not synced) .
mark other operation: 'MOD_DIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local' '-'.
mark operation NEW -> MOD => NEW other:/export/home/dennis/Projects/csync2/csync2/test/test/local (not synced) .
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test recursive.
mark other operation: 'RM' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/newdir' '-'.
mark operation MKDIR -> RM peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/newdir deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/newdir' '-'.
mark operation MKDIR -> RM other:/export/home/dennis/Projects/csync2/csync2/test/test/local/newdir deleted before syncing. Removing from dirty.
