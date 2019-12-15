cmd x "Sync with missing directories" local peer test
Connecting to redis localhost:6379
Running recursive check for /export/home/dennis/Projects/csync2/csync2/test/test ...
Checking recursive for modified files /export/home/dennis/Projects/csync2/csync2/test/test 
mark other operation: 'MOD_DIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3/4/5' '-'.
mark other operation: 'MOD_DIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3/4/5' '-'.
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3/4/5 rows matched: 1
mark other operation: 'NEW' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3/4/5/file.c' '-'.
mark other operation: 'NEW' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3/4/5/file.c' '-'.
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3/4/5/file.c rows matched: 1
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test recursive.
Got dirty files from host peer
Connecting to host peer (PLAIN) ...
Locking /export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3/4/5
Updating (MOD_DIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3/4/5' ''
PATH MISSING: '%25test%25'
PATH MISSING (decoded): '/export/home/dennis/Projects/csync2/csync2/test/test/local'
UPDATE_DIRECTORY: 4
UPDATE_DIRECTORY: 4
UPDATE_DIRECTORY: 4
UPDATE_DIRECTORY: 4
UPDATE_DIRECTORY: 4
UPDATE_DIRECTORY: 4
Unlocking file: /export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3/4/5
Locking /export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3/4/5/file.c
Updating (NEW) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3/4/5/file.c' ''
Unlocking file: /export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3/4/5/file.c
