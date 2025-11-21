cmd u "3 two new files hardlinked (update)" local peer test
Got 4 dirty files from host peer
Connecting to host peer (PLAIN) ...
Updating (MKDIR) 'peer:<TESTBASE>/test/local' ''
Updating (MKDIR) 'peer:<TESTBASE>/test/local/new' ''
Updating (NEW) 'peer:<TESTBASE>/test/local/new/new_file' ''
CREATE <TESTBASE>/test/local/new/new_file 4
Updating (HARDLINK) 'peer:<TESTBASE>/test/local/new/hardlinked' '<TESTBASE>/test/local/new/new_file'
do hardlink check <TESTBASE>/test/local/new/hardlinked <TESTBASE>/test/local/new/new_file 
Hardlinking peer <TESTBASE>/test/local/new/new_file -> <TESTBASE>/test/local/new/hardlinked
clear dirty HARDLINK <TESTBASE>/test/local/new/hardlinked <TESTBASE>/test/local/new/new_file
