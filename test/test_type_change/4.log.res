cmd x "Directory to file (type change)" local
Running recursive check for /export/home/dennis/Projects/csync2/csync2/test/test/local ...
Checking recursive for modified files /export/home/dennis/Projects/csync2/csync2/test/test/local 
mark other operation: 'MOD_DIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local' '-'.
mark other operation: 'MOD_DIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local' '-'.
mark other: Old operation: MKDIR '/export/home/dennis/Projects/csync2/csync2/test/test/local' '(null)'
mark operation NEW -> MOD => NEW other:/export/home/dennis/Projects/csync2/csync2/test/test/local (not synced) .
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local rows affected: 1
mark other operation: 'MOD' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change' '-'.
mark other operation: 'MOD' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change' '-'.
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local/type_change rows affected: 1
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/local recursive.
mark other operation: 'RM' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change/new_file 'N' all' '-'.
mark other operation: 'RM' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change/new_file 'N' all' '-'.
mark other: Old operation: NEW '/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change/new_file 'N' all' '(null)'
mark operation NEW -> RM other:/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change/new_file 'N' all deleted before syncing. Removing from dirty.
Connecting to host peer (PLAIN) ...
Updating (MOD_DIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local' ''
?M: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local
Updating (MOD) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change' ''
?B: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local/type_change
Deleting peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change/new_file 'N' all
peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change/new_file 'N' all is already up to date on peer.
WARN: directory called on non-directory /export/home/dennis/Projects/csync2/csync2/test/test/local/type_change.
Finished succesfully.
