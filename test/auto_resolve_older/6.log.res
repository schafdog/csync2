cmd u "6 Fail to autoresolve (not older)" local peer test
Connecting to redis localhost:6379
Got dirty files from host peer
Connecting to host peer (PLAIN) ...
Locking /export/home/dennis/Projects/csync2/csync2/test/test/local/auto/older
Updating (MOD_DIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/older' ''
?M: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local/auto/older
Unlocking file: /export/home/dennis/Projects/csync2/csync2/test/test/local/auto/older
Locking /export/home/dennis/Projects/csync2/csync2/test/test/local/auto/older/update_both
Updating (NEW) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/older/update_both' ''
?B: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local/auto/older/update_both
While syncing file: /export/home/dennis/Projects/csync2/csync2/test/test/local/auto/older/update_both
ERROR from peer: File is also marked dirty here! (/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both) rc: -11 
Do not auto-resolve conflict: Lost 'younger/older' test.
File stays in dirty state after autoresolve. Try again later...
Unlocking file: /export/home/dennis/Projects/csync2/csync2/test/test/local/auto/older/update_both
