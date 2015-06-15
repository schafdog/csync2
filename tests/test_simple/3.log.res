cmd x "clean up" local
Reading symbols from shared library libmysqlclient.so
Running recursive check for /export/home/dennis/Projects/csync2/csync2/tests/test ...
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/tests/test recursive.
mark other operation: 'RM' 'peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/new_file' '-'.
mark other operation: 'RM' 'other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/new_file' '-'.
mark other: Old operation: NEW '/export/home/dennis/Projects/csync2/csync2/tests/test/local/new_file' '(null)' 
mark operation NEW -> NOP other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/new_file deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local' '-'.
mark other operation: 'RM' 'other:/export/home/dennis/Projects/csync2/csync2/tests/test/local' '-'.
mark other: Old operation: MKDIR '/export/home/dennis/Projects/csync2/csync2/tests/test/local' '(null)' 
mark operation MKDIR -> NOP other:/export/home/dennis/Projects/csync2/csync2/tests/test/local deleted before syncing. Removing from dirty.
Connecting to host peer (PLAIN) ...
Deleting peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/new_file
Deleting peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local
Finished succesfully.
