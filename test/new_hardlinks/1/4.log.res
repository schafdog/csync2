cmd x "4 more files hardlinked (x)" local peer test
Running recursive check for <TESTBASE>/test ...
Checking recursive for modified files <TESTBASE>/test 
mark other operation: 'MOD_DIR' 'other:<TESTBASE>/test/local/new' '-'.
mark operation NEW -> MOD => NEW other:<TESTBASE>/test/local/new (not synced) .
mark other operation: 'MOD_DIR' 'peer:<TESTBASE>/test/local/new' '-'.
Found HARDLINK <TESTBASE>/test/local/new/new_file -> <TESTBASE>/test/local/new/hardlinked_3 
Found HARDLINK <TESTBASE>/test/local/new/hardlinked -> <TESTBASE>/test/local/new/hardlinked_3 
mark other operation: 'HARDLINK' 'other:<TESTBASE>/test/local/new/hardlinked_3' '<TESTBASE>/test/local/new/hardlinked'.
mark other operation: 'HARDLINK' 'peer:<TESTBASE>/test/local/new/hardlinked_3' '<TESTBASE>/test/local/new/hardlinked'.
Found HARDLINK <TESTBASE>/test/local/new/new_file -> <TESTBASE>/test/local/new/hardlinked_2 
Found HARDLINK <TESTBASE>/test/local/new/hardlinked_3 -> <TESTBASE>/test/local/new/hardlinked_2 
Found HARDLINK <TESTBASE>/test/local/new/hardlinked -> <TESTBASE>/test/local/new/hardlinked_2 
mark other operation: 'HARDLINK' 'other:<TESTBASE>/test/local/new/hardlinked_2' '<TESTBASE>/test/local/new/hardlinked'.
mark other operation: 'HARDLINK' 'peer:<TESTBASE>/test/local/new/hardlinked_2' '<TESTBASE>/test/local/new/hardlinked'.
Checking for deleted files <TESTBASE>/test recursive.
Got 3 dirty files from host peer
Connecting to host peer (PLAIN) ...
Updating (MOD_DIR) 'peer:<TESTBASE>/test/local/new' ''
?M: peer            <TESTBASE>/test/local/new
Updating (HARDLINK) 'peer:<TESTBASE>/test/local/new/hardlinked_2' '<TESTBASE>/test/local/new/hardlinked'
do hardlink check <TESTBASE>/test/local/new/hardlinked_2 <TESTBASE>/test/local/new/hardlinked 
Hardlinking peer <TESTBASE>/test/local/new/hardlinked -> <TESTBASE>/test/local/new/hardlinked_2
clear dirty HARDLINK <TESTBASE>/test/local/new/hardlinked_2 <TESTBASE>/test/local/new/hardlinked
Updating (HARDLINK) 'peer:<TESTBASE>/test/local/new/hardlinked_3' '<TESTBASE>/test/local/new/hardlinked'
do hardlink check <TESTBASE>/test/local/new/hardlinked_3 <TESTBASE>/test/local/new/hardlinked 
Hardlinking peer <TESTBASE>/test/local/new/hardlinked -> <TESTBASE>/test/local/new/hardlinked_3
clear dirty HARDLINK <TESTBASE>/test/local/new/hardlinked_3 <TESTBASE>/test/local/new/hardlinked
