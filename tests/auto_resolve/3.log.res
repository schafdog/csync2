cmd u "2 create directories (update)" local
Reading symbols from shared library libmysqlclient.so
Connecting to host peer (PLAIN) ...
CONN peer < CONFIG 

CONN peer < HELLO local

Updating 'peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local' MKDIR ''
CONN peer < SIG %25test%25 user/group 1000 1000 dennis schafroth 16877 
Updating 'peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/auto' MKDIR ''
CONN peer < SIG %25test%25/auto user/group 1000 1000 dennis schafroth 16877 
?M: peer            /export/home/dennis/Projects/csync2/csync2/tests/test/local/auto
CONN peer < MKDIR %25test%25/auto - 1000 1000 dennis schafroth 16877 
Updating 'peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/larger' MKDIR ''
CONN peer < SIG %25test%25/auto/larger user/group 1000 1000 dennis schafroth 16877 
?M: peer            /export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/larger
CONN peer < MKDIR %25test%25/auto/larger - 1000 1000 dennis schafroth 16877 
Updating 'peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/older' MKDIR ''
CONN peer < SIG %25test%25/auto/older user/group 1000 1000 dennis schafroth 16877 
?M: peer            /export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/older
CONN peer < MKDIR %25test%25/auto/older - 1000 1000 dennis schafroth 16877 
Updating 'peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/smaller' MKDIR ''
CONN peer < SIG %25test%25/auto/smaller user/group 1000 1000 dennis schafroth 16877 
?M: peer            /export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/smaller
CONN peer < MKDIR %25test%25/auto/smaller - 1000 1000 dennis schafroth 16877 
Updating 'peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/younger' MKDIR ''
CONN peer < SIG %25test%25/auto/younger user/group 1000 1000 dennis schafroth 16877 
?M: peer            /export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/younger
CONN peer < MKDIR %25test%25/auto/younger - 1000 1000 dennis schafroth 16877 
CONN peer < SETTIME %25test%25/auto 
CONN peer < SETTIME %25test%25 
CONN peer < BYE

Finished succesfully.
