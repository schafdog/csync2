cmd c "9 hardlinked when checked" local peer test
Connecting to redis localhost:6379
Running recursive check for /export/home/dennis/Projects/csync2/csync2/test/test ...
Checking recursive for modified files /export/home/dennis/Projects/csync2/csync2/test/test 
mark other operation: 'MOD_DIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new' '-'.
mark other operation: 'MOD_DIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/new' '-'.
mark operation NEW -> MOD => NEW other:/export/home/dennis/Projects/csync2/csync2/test/test/local/new (not synced) .
mark other operation: 'NEW' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/was_hardlink' '-'.
mark other operation: 'NEW' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/was_hardlink' '-'.
Found HARDLINK /export/home/dennis/Projects/csync2/csync2/test/test/local/new/was_hardlink -> /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_6 
mark other operation: 'HARDLINK' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_6' '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/was_hardlink'.
mark other operation: 'HARDLINK' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_6' '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/was_hardlink'.
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test recursive.
