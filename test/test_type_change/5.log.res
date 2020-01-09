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
Redis reply: SET '/export/home/dennis/Projects/csync2/csync2/test/test/local' '1578595136' NX EX 60 -> OK
Updating (MOD_DIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local' ''
?M: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local
Deleting key '/export/home/dennis/Projects/csync2/csync2/test/test/local'
Redis Reply: DEL '/export/home/dennis/Projects/csync2/csync2/test/test/local' -> 1
Locking '/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change'
Redis reply: SET '/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change' '1578595136' NX EX 60 -> OK
Updating (MOD_DIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change' ''
?B: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local/type_change
Deleting key '/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change'
Redis Reply: DEL '/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change' -> 1
Locking '/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change/new_file 'N' all'
Redis reply: SET '/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change/new_file 'N' all' '1578595136' NX EX 60 -> OK
Updating (NEW) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change/new_file 'N' all' ''
Deleting key '/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change/new_file 'N' all'
Redis Reply: DEL '/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change/new_file 'N' all' -> 1
