cmd x "New file" local peer test
Running recursive check for <TESTBASE>/test ...
Checking recursive for modified files <TESTBASE>/test 
mark other operation: 'MOD_DIR' 'peer:<TESTBASE>/test/local/usr/local' '-'.
mark other operation: 'MOD_DIR' 'other:<TESTBASE>/test/local/usr/local' '-'.
mark operation NEW -> MOD => NEW other:<TESTBASE>/test/local/usr/local (not synced) .
mark other operation: 'MOD_DIR' 'peer:<TESTBASE>/test/local/usr/local/sbin' '-'.
mark other operation: 'MOD_DIR' 'other:<TESTBASE>/test/local/usr/local/sbin' '-'.
mark operation NEW -> MOD => NEW other:<TESTBASE>/test/local/usr/local/sbin (not synced) .
mark other operation: 'NEW' 'peer:<TESTBASE>/test/local/usr/local/sbin/hej' '-'.
mark other operation: 'NEW' 'other:<TESTBASE>/test/local/usr/local/sbin/hej' '-'.
Checking for deleted files <TESTBASE>/test recursive.
Got dirty files from host peer
Connecting to host peer (PLAIN) ...
Updating (MOD_DIR) 'peer:<TESTBASE>/test/local/usr/local' ''
Updating (MOD_DIR) 'peer:<TESTBASE>/test/local/usr/local/sbin' ''
?M: peer            <TESTBASE>/test/local/usr/local/sbin
Updating (NEW) 'peer:<TESTBASE>/test/local/usr/local/sbin/hej' ''
CREATE <TESTBASE>/test/local/usr/local/sbin/hej 4
