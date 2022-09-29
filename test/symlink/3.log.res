cmd x "Bad link" local peer test
Found my alias local localhost 30860 
Binding to 30860 IPv0 
Running recursive check for /export/home/dennis/Projects/csync2/csync2/test/test ...
Checking recursive for modified files /export/home/dennis/Projects/csync2/csync2/test/test 
mark other operation: 'MOD_DIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local' '-'.
mark other operation: 'MOD_DIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local' '-'.
mark operation NEW -> MOD => NEW other:/export/home/dennis/Projects/csync2/csync2/test/test/local (not synced) .
WARN: stat failed. op: 2
mark other operation: 'RM?' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/bad.link' 'missing'.
WARN: stat failed. op: 2
mark other operation: 'RM?' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/bad.link' 'missing'.
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test recursive.
Got dirty files from host peer
Connecting to host peer (PLAIN) ...
Updating (MOD_DIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local' ''
?M: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local
Updating (LINK) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/bad.link' 'missing'
