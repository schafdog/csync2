cmd x "New Maildir/new/1434.M21,S=6631,W=6764 with transit in tmp " local peer test
Connecting to redis localhost:6379
Running recursive check for /export/home/dennis/Projects/csync2/csync2/test/test ...
Checking recursive for modified files /export/home/dennis/Projects/csync2/csync2/test/test 
mark other operation: 'MOD_DIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp' '-'.
mark other operation: 'MOD_DIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp' '-'.
mark other: MOD_DIR(129) Old operation: MKDIR(1) '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp' '(null)'
mark operation NEW -> MOD => NEW other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp (not synced) .
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp rows matched: 1
mark other operation: 'MOD_DIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new' '-'.
mark other operation: 'MOD_DIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new' '-'.
mark other: MOD_DIR(129) Old operation: MKDIR(1) '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new' '(null)'
mark operation NEW -> MOD => NEW other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new (not synced) .
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new rows matched: 1
mark other operation: 'NEW' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/1434.M21,S=6631,W=6764' '-'.
mark other operation: 'NEW' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/1434.M21,S=6631,W=6764' '-'.
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/1434.M21,S=6631,W=6764 rows matched: 1
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test recursive.
Got dirty files from host peer
Connecting to host peer (PLAIN) ...
Locking /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new
Updating (MOD_DIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new' ''
?M: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new
Unlocking file: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new
Locking /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp
Updating (MOD_DIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp' ''
?M: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp
Unlocking file: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp
Locking /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/1434.M21,S=6631,W=6764
Updating (NEW) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/1434.M21,S=6631,W=6764' ''
Unlocking file: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/1434.M21,S=6631,W=6764
