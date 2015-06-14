cmd x "New directory" local
Reading symbols from shared library libmysqlclient.so
Running recursive check for /export/home/dennis/Projects/csync2/csync2/tests/test ...
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/tests/test recursive.
mark other operation: MKDIR peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local '-'.
mark other operation: MKDIR other:/export/home/dennis/Projects/csync2/csync2/tests/test/local '-'.
mark other operation: MKDIR peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/usr '-'.
mark other operation: MKDIR other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/usr '-'.
mark other operation: MKDIR peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local '-'.
mark other operation: MKDIR other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local '-'.
mark other operation: MKDIR peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local/sbin '-'.
mark other operation: MKDIR other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local/sbin '-'.
Connecting to host peer (PLAIN) ...
CONN peer < CONFIG 

CONN peer < HELLO local

Updating 'peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local' MKDIR ''
CONN peer < SIG %25test%25 user/group 1000 1000 dennis schafroth 16877 
Updating 'peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/usr' MKDIR ''
CONN peer < SIG %25test%25/usr user/group 1000 1000 dennis schafroth 16877 
?M: peer            /export/home/dennis/Projects/csync2/csync2/tests/test/local/usr
CONN peer < MKDIR %25test%25/usr - 1000 1000 dennis schafroth 16877 
Updating 'peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local' MKDIR ''
CONN peer < SIG %25test%25/usr/local user/group 1000 1000 dennis schafroth 16877 
?M: peer            /export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local
CONN peer < MKDIR %25test%25/usr/local - 1000 1000 dennis schafroth 16877 
Updating 'peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local/sbin' MKDIR ''
CONN peer < SIG %25test%25/usr/local/sbin user/group 1000 1000 dennis schafroth 16877 
?M: peer            /export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local/sbin
CONN peer < MKDIR %25test%25/usr/local/sbin - 1000 1000 dennis schafroth 16877 
CONN peer < SETTIME %25test%25/usr/local 
CONN peer < SETTIME %25test%25/usr 
CONN peer < SETTIME %25test%25 
CONN peer < BYE

Finished succesfully.
