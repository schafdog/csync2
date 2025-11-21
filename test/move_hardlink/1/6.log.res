cmd u "5 Read and deleted (update)" local peer test
Got 5 dirty files from host peer
Connecting to host peer (PLAIN) ...
Updating (MOD_DIR) 'peer:<TESTBASE>/test/local/Maildir/.Trash/cur' ''
?M: peer            <TESTBASE>/test/local/Maildir/.Trash/cur
Updating (MOD_DIR) 'peer:<TESTBASE>/test/local/Maildir/cur' ''
?M: peer            <TESTBASE>/test/local/Maildir/cur
Updating (MOD_DIR) 'peer:<TESTBASE>/test/local/Maildir/tmp' ''
?M: peer            <TESTBASE>/test/local/Maildir/tmp
Updating (MV) 'peer:<TESTBASE>/test/local/Maildir/cur/123,Sab' '<TESTBASE>/test/local/Maildir/tmp/123'
Succes: MV <TESTBASE>/test/local/Maildir/tmp/123 <TESTBASE>/test/local/Maildir/cur/123,Sab
Updating (HARDLINK) 'peer:<TESTBASE>/test/local/Maildir/.Trash/cur/123,Sab' '<TESTBASE>/test/local/Maildir/cur/123,Sab'
do hardlink check <TESTBASE>/test/local/Maildir/.Trash/cur/123,Sab <TESTBASE>/test/local/Maildir/cur/123,Sab 
Hardlinking peer <TESTBASE>/test/local/Maildir/cur/123,Sab -> <TESTBASE>/test/local/Maildir/.Trash/cur/123,Sab
clear dirty HARDLINK <TESTBASE>/test/local/Maildir/.Trash/cur/123,Sab <TESTBASE>/test/local/Maildir/cur/123,Sab
