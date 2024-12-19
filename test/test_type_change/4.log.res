cmd x "4 Directory to file (type change)" local peer test/local
Running recursive check for /export/home/dennis/Projects/csync2/csync2/test/test/local ...
Checking recursive for modified files /export/home/dennis/Projects/csync2/csync2/test/test/local 
mark other operation: 'MOD_DIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local' '-'.
mark other operation: 'MOD_DIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local' '-'.
mark operation NEW -> MOD => NEW other:/export/home/dennis/Projects/csync2/csync2/test/test/local (not synced) .
File /export/home/dennis/Projects/csync2/csync2/test/test/local/type_change has changed mode 16384 => 32768 
mark other operation: 'MOD' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change' '-'.
mark other operation: 'MOD' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change' '-'.
mark operation NEW -> MOD => NEW other:/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change (not synced) .
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/local recursive.
mark other operation: 'RM' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change/new_file 'N' all' '-'.
mark other operation: 'RM' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change/new_file 'N' all' '-'.
mark operation NEW -> RM other:/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change/new_file 'N' all deleted before syncing. Removing from dirty.
Got dirty files from host peer
Connecting to host peer (PLAIN) ...
Updating (MOD_DIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local' ''
Got octet-stream 0
?M: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local
Updating (MOD) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change' ''
Got octet-stream 0
?B: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local/type_change
Got octet-stream 12
Receiving 12 bytes (octet-stream)..
Sending octet-stream of 15 bytes
Deleting peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change/new_file 'N' all
peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change/new_file 'N' all is already up to date on peer.
