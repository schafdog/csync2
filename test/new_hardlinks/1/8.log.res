cmd u "8 more files hardlinked (updated)" local peer test
Got 3 dirty files from host peer
Connecting to host peer (PLAIN) ...
Updating (MARK) 'peer:<TESTBASE>/test/local/new' ''
?M: peer            <TESTBASE>/test/local/new
Updating (MARK) 'peer:<TESTBASE>/test/local/new/hardlinked_4' ''
Found HARDLINK <TESTBASE>/test/local/new/new_file -> <TESTBASE>/test/local/new/hardlinked_4 
do hardlink check <TESTBASE>/test/local/new/hardlinked_4 <TESTBASE>/test/local/new/new_file 
Hardlinking peer <TESTBASE>/test/local/new/new_file -> <TESTBASE>/test/local/new/hardlinked_4
check_update_hardlink result: <TESTBASE>/test/local/new/new_file -> <TESTBASE>/test/local/new/hardlinked_4: 0
Hardlinked peer:<TESTBASE>/test/local/new/new_file -> <TESTBASE>/test/local/new/hardlinked_4
csync_find_update_hardlink: result: peer:<TESTBASE>/test/local/new/hardlinked_4 0
Updating (MARK) 'peer:<TESTBASE>/test/local/new/hardlinked_5' ''
Found HARDLINK <TESTBASE>/test/local/new/new_file -> <TESTBASE>/test/local/new/hardlinked_5 
do hardlink check <TESTBASE>/test/local/new/hardlinked_5 <TESTBASE>/test/local/new/new_file 
Hardlinking peer <TESTBASE>/test/local/new/new_file -> <TESTBASE>/test/local/new/hardlinked_5
check_update_hardlink result: <TESTBASE>/test/local/new/new_file -> <TESTBASE>/test/local/new/hardlinked_5: 0
Hardlinked peer:<TESTBASE>/test/local/new/new_file -> <TESTBASE>/test/local/new/hardlinked_5
csync_find_update_hardlink: result: peer:<TESTBASE>/test/local/new/hardlinked_5 0
