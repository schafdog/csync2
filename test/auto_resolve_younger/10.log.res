cmd u "10 Same content (younger)" local peer test
Connecting to redis localhost:6379
Got dirty files from host peer
Connecting to host peer (PLAIN) ...
Locking '/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger'
Redis reply: SET '/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger' '1578595088' NX EX 60 -> OK
Updating (MOD_DIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger' ''
?M: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger
Deleting key '/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger'
Redis Reply: DEL '/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger' -> 1
Locking '/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger/same_content'
Redis reply: SET '/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger/same_content' '1578595088' NX EX 60 -> OK
Updating (NEW) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger/same_content' ''
?B: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger/same_content
While syncing file: /export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger/same_content
ERROR from peer: File is also marked dirty here! (/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/same_content) rc: -11 
Auto-resolving conflict: Won 'younger/older' test.
Attempting autoresolve on peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger/same_content
Updating (NEW) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger/same_content' ''
?B: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger/same_content
Deleting key '/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger/same_content'
Redis Reply: DEL '/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger/same_content' -> 1
