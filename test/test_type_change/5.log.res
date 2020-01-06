cmd x "5 File to directory (type change)" local peer test/local
Connecting to redis localhost:6379
Running recursive check for /export/home/dennis/Projects/csync2/csync2/test/test/local ...
Checking recursive for modified files /export/home/dennis/Projects/csync2/csync2/test/test/local 
mark other operation: 'MOD_DIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local' '-'.
mark other operation: 'MOD_DIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local' '-'.
mark operation NEW -> MOD => NEW other:/export/home/dennis/Projects/csync2/csync2/test/test/local (not synced) .
File /export/home/dennis/Projects/csync2/csync2/test/test/local/type_change has changed mode 32768 => 16384 
mark other operation: 'MOD_DIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change' '-'.
mark other operation: 'MOD_DIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change' '-'.
mark operation NEW -> MOD => NEW other:/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change (not synced) .
mark other operation: 'NEW' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change/new_file 'N' all' '-'.
mark other operation: 'NEW' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change/new_file 'N' all' '-'.
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/local recursive.
Got dirty files from host peer
Connecting to host peer (PLAIN) ...
Locking '/export/home/dennis/Projects/csync2/csync2/test/test/local'
Updating (MOD_DIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local' ''
?M: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local
Deleting key '/export/home/dennis/Projects/csync2/csync2/test/test/local'
Locking '/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change'
Updating (MOD_DIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change' ''
?B: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local/type_change
Deleting key '/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change'
Locking '/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change/new_file 'N' all'
Updating (NEW) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change/new_file 'N' all' ''
Deleting key '/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change/new_file 'N' all'
