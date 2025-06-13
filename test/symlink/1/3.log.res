cmd x "Bad link" local peer test
Running recursive check for <TESTBASE>/test ...
Checking recursive for modified files <TESTBASE>/test 
mark other operation: 'MOD_DIR' 'peer:<TESTBASE>/test/local' '-'.
mark other operation: 'MOD_DIR' 'other:<TESTBASE>/test/local' '-'.
mark operation NEW -> MOD => NEW other:<TESTBASE>/test/local (not synced) .
WARN: stat failed. op: 2
mark other operation: 'RM?' 'peer:<TESTBASE>/test/local/bad.link' 'missing'.
WARN: stat failed. op: 2
mark other operation: 'RM?' 'other:<TESTBASE>/test/local/bad.link' 'missing'.
Checking for deleted files <TESTBASE>/test recursive.
Got dirty files from host peer
Connecting to host peer (PLAIN) ...
Updating (MOD_DIR) 'peer:<TESTBASE>/test/local' ''
?M: peer            <TESTBASE>/test/local
Updating (LINK) 'peer:<TESTBASE>/test/local/bad.link' 'missing'
