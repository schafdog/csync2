cmd c "New file deleted (check)" local peer test
Running recursive check for /export/home/dennis/Projects/csync2/csync2/test/test ...
Checking recursive for modified files /export/home/dennis/Projects/csync2/csync2/test/test 
mark other operation: 'MOD_DIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin' '-'.
WARN: operation changed: MKDIR(1) => MKDIR(129)
mark operation NEW -> MOD => NEW peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin (not synced) .
mark other operation: 'MOD_DIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin' '-'.
mark operation NEW -> MOD => NEW other:/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin (not synced) .
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test recursive.
mark other operation: 'RM' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin/hej' '-'.
mark operation NEW -> RM peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin/hej deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin/hej' '-'.
mark operation NEW -> RM other:/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin/hej deleted before syncing. Removing from dirty.
