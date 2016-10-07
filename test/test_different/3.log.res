cmd x "Both updated (peer dirty)" local
Running recursive check for /export/home/dennis/Projects/csync2/csync2/test/test ...
Checking recursive for modified files /export/home/dennis/Projects/csync2/csync2/test/test 
mark other operation: 'MOD_DIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local' '-'.
mark other operation: 'MOD_DIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local' '-'.
mark other: Old operation: MKDIR '/export/home/dennis/Projects/csync2/csync2/test/test/local' '(null)'
mark operation NEW -> MOD => NEW other:/export/home/dennis/Projects/csync2/csync2/test/test/local (not synced) .
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local rows affected: 1
mark other operation: 'NEW' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/different' '-'.
mark other operation: 'NEW' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/different' '-'.
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local/different rows affected: 1
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test recursive.
Connecting to host peer (PLAIN) ...
Updating (NEW) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/different' ''
?F: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local/different
While syncing file: /export/home/dennis/Projects/csync2/csync2/test/test/local/different
ERROR from peer: File is also marked dirty here! (/export/home/dennis/Projects/csync2/csync2/test/test/peer/different) rc: -11 
File stays in dirty state after autoresolve. Try again later...
Updating (MOD_DIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local' ''
Finished succesfully.
