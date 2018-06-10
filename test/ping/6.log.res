cmd x "9 clean (ping)" local
Running recursive check for /export/home/dennis/Projects/csync2/csync2/test/test ...
Checking recursive for modified files /export/home/dennis/Projects/csync2/csync2/test/test 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test recursive.
mark other operation: 'RM' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/ping' '-'.
mark other operation: 'RM' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/ping' '-'.
mark other: RM(64) Old operation: MKDIR(1) '/export/home/dennis/Projects/csync2/csync2/test/test/local/ping' '(null)'
mark operation MKDIR -> RM other:/export/home/dennis/Projects/csync2/csync2/test/test/local/ping deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local' '-'.
mark other operation: 'RM' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local' '-'.
mark other: RM(64) Old operation: MKDIR(1) '/export/home/dennis/Projects/csync2/csync2/test/test/local' '(null)'
mark operation MKDIR -> RM other:/export/home/dennis/Projects/csync2/csync2/test/test/local deleted before syncing. Removing from dirty.
Connecting to host peer (PLAIN) ...
Deleting peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/ping
While syncing file: /export/home/dennis/Projects/csync2/csync2/test/test/local/ping
ERROR from peer: Success (/export/home/dennis/Projects/csync2/csync2/test/test/peer/ping) rc: -12 
Deleting peer:/export/home/dennis/Projects/csync2/csync2/test/test/local
Finished with 1 errors.
