cmd u "8 Update auto (younger)" local peer test
Got dirty files from host peer
Connecting to host peer (PLAIN) ...
Updating (MOD_DIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger' ''
?M: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger
Updating (NEW) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger/local_oldest' ''
?B: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger/local_oldest
While syncing file: /export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger/local_oldest
ERROR from peer: File is also marked dirty here! (/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest) rc: -11 
Do not auto-resolve conflict: Lost 'younger/older' test.
File stays in dirty state after autoresolve. Try again later...
Updating (NEW) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger/peer_oldest' ''
?B: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger/peer_oldest
While syncing file: /export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger/peer_oldest
ERROR from peer: File is also marked dirty here! (/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/peer_oldest) rc: -11 
Auto-resolving conflict: Won 'younger/older' test.
Attempting autoresolve on peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger/peer_oldest
Updating (NEW) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger/peer_oldest' ''
?B: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger/peer_oldest
