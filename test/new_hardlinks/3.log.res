cmd u "3 two new files hardlinked (update)" local peer test
Connecting to redis localhost:6379
Got dirty files from host peer
Connecting to host peer (PLAIN) ...
Locking '/export/home/dennis/Projects/csync2/csync2/test/test/local'
Redis reply: SET '/export/home/dennis/Projects/csync2/csync2/test/test/local' '1578595111' NX EX 60 -> OK
Updating (MKDIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local' ''
Deleting key '/export/home/dennis/Projects/csync2/csync2/test/test/local'
Redis Reply: DEL '/export/home/dennis/Projects/csync2/csync2/test/test/local' -> 1
Locking '/export/home/dennis/Projects/csync2/csync2/test/test/local/new'
Redis reply: SET '/export/home/dennis/Projects/csync2/csync2/test/test/local/new' '1578595111' NX EX 60 -> OK
Updating (MKDIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new' ''
Deleting key '/export/home/dennis/Projects/csync2/csync2/test/test/local/new'
Redis Reply: DEL '/export/home/dennis/Projects/csync2/csync2/test/test/local/new' -> 1
Locking '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file'
Redis reply: SET '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file' '1578595111' NX EX 60 -> OK
Updating (NEW) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file' ''
Deleting key '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file'
Redis Reply: DEL '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file' -> 1
Locking '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked'
Redis reply: SET '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked' '1578595111' NX EX 60 -> OK
Updating (HARDLINK) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked' '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file'
do hardlink check /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked /export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file 
Hardlinking peer /export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file -> /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked
clear dirty HARDLINK
Deleting key '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked'
Redis Reply: DEL '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked' -> 1
