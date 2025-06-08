cmd x "3. Sync with missing directories" local peer test
Running recursive check for <TESTBASE>/test ...
Checking recursive for modified files <TESTBASE>/test 
mark other operation: 'MOD_DIR' 'peer:<TESTBASE>/test/local/recursive/1/2/3/4/5' '-'.
mark other operation: 'MOD_DIR' 'other:<TESTBASE>/test/local/recursive/1/2/3/4/5' '-'.
mark other operation: 'NEW' 'peer:<TESTBASE>/test/local/recursive/1/2/3/4/5/file.c' '-'.
mark other operation: 'NEW' 'other:<TESTBASE>/test/local/recursive/1/2/3/4/5/file.c' '-'.
Checking for deleted files <TESTBASE>/test recursive.
Got dirty files from host peer
Connecting to host peer (PLAIN) ...
Updating (MOD_DIR) 'peer:<TESTBASE>/test/local/recursive/1/2/3/4/5' ''
PATH MISSING: '%25test%25'
PATH MISSING (decoded): '<TESTBASE>/test/local'
UPDATE_DIRECTORY: 4
UPDATE_DIRECTORY: 4
UPDATE_DIRECTORY: 4
UPDATE_DIRECTORY: 4
UPDATE_DIRECTORY: 4
UPDATE_DIRECTORY: 4
Updating (NEW) 'peer:<TESTBASE>/test/local/recursive/1/2/3/4/5/file.c' ''
CREATE <TESTBASE>/test/local/recursive/1/2/3/4/5/file.c 11
