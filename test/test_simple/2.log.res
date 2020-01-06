cmd x "New local/new_file 'N' all" local peer test
Connecting to redis localhost:6379
Running recursive check for /export/home/dennis/Projects/csync2/csync2/test/test ...
Checking recursive for modified files /export/home/dennis/Projects/csync2/csync2/test/test 
mark other operation: 'MKDIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local' '-'.
mark other operation: 'MKDIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local' '-'.
mark other operation: 'NEW' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new_file 'N' all' '-'.
mark other operation: 'NEW' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/new_file 'N' all' '-'.
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test recursive.
Got dirty files from host peer
Connecting to host peer (PLAIN) ...
Locking '/export/home/dennis/Projects/csync2/csync2/test/test/local'
Updating (MKDIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local' ''
Deleting key '/export/home/dennis/Projects/csync2/csync2/test/test/local'
Locking '/export/home/dennis/Projects/csync2/csync2/test/test/local/new_file 'N' all'
Updating (NEW) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new_file 'N' all' ''
Deleting key '/export/home/dennis/Projects/csync2/csync2/test/test/local/new_file 'N' all'
