cmd u "6 Fail to autoresolve (not older)" local peer test
Got 1 dirty files from host peer
Connecting to host peer (PLAIN) ...
Updating (NEW) 'peer:<TESTBASE>/test/local/auto/older/update_both' ''
Auto resolve method OLDER 3 for peer:<TESTBASE>/test/local/auto/older/update_both 
File peer:<TESTBASE>/test/local/auto/older/update_both: Lost autoresolve OLDER (3)
?B: peer            <TESTBASE>/test/local/auto/older/update_both
While syncing file: <TESTBASE>/test/local/auto/older/update_both
ERROR from peer: File is also marked dirty here! (<TESTBASE>/test/peer/auto/older/update_both) rc: -11 
Do not auto-resolve conflict: Lost 'younger/older' test.
File stays in dirty state after autoresolve. Try again later...
