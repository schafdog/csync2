cmd x "3. New local/no_permission" local peer test
Running recursive check for <TESTBASE>/test ...
Checking recursive for modified files <TESTBASE>/test 
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local' '-'.
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local' '-'.
ERROR: Failed to open <TESTBASE>/test/local/no_permission for digest:-1
ERROR: generating digest for file: <TESTBASE>/test/local/no_permission -1
csync_check_file_mod: calc_digest failed. Skipping <TESTBASE>/test/local/no_permission v2:mtime=<MTIME>mode=32896:user=<USER>:group=<GROUP>:type=reg:size=4
mark other operation: 'NEW' 'other:<TESTBASE>/test/local/A' '-'.
mark other operation: 'NEW' 'peer:<TESTBASE>/test/local/A' '-'.
mark other operation: 'NEW' 'other:<TESTBASE>/test/local/.Test' '-'.
mark other operation: 'NEW' 'peer:<TESTBASE>/test/local/.Test' '-'.
Checking for deleted files <TESTBASE>/test recursive.
Got 3 dirty files from host peer
Connecting to host peer (PLAIN) ...
Updating (MKDIR) 'peer:<TESTBASE>/test/local' ''
Updating (NEW) 'peer:<TESTBASE>/test/local/.Test' ''
CREATE <TESTBASE>/test/local/.Test 0
Updating (NEW) 'peer:<TESTBASE>/test/local/A' ''
CREATE <TESTBASE>/test/local/A 0
