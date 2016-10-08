cmd x "File 2 directory (type change)" local
Running recursive check for /export/home/dennis/Projects/csync2/csync2/test/test/local ...
Checking recursive for modified files /export/home/dennis/Projects/csync2/csync2/test/test/local 
mark other operation: 'MOD_DIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local' '-'.
mark other operation: 'MOD_DIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local' '-'.
mark other: Old operation: MKDIR '/export/home/dennis/Projects/csync2/csync2/test/test/local' '(null)'
mark operation NEW -> MOD => NEW other:/export/home/dennis/Projects/csync2/csync2/test/test/local (not synced) .
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local rows affected: 1
mark other operation: 'MOD_DIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change' '-'.
mark other operation: 'MOD_DIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change' '-'.
mark other: Old operation: MOD_DIR '/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change' '(null)'
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local/type_change rows affected: 1
mark other operation: 'NEW' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change/new_file 'N' all' '-'.
mark other operation: 'NEW' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change/new_file 'N' all' '-'.
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local/type_change/new_file 'N' all rows affected: 1
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/local recursive.
Connecting to host peer (PLAIN) ...
Updating (NEW) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change/new_file 'N' all' ''
While syncing file: /export/home/dennis/Projects/csync2/csync2/test/test/local/type_change/new_file 'N' all
ERROR from peer: Not a directory (/export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change/new_file 'N' all) rc: -12 
Updating (MOD_DIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local' ''
?M: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local
Updating (MOD_DIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change' ''
?B: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local/type_change
Finished with 1 errors.
