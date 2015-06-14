cmd x "New local/new_file" local
Reading symbols from shared library libmysqlclient.so
Running recursive check for /export/home/dennis/Projects/csync2/csync2/tests/test ...
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/tests/test recursive.
mark other operation: MKDIR peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local '-'.
mark other operation: MKDIR other:/export/home/dennis/Projects/csync2/csync2/tests/test/local '-'.
mark other operation: NEW peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/new_file '-'.
mark other operation: NEW other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/new_file '-'.
Connecting to host peer (PLAIN) ...
CONN peer < CONFIG 

CONN peer < HELLO local

Updating 'peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local' MKDIR ''
CONN peer < SIG %25test%25 user/group 1000 1000 dennis schafroth 16877 
Updating 'peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/new_file' NEW ''
CONN peer < SIG %25test%25/new_file user/group 1000 1000 dennis schafroth 33188 
?M: peer            /export/home/dennis/Projects/csync2/csync2/tests/test/local/new_file
CONN peer < PATCH %25test%25/new_file - 1000 1000 dennis schafroth 33188 
CONN peer < octet-stream 11

CONN peer < SETTIME %25test%25 
CONN peer < BYE

Finished succesfully.
