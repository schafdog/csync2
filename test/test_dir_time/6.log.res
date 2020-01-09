cmd u "New dir timestamp (update)" local peer test
Connecting to redis localhost:6379
Got dirty files from host peer
Connecting to host peer (PLAIN) ...
Locking '/export/home/dennis/Projects/csync2/csync2/test/test/local'
Redis reply: SET '/export/home/dennis/Projects/csync2/csync2/test/test/local' '1578595123' NX EX 60 -> OK
Updating (MARK) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local' ''
Deleting key '/export/home/dennis/Projects/csync2/csync2/test/test/local'
Redis Reply: DEL '/export/home/dennis/Projects/csync2/csync2/test/test/local' -> 1
Locking '/export/home/dennis/Projects/csync2/csync2/test/test/local/usr'
Redis reply: SET '/export/home/dennis/Projects/csync2/csync2/test/test/local/usr' '1578595123' NX EX 60 -> OK
Updating (MARK) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/usr' ''
Deleting key '/export/home/dennis/Projects/csync2/csync2/test/test/local/usr'
Redis Reply: DEL '/export/home/dennis/Projects/csync2/csync2/test/test/local/usr' -> 1
Locking '/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local'
Redis reply: SET '/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local' '1578595123' NX EX 60 -> OK
Updating (MARK) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local' ''
?M: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local
Deleting key '/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local'
Redis Reply: DEL '/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local' -> 1
Locking '/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin'
Redis reply: SET '/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin' '1578595123' NX EX 60 -> OK
Updating (MARK) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin' ''
Deleting key '/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin'
Redis Reply: DEL '/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin' -> 1
