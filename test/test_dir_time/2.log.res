cmd x "New directory" local peer test
Connecting to redis localhost:6379
Running recursive check for /export/home/dennis/Projects/csync2/csync2/test/test ...
Checking recursive for modified files /export/home/dennis/Projects/csync2/csync2/test/test 
mark other operation: 'MKDIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local' '-'.
mark other operation: 'MKDIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local' '-'.
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local rows matched: 0
mark other operation: 'MKDIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/usr' '-'.
mark other operation: 'MKDIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/usr' '-'.
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local/usr rows matched: 0
mark other operation: 'MKDIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local' '-'.
mark other operation: 'MKDIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local' '-'.
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local rows matched: 0
mark other operation: 'MKDIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin' '-'.
mark other operation: 'MKDIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin' '-'.
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin rows matched: 0
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test recursive.
Got dirty files from host peer
Connecting to host peer (PLAIN) ...
Locking /export/home/dennis/Projects/csync2/csync2/test/test/local
Updating (MKDIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local' ''
Unlocking file: /export/home/dennis/Projects/csync2/csync2/test/test/local
Locking /export/home/dennis/Projects/csync2/csync2/test/test/local/usr
Updating (MKDIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/usr' ''
Unlocking file: /export/home/dennis/Projects/csync2/csync2/test/test/local/usr
Locking /export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local
Updating (MKDIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local' ''
Unlocking file: /export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local
Locking /export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin
Updating (MKDIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin' ''
Unlocking file: /export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin
