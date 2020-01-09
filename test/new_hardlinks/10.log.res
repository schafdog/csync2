cmd u "10 not hardlinked when updated" local peer test
Connecting to redis localhost:6379
Got dirty files from host peer
Connecting to host peer (PLAIN) ...
Locking '/export/home/dennis/Projects/csync2/csync2/test/test/local/new'
Redis reply: SET '/export/home/dennis/Projects/csync2/csync2/test/test/local/new' '1578595116' NX EX 60 -> OK
Updating (MOD_DIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new' ''
?M: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local/new
Deleting key '/export/home/dennis/Projects/csync2/csync2/test/test/local/new'
Redis Reply: DEL '/export/home/dennis/Projects/csync2/csync2/test/test/local/new' -> 1
Locking '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/was_hardlink'
Redis reply: SET '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/was_hardlink' '1578595116' NX EX 60 -> OK
Updating (NEW) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/was_hardlink' ''
Deleting key '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/was_hardlink'
Redis Reply: DEL '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/was_hardlink' -> 1
Unable to HARDLINK peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_6. File has disappeared sinc check.
mark other operation: 'MARK' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/was_hardlink' '-'.
make other dirty /export/home/dennis/Projects/csync2/csync2/test/test/local/new/was_hardlink
Deleting peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_6
peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_6 is already up to date on peer.
