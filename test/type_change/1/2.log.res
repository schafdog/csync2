cmd x "2 New local/type_change/new_file 'N' all" local peer test
Running recursive check for <TESTBASE>/test ...
Checking recursive for modified files <TESTBASE>/test 
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local' '-'.
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local' '-'.
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local/type_change' '-'.
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local/type_change' '-'.
mark other operation: 'NEW' 'peer:<TESTBASE>/test/local/type_change/new_file 'N' all' '-'.
mark other operation: 'NEW' 'other:<TESTBASE>/test/local/type_change/new_file 'N' all' '-'.
Checking for deleted files <TESTBASE>/test recursive.
Got 3 dirty files from host peer
Connecting to host peer (PLAIN) ...
Updating (MKDIR) 'peer:<TESTBASE>/test/local' ''
Updating (MKDIR) 'peer:<TESTBASE>/test/local/type_change' ''
Updating (NEW) 'peer:<TESTBASE>/test/local/type_change/new_file 'N' all' ''
CREATE <TESTBASE>/test/local/type_change/new_file 'N' all 4
