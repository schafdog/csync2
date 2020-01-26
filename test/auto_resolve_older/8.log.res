cmd u "8 Update auto (older)" local peer test
Got dirty files from host peer
Connecting to host peer (PLAIN) ...
Updating (MOD_DIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/older' ''
Auto resolve method OLDER 3 for peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/older 
File peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/older: Lost autoresolve OLDER (3)
?M: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local/auto/older
Updating (NEW) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/older/peer_oldest' ''
Auto resolve method OLDER 3 for peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/older/peer_oldest 
File peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/older/peer_oldest: Lost autoresolve OLDER (3)
?B: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local/auto/older/peer_oldest
While syncing file: /export/home/dennis/Projects/csync2/csync2/test/test/local/auto/older/peer_oldest
ERROR from peer: File is also marked dirty here! (/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/peer_oldest) rc: -11 
Do not auto-resolve conflict: Lost 'younger/older' test.
File stays in dirty state after autoresolve. Try again later...
