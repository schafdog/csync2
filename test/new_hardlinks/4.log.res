cmd x "4 more files hardlinked (x)" local peer test
Connecting to redis localhost:6379
Running recursive check for /export/home/dennis/Projects/csync2/csync2/test/test ...
Checking recursive for modified files /export/home/dennis/Projects/csync2/csync2/test/test 
mark other operation: 'MOD_DIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new' '-'.
mark other operation: 'MOD_DIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/new' '-'.
mark operation NEW -> MOD => NEW other:/export/home/dennis/Projects/csync2/csync2/test/test/local/new (not synced) .
Found HARDLINK /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked -> /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_3 
Found HARDLINK /export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file -> /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_3 
mark other operation: 'HARDLINK' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_3' '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file'.
mark other operation: 'HARDLINK' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_3' '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file'.
Found HARDLINK /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_3 -> /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_2 
Found HARDLINK /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked -> /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_2 
Found HARDLINK /export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file -> /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_2 
mark other operation: 'HARDLINK' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_2' '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file'.
mark other operation: 'HARDLINK' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_2' '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file'.
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test recursive.
Got dirty files from host peer
Connecting to host peer (PLAIN) ...
Locking '/export/home/dennis/Projects/csync2/csync2/test/test/local/new'
Redis reply: SET '/export/home/dennis/Projects/csync2/csync2/test/test/local/new' '1578595113' NX EX 60 -> OK
Updating (MOD_DIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new' ''
?M: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local/new
Deleting key '/export/home/dennis/Projects/csync2/csync2/test/test/local/new'
Redis Reply: DEL '/export/home/dennis/Projects/csync2/csync2/test/test/local/new' -> 1
Locking '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_2'
Redis reply: SET '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_2' '1578595113' NX EX 60 -> OK
Updating (HARDLINK) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_2' '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file'
do hardlink check /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_2 /export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file 
Hardlinking peer /export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file -> /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_2
clear dirty HARDLINK
Deleting key '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_2'
Redis Reply: DEL '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_2' -> 1
Locking '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_3'
Redis reply: SET '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_3' '1578595113' NX EX 60 -> OK
Updating (HARDLINK) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_3' '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file'
do hardlink check /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_3 /export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file 
Hardlinking peer /export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file -> /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_3
clear dirty HARDLINK
Deleting key '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_3'
Redis Reply: DEL '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_3' -> 1
