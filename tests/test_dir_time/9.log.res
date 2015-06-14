cmd x "clean up other" local
Reading symbols from shared library libmysqlclient.so
Running recursive check for /export/home/dennis/Projects/csync2/csync2/tests/test ...
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/tests/test recursive.
mark other operation: RM peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local/sbin '-'.
mark other operation: RM other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local/sbin '-'.
mark other: Old operation: MKDIR '/export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local/sbin' '(null)' mark operation MKDIR -> NOP other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local/sbin deleted before syncing. Removing from dirty.
mark other operation: RM peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local '-'.
mark other operation: RM other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local '-'.
mark other: Old operation: MKDIR '/export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local' '(null)' mark operation MKDIR -> NOP other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local deleted before syncing. Removing from dirty.
mark other operation: RM peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/usr '-'.
mark other operation: RM other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/usr '-'.
mark other: Old operation: MKDIR '/export/home/dennis/Projects/csync2/csync2/tests/test/local/usr' '(null)' mark operation MKDIR -> NOP other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/usr deleted before syncing. Removing from dirty.
mark other operation: RM peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local '-'.
mark other operation: RM other:/export/home/dennis/Projects/csync2/csync2/tests/test/local '-'.
mark other: Old operation: MKDIR '/export/home/dennis/Projects/csync2/csync2/tests/test/local' '(null)' mark operation MKDIR -> NOP other:/export/home/dennis/Projects/csync2/csync2/tests/test/local deleted before syncing. Removing from dirty.
Connecting to host peer (PLAIN) ...
CONN peer < CONFIG 

CONN peer < HELLO local

Deleting peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local/sbin
CONN peer < SIG %25test%25/usr/local/sbin 
CONN peer < DEL %25test%25/usr/local/sbin 
Deleting peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local
CONN peer < SIG %25test%25/usr/local 
CONN peer < DEL %25test%25/usr/local 
Deleting peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/usr
CONN peer < SIG %25test%25/usr 
CONN peer < DEL %25test%25/usr 
Deleting peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local
CONN peer < SIG %25test%25 
CONN peer < DEL %25test%25 
CONN peer < BYE

Finished succesfully.
