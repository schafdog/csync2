cmd u "5 Update auto (younger)" local
Reading symbols from shared library libmysqlclient.so
Connecting to host peer (PLAIN) ...
CONN peer < CONFIG 

CONN peer < HELLO local

Updating 'peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/younger' MOD_DIR ''
CONN peer < SIG %25test%25/auto/younger user/group 1000 1000 dennis schafroth 16877 
?M: peer            /export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/younger
CONN peer < MKDIR %25test%25/auto/younger - 1000 1000 dennis schafroth 16877 
Updating 'peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/younger/update_both' NEW ''
CONN peer < SIG %25test%25/auto/younger/update_both user/group 1000 1000 dennis schafroth 33188 
?M: peer            /export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/younger/update_both
CONN peer < PATCH %25test%25/auto/younger/update_both - 1000 1000 dennis schafroth 33188 
While syncing file: /export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/younger/update_both
ERROR from peer: File is also marked dirty here! (/export/home/dennis/Projects/csync2/csync2/tests/test/peer/auto/younger/update_both)
CONN peer < SETTIME %25test%25/auto/younger 
CONN peer < SETTIME %25test%25/auto 
CONN peer < BYE

Finished with 1 errors.
