cmd u "update: Delete email: ln Maildir/cur/1434.M21,S=6631,W=6764:2,S Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S. mv 1434.M21,S=6631,W=6764:2,S 1434.M21,S=6631,W=6764:2,ST" local peer test
Got dirty files from host peer
Connecting to host peer (PLAIN) ...
Updating (MOD_DIR) 'peer:<TESTBASE>/test/local/Maildir/.Trash/cur' ''
?M: peer            <TESTBASE>/test/local/Maildir/.Trash/cur
Updating (MOD_DIR) 'peer:<TESTBASE>/test/local/Maildir/cur' ''
?M: peer            <TESTBASE>/test/local/Maildir/cur
Updating (MV) 'peer:<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST' '<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,S'
Succes: MV <TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,S <TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
Updating (HARDLINK) 'peer:<TESTBASE>/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S' '<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST'
do hardlink check <TESTBASE>/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S <TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST 
Hardlinking peer <TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST -> <TESTBASE>/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S
clear dirty HARDLINK <TESTBASE>/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S <TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
