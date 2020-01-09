cmd u "6 Fail to autoresolve (not younger)" local peer test
Connecting to redis localhost:6379
Got dirty files from host peer
Connecting to host peer (PLAIN) ...
Locking '/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger'
Redis reply: SET '/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger' '1578595085' NX EX 60 -> OK
Updating (MOD_DIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger' ''
?M: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger
Deleting key '/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger'
Redis Reply: DEL '/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger' -> 1
Locking '/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger/update_both'
Redis reply: SET '/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger/update_both' '1578595085' NX EX 60 -> OK
Updating (NEW) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger/update_both' ''
?B: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger/update_both
While syncing file: /export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger/update_both
ERROR from peer: File is also marked dirty here! (/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/update_both) rc: -11 
Do not auto-resolve conflict: Lost 'younger/older' test.
File stays in dirty state after autoresolve. Try again later...
Deleting key '/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger/update_both'
Redis Reply: DEL '/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger/update_both' -> 1
