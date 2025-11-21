cmd u "8 Update auto (older success)" local peer test
Got 4 dirty files from host peer
Connecting to host peer (PLAIN) ...
Updating (MOD_DIR) 'peer:<TESTBASE>/test/local' ''
?M: peer            <TESTBASE>/test/local
Updating (MOD_DIR) 'peer:<TESTBASE>/test/local/auto' ''
?M: peer            <TESTBASE>/test/local/auto
Updating (MOD_DIR) 'peer:<TESTBASE>/test/local/auto/older' ''
Auto resolve method OLDER 3 for peer:<TESTBASE>/test/local/auto/older 
File peer:<TESTBASE>/test/local/auto/older: Won autoresolve OLDER (3)
Send FLUSH peer:<TESTBASE>/test/local/auto/older (won auto resolved)
?M: peer            <TESTBASE>/test/local/auto/older
Updating (NEW) 'peer:<TESTBASE>/test/local/auto/older/update_both' ''
Auto resolve method OLDER 3 for peer:<TESTBASE>/test/local/auto/older/update_both 
File peer:<TESTBASE>/test/local/auto/older/update_both: Won autoresolve OLDER (3)
Send FLUSH peer:<TESTBASE>/test/local/auto/older/update_both (won auto resolved)
?B: peer            <TESTBASE>/test/local/auto/older/update_both
