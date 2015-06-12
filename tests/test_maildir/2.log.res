cmd x "New Maildir/new/123 with transit in tmp " local
Reading symbols from shared library libmysqlclient.so
Running recursive check for /export/home/dennis/Projects/csync2/csync2/tests/test ...
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/tests/test recursive.
mark other operation: MKDIR peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local '-'.
mark other operation: MKDIR other:/export/home/dennis/Projects/csync2/csync2/tests/test/local '-'.
mark other operation: MKDIR peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir '-'.
mark other operation: MKDIR other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir '-'.
mark other operation: MKDIR peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp '-'.
mark other operation: MKDIR other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp '-'.
mark other operation: MKDIR peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new '-'.
mark other operation: MKDIR other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new '-'.
mark other operation: NEW peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764 '-'.
mark other operation: NEW other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764 '-'.
mark other operation: MKDIR peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur '-'.
mark other operation: MKDIR other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur '-'.
mark other operation: MKDIR peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash '-'.
mark other operation: MKDIR other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash '-'.
mark other operation: MKDIR peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur '-'.
mark other operation: MKDIR other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur '-'.
Connecting to host peer (PLAIN) ...
CONN peer < CONFIG 

CONN peer < HELLO local

Updating 'peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local' MKDIR ''
CONN peer < SIG %25test%25 user/group 1000 1000 dennis schafroth 16877 
?M: peer            /export/home/dennis/Projects/csync2/csync2/tests/test/local
CONN peer < MKDIR %25test%25 - 1000 1000 dennis schafroth 16877 
While syncing file: /export/home/dennis/Projects/csync2/csync2/tests/test/local
ERROR from peer: File is also marked dirty here! (/export/home/dennis/Projects/csync2/csync2/tests/test/peer)
Updating 'peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir' MKDIR ''
CONN peer < SIG %25test%25/Maildir user/group 1000 1000 dennis schafroth 16877 
?M: peer            /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir
CONN peer < MKDIR %25test%25/Maildir - 1000 1000 dennis schafroth 16877 
Updating 'peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash' MKDIR ''
CONN peer < SIG %25test%25/Maildir/.Trash user/group 1000 1000 dennis schafroth 16877 
?M: peer            /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash
CONN peer < MKDIR %25test%25/Maildir/.Trash - 1000 1000 dennis schafroth 16877 
Updating 'peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur' MKDIR ''
CONN peer < SIG %25test%25/Maildir/.Trash/cur user/group 1000 1000 dennis schafroth 16877 
?M: peer            /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur
CONN peer < MKDIR %25test%25/Maildir/.Trash/cur - 1000 1000 dennis schafroth 16877 
Updating 'peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur' MKDIR ''
CONN peer < SIG %25test%25/Maildir/cur user/group 1000 1000 dennis schafroth 16877 
?M: peer            /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur
CONN peer < MKDIR %25test%25/Maildir/cur - 1000 1000 dennis schafroth 16877 
Updating 'peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new' MKDIR ''
CONN peer < SIG %25test%25/Maildir/new user/group 1000 1000 dennis schafroth 16877 
?M: peer            /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new
CONN peer < MKDIR %25test%25/Maildir/new - 1000 1000 dennis schafroth 16877 
Updating 'peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764' NEW ''
CONN peer < SIG %25test%25/Maildir/new/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764 user/group 1000 1000 dennis schafroth 33188 
?M: peer            /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764
CONN peer < PATCH %25test%25/Maildir/new/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764 - 1000 1000 dennis schafroth 33188 
CONN peer < octet-stream 15

Updating 'peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp' MKDIR ''
CONN peer < SIG %25test%25/Maildir/tmp user/group 1000 1000 dennis schafroth 16877 
?M: peer            /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp
CONN peer < MKDIR %25test%25/Maildir/tmp - 1000 1000 dennis schafroth 16877 
CONN peer < SETTIME %25test%25/Maildir/new 
CONN peer < SETTIME %25test%25/Maildir/.Trash 
CONN peer < SETTIME %25test%25/Maildir 
CONN peer < SETTIME %25test%25 
CONN peer < BYE

Finished with 1 errors.
