cmd c "2 two new files hardlinked (check)" local peer test
Running recursive check for <TESTBASE>/test ...
Checking recursive for modified files <TESTBASE>/test 
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local' '-'.
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local' '-'.
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local/new' '-'.
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local/new' '-'.
mark other operation: 'NEW' 'peer:<TESTBASE>/test/local/new/new_file' '-'.
mark other operation: 'NEW' 'other:<TESTBASE>/test/local/new/new_file' '-'.
Found HARDLINK <TESTBASE>/test/local/new/new_file -> <TESTBASE>/test/local/new/hardlinked 
mark other operation: 'HARDLINK' 'peer:<TESTBASE>/test/local/new/hardlinked' '<TESTBASE>/test/local/new/new_file'.
mark other operation: 'HARDLINK' 'other:<TESTBASE>/test/local/new/hardlinked' '<TESTBASE>/test/local/new/new_file'.
Checking for deleted files <TESTBASE>/test recursive.
