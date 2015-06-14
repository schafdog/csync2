cmd fu "forced update peer" local
Reading symbols from shared library libmysqlclient.so
Connecting to host peer (PLAIN) ...
CONN peer < CONFIG 

CONN peer < HELLO local

Updating 'peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/different' NEW ''
CONN peer < FLUSH 
CONN peer < SIG %25test%25/different user/group 1000 1000 dennis schafroth 33188 
CONN peer < PATCH %25test%25/different - 1000 1000 dennis schafroth 33188 
CONN peer < octet-stream 11

CONN peer < SETTIME %25test%25 
CONN peer < BYE

Finished succesfully.
