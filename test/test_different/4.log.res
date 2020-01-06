cmd u "Both updated (peer still dirty)" local peer test
Connecting to redis localhost:6379
Got dirty files from host peer
Connecting to host peer (PLAIN) ...
Locking '/export/home/dennis/Projects/csync2/csync2/test/test/local/different'
Updating (NEW) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/different' ''
?F: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local/different
While syncing file: /export/home/dennis/Projects/csync2/csync2/test/test/local/different
ERROR from peer: File is also marked dirty here! (/export/home/dennis/Projects/csync2/csync2/test/test/peer/different) rc: -11 
File stays in dirty state after autoresolve. Try again later...
Deleting key '/export/home/dennis/Projects/csync2/csync2/test/test/local/different'
