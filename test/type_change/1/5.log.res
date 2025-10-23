cmd x "5 File to directory (type change)" local peer test/local
Running recursive check for <TESTBASE>/test/local ...
Checking recursive for modified files <TESTBASE>/test/local 
mark other operation: 'MOD_DIR' 'peer:<TESTBASE>/test/local' '-'.
mark other operation: 'MOD_DIR' 'other:<TESTBASE>/test/local' '-'.
mark operation NEW -> MOD => NEW other:<TESTBASE>/test/local (not synced) .
File <TESTBASE>/test/local/type_change has changed mode 32768 => 16384 
mark other operation: 'MOD_DIR' 'peer:<TESTBASE>/test/local/type_change' '-'.
mark other operation: 'MOD_DIR' 'other:<TESTBASE>/test/local/type_change' '-'.
mark operation NEW -> MOD => NEW other:<TESTBASE>/test/local/type_change (not synced) .
mark other operation: 'NEW' 'peer:<TESTBASE>/test/local/type_change/new_file 'N' all' '-'.
mark other operation: 'NEW' 'other:<TESTBASE>/test/local/type_change/new_file 'N' all' '-'.
Checking for deleted files <TESTBASE>/test/local recursive.
Got 3 dirty files from host peer
Connecting to host peer (PLAIN) ...
Updating (MOD_DIR) 'peer:<TESTBASE>/test/local' ''
?M: peer            <TESTBASE>/test/local
Updating (MOD_DIR) 'peer:<TESTBASE>/test/local/type_change' ''
?B: peer            <TESTBASE>/test/local/type_change
Updating (NEW) 'peer:<TESTBASE>/test/local/type_change/new_file 'N' all' ''
CREATE <TESTBASE>/test/local/type_change/new_file 'N' all 4
