cmd u "9 Update auto (older success)" local peer test
Connecting to redis localhost:6379
Got dirty files from host peer
Connecting to host peer (PLAIN) ...
Locking '/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/older/update_both'
Updating (NEW) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/older/update_both' ''
?B: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local/auto/older/update_both
While syncing file: /export/home/dennis/Projects/csync2/csync2/test/test/local/auto/older/update_both
ERROR from peer: File is also marked dirty here! (/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both) rc: -11 
Auto-resolving conflict: Won 'younger/older' test.
Attempting autoresolve on peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/older/update_both
Updating (NEW) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/older/update_both' ''
?B: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local/auto/older/update_both
Deleting key '/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/older/update_both'
