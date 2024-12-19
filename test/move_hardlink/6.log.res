cmd u "5 Read and deleted (update)" local peer test
Got dirty files from host peer
Connecting to host peer (PLAIN) ...
Updating (MOD_DIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur' ''
Got octet-stream 0
?M: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur
Updating (MOD_DIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur' ''
Got octet-stream 0
?M: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur
Updating (MOD_DIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp' ''
Got octet-stream 0
?M: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp
Updating (MV) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/123,Sab' '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp/123'
Succes: MV /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp/123 /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/123,Sab
Got octet-stream 32
Updating (HARDLINK) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/123,Sab' '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/123,Sab'
do hardlink check /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/123,Sab /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/123,Sab 
Got octet-stream 32
Hardlinking peer /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/123,Sab -> /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/123,Sab
clear dirty HARDLINK
