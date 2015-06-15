cmd x "New file deleted" local
Reading symbols from shared library libmysqlclient.so
Running recursive check for /export/home/dennis/Projects/csync2/csync2/tests/test ...
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/tests/test recursive.
mark other operation: 'RM' 'peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local/sbin/hej' '-'.
mark other operation: 'RM' 'other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local/sbin/hej' '-'.
mark other: Old operation: NEW '/export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local/sbin/hej' '(null)' 
mark operation NEW -> NOP other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local/sbin/hej deleted before syncing. Removing from dirty.
mark other operation: 'MOD_DIR' 'peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local/sbin' '-'.
mark other operation: 'MOD_DIR' 'other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local/sbin' '-'.
mark other: Old operation: MKDIR '/export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local/sbin' '(null)' 
mark operation MOD_DIR -> MKDIR other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local/sbin (not synced) .
Connecting to host peer (PLAIN) ...
Updating 'peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local/sbin' MOD_DIR ''
?M: peer            /export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local/sbin
Deleting peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local/sbin/hej
Finished succesfully.
