cmd x "New file deleted" local
Reading symbols from shared library libmysqlclient.so
Running recursive check for /export/home/dennis/Projects/csync2/csync2/tests/test ...
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/tests/test recursive.
mark other operation: RM peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local/sbin/hej '-'.
mark other operation: RM other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local/sbin/hej '-'.
mark other: Old operation: NEW '/export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local/sbin/hej' '(null)' mark operation NEW -> NOP other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local/sbin/hej deleted before syncing. Removing from dirty.
mark other operation: MOD_DIR peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local/sbin '-'.
mark other operation: MOD_DIR other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local/sbin '-'.
mark other: Old operation: MKDIR '/export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local/sbin' '(null)' mark operation MOD_DIR -> MKDIR other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local/sbin (not synced) .
Connecting to host peer (PLAIN) ...
CONN peer < CONFIG 

CONN peer < HELLO local

Updating 'peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local/sbin' MOD_DIR ''
CONN peer < SIG %25test%25/usr/local/sbin user/group 1000 1000 dennis schafroth 16877 
?M: peer            /export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local/sbin
CONN peer < MKDIR %25test%25/usr/local/sbin - 1000 1000 dennis schafroth 16877 
Deleting peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local/sbin/hej
CONN peer < SIG %25test%25/usr/local/sbin/hej 
CONN peer < DEL %25test%25/usr/local/sbin/hej 
CONN peer < SETTIME %25test%25/usr/local/sbin 
CONN peer < SETTIME %25test%25/usr/local 
CONN peer < BYE

Finished succesfully.
