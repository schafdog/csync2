cmd x "New file" local
Reading symbols from shared library libmysqlclient.so
Running recursive check for /export/home/dennis/Projects/csync2/csync2/tests/test ...
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/tests/test recursive.
mark other operation: MOD_DIR peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local '-'.
mark other operation: MOD_DIR other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local '-'.
mark other: Old operation: MKDIR '/export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local' '(null)' mark operation MOD_DIR -> MKDIR other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local (not synced) .
mark other operation: MOD_DIR peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local/sbin '-'.
mark other operation: MOD_DIR other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local/sbin '-'.
mark other: Old operation: MKDIR '/export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local/sbin' '(null)' mark operation MOD_DIR -> MKDIR other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local/sbin (not synced) .
mark other operation: NEW peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local/sbin/hej '-'.
mark other operation: NEW other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local/sbin/hej '-'.
Connecting to host peer (PLAIN) ...
CONN peer < CONFIG 

CONN peer < HELLO local

Updating 'peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local' MOD_DIR ''
CONN peer < SIG %25test%25/usr/local user/group 1000 1000 dennis schafroth 16877 
Updating 'peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local/sbin' MOD_DIR ''
CONN peer < SIG %25test%25/usr/local/sbin user/group 1000 1000 dennis schafroth 16877 
?M: peer            /export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local/sbin
CONN peer < MKDIR %25test%25/usr/local/sbin - 1000 1000 dennis schafroth 16877 
Updating 'peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local/sbin/hej' NEW ''
CONN peer < SIG %25test%25/usr/local/sbin/hej user/group 1000 1000 dennis schafroth 33188 
?M: peer            /export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local/sbin/hej
CONN peer < PATCH %25test%25/usr/local/sbin/hej - 1000 1000 dennis schafroth 33188 
CONN peer < octet-stream 11

CONN peer < SETTIME %25test%25/usr/local/sbin 
CONN peer < SETTIME %25test%25/usr/local 
CONN peer < SETTIME %25test%25/usr 
CONN peer < BYE

Finished succesfully.
