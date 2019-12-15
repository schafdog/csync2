cmd x "New local/recursive/new_file 'N' all" local peer test
Connecting to redis localhost:6379
Running recursive check for /export/home/dennis/Projects/csync2/csync2/test/test ...
Checking recursive for modified files /export/home/dennis/Projects/csync2/csync2/test/test 
mark other operation: 'MKDIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local' '-'.
mark other operation: 'MKDIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local' '-'.
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local rows matched: 1
mark other operation: 'MKDIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive' '-'.
mark other operation: 'MKDIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive' '-'.
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local/recursive rows matched: 1
mark other operation: 'MKDIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1' '-'.
mark other operation: 'MKDIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1' '-'.
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1 rows matched: 1
mark other operation: 'MKDIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2' '-'.
mark other operation: 'MKDIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2' '-'.
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2 rows matched: 1
mark other operation: 'MKDIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3' '-'.
mark other operation: 'MKDIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3' '-'.
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3 rows matched: 1
mark other operation: 'MKDIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3/4' '-'.
mark other operation: 'MKDIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3/4' '-'.
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3/4 rows matched: 1
mark other operation: 'MKDIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3/4/5' '-'.
mark other operation: 'MKDIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3/4/5' '-'.
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3/4/5 rows matched: 1
mark other operation: 'NEW' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3/4/5/file.c' '-'.
mark other operation: 'NEW' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3/4/5/file.c' '-'.
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3/4/5/file.c rows matched: 1
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test recursive.
Got dirty files from host peer
Connecting to host peer (PLAIN) ...
Locking /export/home/dennis/Projects/csync2/csync2/test/test/local
Updating (MKDIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local' ''
Unlocking file: /export/home/dennis/Projects/csync2/csync2/test/test/local
Locking /export/home/dennis/Projects/csync2/csync2/test/test/local/recursive
Updating (MKDIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive' ''
Unlocking file: /export/home/dennis/Projects/csync2/csync2/test/test/local/recursive
Locking /export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1
Updating (MKDIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1' ''
Unlocking file: /export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1
Locking /export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2
Updating (MKDIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2' ''
Unlocking file: /export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2
Locking /export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3
Updating (MKDIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3' ''
Unlocking file: /export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3
Locking /export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3/4
Updating (MKDIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3/4' ''
Unlocking file: /export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3/4
Locking /export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3/4/5
Updating (MKDIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3/4/5' ''
Unlocking file: /export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3/4/5
Locking /export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3/4/5/file.c
Updating (NEW) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3/4/5/file.c' ''
Unlocking file: /export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3/4/5/file.c
