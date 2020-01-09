cmd x "Bad link" local peer test
Connecting to redis localhost:6379
Running recursive check for /export/home/dennis/Projects/csync2/csync2/test/test ...
Checking recursive for modified files /export/home/dennis/Projects/csync2/csync2/test/test 
mark other operation: 'MOD_DIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local' '-'.
mark other operation: 'MOD_DIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local' '-'.
mark operation NEW -> MOD => NEW other:/export/home/dennis/Projects/csync2/csync2/test/test/local (not synced) .
WARN: stat failed. op: 2
mark other operation: 'RM?' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/bad.link' 'missing'.
WARN: stat failed. op: 2
mark other operation: 'RM?' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/bad.link' 'missing'.
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test recursive.
Got dirty files from host peer
Connecting to host peer (PLAIN) ...
Locking '/export/home/dennis/Projects/csync2/csync2/test/test/local'
Redis reply: SET '/export/home/dennis/Projects/csync2/csync2/test/test/local' '1578595149' NX EX 60 -> OK
Updating (MOD_DIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local' ''
?M: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local
Deleting key '/export/home/dennis/Projects/csync2/csync2/test/test/local'
Redis Reply: DEL '/export/home/dennis/Projects/csync2/csync2/test/test/local' -> 1
Locking '/export/home/dennis/Projects/csync2/csync2/test/test/local/bad.link'
Redis reply: SET '/export/home/dennis/Projects/csync2/csync2/test/test/local/bad.link' '1578595149' NX EX 60 -> OK
Updating (LINK) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/bad.link' 'missing'
Deleting key '/export/home/dennis/Projects/csync2/csync2/test/test/local/bad.link'
Redis Reply: DEL '/export/home/dennis/Projects/csync2/csync2/test/test/local/bad.link' -> 1
