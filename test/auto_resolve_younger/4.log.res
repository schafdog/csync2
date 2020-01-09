cmd u "4 create directories (update)" local peer test
Connecting to redis localhost:6379
Got dirty files from host peer
Connecting to host peer (PLAIN) ...
Locking '/export/home/dennis/Projects/csync2/csync2/test/test/local'
Redis reply: SET '/export/home/dennis/Projects/csync2/csync2/test/test/local' '1578595083' NX EX 60 -> OK
Updating (MKDIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local' ''
Deleting key '/export/home/dennis/Projects/csync2/csync2/test/test/local'
Redis Reply: DEL '/export/home/dennis/Projects/csync2/csync2/test/test/local' -> 1
Locking '/export/home/dennis/Projects/csync2/csync2/test/test/local/auto'
Redis reply: SET '/export/home/dennis/Projects/csync2/csync2/test/test/local/auto' '1578595083' NX EX 60 -> OK
Updating (MKDIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto' ''
Deleting key '/export/home/dennis/Projects/csync2/csync2/test/test/local/auto'
Redis Reply: DEL '/export/home/dennis/Projects/csync2/csync2/test/test/local/auto' -> 1
Locking '/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger'
Redis reply: SET '/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger' '1578595083' NX EX 60 -> OK
Updating (MKDIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger' ''
Deleting key '/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger'
Redis Reply: DEL '/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger' -> 1
