cmd u "8 more files hardlinked (updated)" local peer test
Connecting to redis localhost:6379
Got dirty files from host peer
Connecting to host peer (PLAIN) ...
Locking '/export/home/dennis/Projects/csync2/csync2/test/test/local/new'
Redis reply: SET '/export/home/dennis/Projects/csync2/csync2/test/test/local/new' '1578595114' NX EX 60 -> OK
Updating (MARK) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new' ''
?M: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local/new
Deleting key '/export/home/dennis/Projects/csync2/csync2/test/test/local/new'
Redis Reply: DEL '/export/home/dennis/Projects/csync2/csync2/test/test/local/new' -> 1
Locking '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_4'
Redis reply: SET '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_4' '1578595114' NX EX 60 -> OK
Updating (MARK) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_4' ''
Found HARDLINK /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_5 -> /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_4 
do hardlink check /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_4 /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_5 
Remote HARDLINK file (/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_5) not identical. Need patching. RC = 32
check_update_hardlink result: /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_5 -> /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_4: 32
Not a candidate for HARDLINK /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_5 -> /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_4
Found HARDLINK /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_2 -> /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_4 
do hardlink check /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_4 /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_2 
Hardlinking peer /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_2 -> /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_4
check_update_hardlink result: /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_2 -> /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_4: 0
Candidate for HARDLINK /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_2 -> /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_4
do hardlink check /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_4 /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_2 
Hardlinking peer /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_2 -> /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_4
clear dirty HARDLINK
Deleting key '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_4'
Redis Reply: DEL '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_4' -> 1
Locking '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_5'
Redis reply: SET '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_5' '1578595114' NX EX 60 -> OK
Updating (MARK) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_5' ''
Found HARDLINK /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_4 -> /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_5 
do hardlink check /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_5 /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_4 
Hardlinking peer /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_4 -> /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_5
check_update_hardlink result: /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_4 -> /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_5: 0
Candidate for HARDLINK /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_4 -> /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_5
do hardlink check /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_5 /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_4 
Hardlinking peer /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_4 -> /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_5
clear dirty HARDLINK
Deleting key '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_5'
Redis Reply: DEL '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_5' -> 1
