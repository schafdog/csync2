cmd x "Both updated with new dir (both dirty)" local peer test
Connecting to redis localhost:6379
Running recursive check for /export/home/dennis/Projects/csync2/csync2/test/test ...
Checking recursive for modified files /export/home/dennis/Projects/csync2/csync2/test/test 
mark other operation: 'MOD_DIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local' '-'.
mark other operation: 'MOD_DIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local' '-'.
mark operation NEW -> MOD => NEW other:/export/home/dennis/Projects/csync2/csync2/test/test/local (not synced) .
mark other operation: 'MKDIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/tmp' '-'.
mark other operation: 'MKDIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/tmp' '-'.
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test recursive.
Got dirty files from host peer
Connecting to host peer (PLAIN) ...
Locking /export/home/dennis/Projects/csync2/csync2/test/test/local
Updating (MOD_DIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local' ''
?M: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local
Unlocking file: /export/home/dennis/Projects/csync2/csync2/test/test/local
Locking /export/home/dennis/Projects/csync2/csync2/test/test/local/tmp
Updating (MKDIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/tmp' ''
?M: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local/tmp
Unlocking file: /export/home/dennis/Projects/csync2/csync2/test/test/local/tmp
