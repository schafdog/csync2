cmd u "10 not hardlinked when updated" local peer test
Got 3 dirty files from host peer
Connecting to host peer (PLAIN) ...
Updating (MOD_DIR) 'peer:<TESTBASE>/test/local/new' ''
?M: peer            <TESTBASE>/test/local/new
Updating (NEW) 'peer:<TESTBASE>/test/local/new/was_hardlink' ''
CREATE <TESTBASE>/test/local/new/was_hardlink 4
Unable to HARDLINK peer:<TESTBASE>/test/local/new/hardlinked_6. File has disappeared since check.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/new/hardlinked_6' '-'.
mark other operation: 'MARK' 'peer:<TESTBASE>/test/local/new/was_hardlink' '-'.
make other dirty <TESTBASE>/test/local/new/was_hardlink
