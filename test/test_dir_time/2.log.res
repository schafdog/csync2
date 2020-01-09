cmd x "New directory" local peer test
Connecting to redis localhost:6379
Running recursive check for /export/home/dennis/Projects/csync2/csync2/test/test ...
Checking recursive for modified files /export/home/dennis/Projects/csync2/csync2/test/test 
mark other operation: 'MKDIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local' '-'.
mark other operation: 'MKDIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local' '-'.
mark other operation: 'MKDIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/usr' '-'.
mark other operation: 'MKDIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/usr' '-'.
mark other operation: 'MKDIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local' '-'.
mark other operation: 'MKDIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local' '-'.
mark other operation: 'MKDIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin' '-'.
mark other operation: 'MKDIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin' '-'.
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test recursive.
Got dirty files from host peer
Connecting to host peer (PLAIN) ...
Locking '/export/home/dennis/Projects/csync2/csync2/test/test/local'
Redis reply: SET '/export/home/dennis/Projects/csync2/csync2/test/test/local' '1578595120' NX EX 60 -> OK
Updating (MKDIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local' ''
Deleting key '/export/home/dennis/Projects/csync2/csync2/test/test/local'
Redis Reply: DEL '/export/home/dennis/Projects/csync2/csync2/test/test/local' -> 1
Locking '/export/home/dennis/Projects/csync2/csync2/test/test/local/usr'
Redis reply: SET '/export/home/dennis/Projects/csync2/csync2/test/test/local/usr' '1578595120' NX EX 60 -> OK
Updating (MKDIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/usr' ''
Deleting key '/export/home/dennis/Projects/csync2/csync2/test/test/local/usr'
Redis Reply: DEL '/export/home/dennis/Projects/csync2/csync2/test/test/local/usr' -> 1
Locking '/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local'
Redis reply: SET '/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local' '1578595120' NX EX 60 -> OK
Updating (MKDIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local' ''
Deleting key '/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local'
Redis Reply: DEL '/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local' -> 1
Locking '/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin'
Redis reply: SET '/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin' '1578595120' NX EX 60 -> OK
Updating (MKDIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin' ''
Deleting key '/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin'
Redis Reply: DEL '/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin' -> 1
