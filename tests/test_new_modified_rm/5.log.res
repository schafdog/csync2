cmd c "rm newdir (removed from dirty)" local
Reading symbols from shared library libmysqlclient.so
Running recursive check for /export/home/dennis/Projects/csync2/csync2/tests/test ...
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/tests/test recursive.
mark other operation: 'RM' 'peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/newdir' '-'.
mark other: Old operation: MKDIR '/export/home/dennis/Projects/csync2/csync2/tests/test/local/newdir' '(null)' 
mark operation MKDIR -> NOP peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/newdir deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/newdir' '-'.
mark other: Old operation: MKDIR '/export/home/dennis/Projects/csync2/csync2/tests/test/local/newdir' '(null)' 
mark operation MKDIR -> NOP other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/newdir deleted before syncing. Removing from dirty.
mark other operation: 'MOD_DIR' 'peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local' '-'.
mark other: Old operation: MKDIR '/export/home/dennis/Projects/csync2/csync2/tests/test/local' '(null)' 
mark operation MOD_DIR -> MKDIR peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local (not synced) .
mark other operation: 'MOD_DIR' 'other:/export/home/dennis/Projects/csync2/csync2/tests/test/local' '-'.
mark other: Old operation: MKDIR '/export/home/dennis/Projects/csync2/csync2/tests/test/local' '(null)' 
mark operation MOD_DIR -> MKDIR other:/export/home/dennis/Projects/csync2/csync2/tests/test/local (not synced) .
Finished succesfully.
