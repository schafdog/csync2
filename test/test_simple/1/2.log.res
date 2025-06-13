cmd x "New local/new_file 'N' all" local peer test
Running recursive check for <TESTBASE>/test ...
Checking recursive for modified files <TESTBASE>/test 
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local' '-'.
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local' '-'.
mark other operation: 'NEW' 'peer:<TESTBASE>/test/local/new_file 'N' all' '-'.
mark other operation: 'NEW' 'other:<TESTBASE>/test/local/new_file 'N' all' '-'.
mark other operation: 'NEW' 'peer:<TESTBASE>/test/local/A' '-'.
mark other operation: 'NEW' 'other:<TESTBASE>/test/local/A' '-'.
mark other operation: 'NEW' 'peer:<TESTBASE>/test/local/.Test' '-'.
mark other operation: 'NEW' 'other:<TESTBASE>/test/local/.Test' '-'.
Checking for deleted files <TESTBASE>/test recursive.
Got dirty files from host peer
Connecting to host peer (PLAIN) ...
Updating (MKDIR) 'peer:<TESTBASE>/test/local' ''
Updating (NEW) 'peer:<TESTBASE>/test/local/.Test' ''
CREATE <TESTBASE>/test/local/.Test 0
Updating (NEW) 'peer:<TESTBASE>/test/local/A' ''
CREATE <TESTBASE>/test/local/A 0
Updating (NEW) 'peer:<TESTBASE>/test/local/new_file 'N' all' ''
CREATE <TESTBASE>/test/local/new_file 'N' all 4
