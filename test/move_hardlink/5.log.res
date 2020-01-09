cmd u "5 Read and deleted (update)" local peer test
Connecting to redis localhost:6379
Got dirty files from host peer
Connecting to host peer (PLAIN) ...
Locking '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur'
Redis reply: SET '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur' '1578595096' NX EX 60 -> OK
Updating (MOD_DIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur' ''
?M: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur
Deleting key '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur'
Redis Reply: DEL '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur' -> 1
Locking '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur'
Redis reply: SET '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur' '1578595096' NX EX 60 -> OK
Updating (MOD_DIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur' ''
?M: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur
Deleting key '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur'
Redis Reply: DEL '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur' -> 1
Locking '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp'
Redis reply: SET '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp' '1578595096' NX EX 60 -> OK
Updating (MOD_DIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp' ''
?M: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp
Deleting key '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp'
Redis Reply: DEL '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp' -> 1
Locking '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/123,Sab'
Redis reply: SET '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/123,Sab' '1578595096' NX EX 60 -> OK
Updating (MV) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/123,Sab' '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp/123'
Succes: MV /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp/123 /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/123,Sab
Deleting key '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/123,Sab'
Redis Reply: DEL '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/123,Sab' -> 1
Locking '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/123,Sab'
Redis reply: SET '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/123,Sab' '1578595096' NX EX 60 -> OK
Updating (HARDLINK) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/123,Sab' '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/123,Sab'
do hardlink check /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/123,Sab /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/123,Sab 
Hardlinking peer /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/123,Sab -> /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/123,Sab
clear dirty HARDLINK
Deleting key '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/123,Sab'
Redis Reply: DEL '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/123,Sab' -> 1
