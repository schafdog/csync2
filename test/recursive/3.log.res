cmd x "rm directory with ignore files" local
Running recursive check for /export/home/dennis/Projects/csync2/csync2/test/test ...
Checking recursive for modified files /export/home/dennis/Projects/csync2/csync2/test/test 
mark other operation: 'MOD_DIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local' '-'.
mark other operation: 'MOD_DIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local' '-'.
mark other: Old operation: MKDIR '/export/home/dennis/Projects/csync2/csync2/test/test/local' '(null)'
mark operation NEW -> MOD => NEW other:/export/home/dennis/Projects/csync2/csync2/test/test/local (not synced) .
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local rows affected: 1
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test recursive.
mark other operation: 'RM' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change/1/2/3/4/5/file.c' '-'.
mark other operation: 'RM' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change/1/2/3/4/5/file.c' '-'.
mark other: Old operation: NEW '/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change/1/2/3/4/5/file.c' '(null)'
mark operation NEW -> RM other:/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change/1/2/3/4/5/file.c deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change/1/2/3/4/5' '-'.
mark other operation: 'RM' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change/1/2/3/4/5' '-'.
mark other: Old operation: MKDIR '/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change/1/2/3/4/5' '(null)'
mark operation NEW -> RM other:/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change/1/2/3/4/5 deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change/1/2/3/4' '-'.
mark other operation: 'RM' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change/1/2/3/4' '-'.
mark other: Old operation: MKDIR '/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change/1/2/3/4' '(null)'
mark operation NEW -> RM other:/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change/1/2/3/4 deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change/1/2/3' '-'.
mark other operation: 'RM' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change/1/2/3' '-'.
mark other: Old operation: MKDIR '/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change/1/2/3' '(null)'
mark operation NEW -> RM other:/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change/1/2/3 deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change/1/2' '-'.
mark other operation: 'RM' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change/1/2' '-'.
mark other: Old operation: MKDIR '/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change/1/2' '(null)'
mark operation NEW -> RM other:/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change/1/2 deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change/1' '-'.
mark other operation: 'RM' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change/1' '-'.
mark other: Old operation: MKDIR '/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change/1' '(null)'
mark operation NEW -> RM other:/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change/1 deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change' '-'.
mark other operation: 'RM' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change' '-'.
mark other: Old operation: MKDIR '/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change' '(null)'
mark operation NEW -> RM other:/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change deleted before syncing. Removing from dirty.
Connecting to host peer (PLAIN) ...
Updating (MOD_DIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local' ''
?M: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local
Deleting peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change/1/2/3/4/5/file.c
Deleting peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change/1/2/3/4/5
Deleting peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change/1/2/3/4
While syncing file: /export/home/dennis/Projects/csync2/csync2/test/test/local/type_change/1/2/3/4
ERROR from peer: No such file or directory (/export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change/1/2/3/4) rc: -12 
Deleting peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change/1/2/3
While syncing file: /export/home/dennis/Projects/csync2/csync2/test/test/local/type_change/1/2/3
ERROR from peer: No such file or directory (/export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change/1/2/3) rc: -12 
Deleting peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change/1/2
While syncing file: /export/home/dennis/Projects/csync2/csync2/test/test/local/type_change/1/2
ERROR from peer: No such file or directory (/export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change/1/2) rc: -12 
Deleting peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change/1
While syncing file: /export/home/dennis/Projects/csync2/csync2/test/test/local/type_change/1
ERROR from peer: No such file or directory (/export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change/1) rc: -12 
Deleting peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change
While syncing file: /export/home/dennis/Projects/csync2/csync2/test/test/local/type_change
ERROR from peer: No such file or directory (/export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change) rc: -12 
Finished with 5 errors.
