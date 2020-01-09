cmd u "New dir timestamp due to file (update)" local peer test
Connecting to redis localhost:6379
Got dirty files from host peer
Connecting to host peer (PLAIN) ...
Locking '/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin'
Redis reply: SET '/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin' '1578595121' NX EX 60 -> OK
Updating (MOD_DIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin' ''
?M: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin
Deleting key '/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin'
Redis Reply: DEL '/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin' -> 1
