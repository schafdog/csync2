cmd u "8 Update auto (younger success)" local peer test
Got dirty files from host peer
Connecting to host peer (PLAIN) ...
Updating (MOD_DIR) 'peer:<TESTBASE>/test/local' ''
?M: peer            <TESTBASE>/test/local
Updating (MOD_DIR) 'peer:<TESTBASE>/test/local/auto' ''
?M: peer            <TESTBASE>/test/local/auto
Updating (MOD_DIR) 'peer:<TESTBASE>/test/local/auto/younger' ''
Auto resolve method YOUNGER 2 for peer:<TESTBASE>/test/local/auto/younger 
File peer:<TESTBASE>/test/local/auto/younger: Won autoresolve YOUNGER (2)
Send FLUSH peer:<TESTBASE>/test/local/auto/younger (won auto resolved)
?M: peer            <TESTBASE>/test/local/auto/younger
Updating (NEW) 'peer:<TESTBASE>/test/local/auto/younger/local_oldest' ''
Auto resolve method YOUNGER 2 for peer:<TESTBASE>/test/local/auto/younger/local_oldest 
File peer:<TESTBASE>/test/local/auto/younger/local_oldest: Won autoresolve YOUNGER (2)
Send FLUSH peer:<TESTBASE>/test/local/auto/younger/local_oldest (won auto resolved)
?B: peer            <TESTBASE>/test/local/auto/younger/local_oldest
