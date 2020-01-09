cmd du "7 more files hardlinked (dry-run updated)" local peer test
Connecting to redis localhost:6379
Got dirty files from host peer
Connecting to host peer (PLAIN) ...
Locking '/export/home/dennis/Projects/csync2/csync2/test/test/local'
Redis reply: SET '/export/home/dennis/Projects/csync2/csync2/test/test/local' '1578595114' NX EX 60 -> OK
Updating (MARK) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local' ''
clear peer:/export/home/dennis/Projects/csync2/csync2/test/test/local on dry run
Deleting key '/export/home/dennis/Projects/csync2/csync2/test/test/local'
Redis Reply: DEL '/export/home/dennis/Projects/csync2/csync2/test/test/local' -> 1
Locking '/export/home/dennis/Projects/csync2/csync2/test/test/local/new'
Redis reply: SET '/export/home/dennis/Projects/csync2/csync2/test/test/local/new' '1578595114' NX EX 60 -> OK
Updating (MARK) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new' ''
?M: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local/new
Deleting key '/export/home/dennis/Projects/csync2/csync2/test/test/local/new'
Redis Reply: DEL '/export/home/dennis/Projects/csync2/csync2/test/test/local/new' -> 1
Locking '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked'
Redis reply: SET '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked' '1578595114' NX EX 60 -> OK
Updating (MARK) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked' ''
clear peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked on dry run
Deleting key '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked'
Redis Reply: DEL '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked' -> 1
Locking '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_2'
Redis reply: SET '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_2' '1578595114' NX EX 60 -> OK
Updating (MARK) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_2' ''
clear peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_2 on dry run
Deleting key '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_2'
Redis Reply: DEL '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_2' -> 1
Locking '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_3'
Redis reply: SET '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_3' '1578595114' NX EX 60 -> OK
Updating (MARK) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_3' ''
clear peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_3 on dry run
Deleting key '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_3'
Redis Reply: DEL '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_3' -> 1
Locking '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_4'
Redis reply: SET '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_4' '1578595114' NX EX 60 -> OK
Updating (MARK) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_4' ''
Deleting key '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_4'
Redis Reply: DEL '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_4' -> 1
Locking '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_5'
Redis reply: SET '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_5' '1578595114' NX EX 60 -> OK
Updating (MARK) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_5' ''
Deleting key '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_5'
Redis Reply: DEL '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_5' -> 1
Locking '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file'
Redis reply: SET '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file' '1578595114' NX EX 60 -> OK
Updating (MARK) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file' ''
clear peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file on dry run
Deleting key '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file'
Redis Reply: DEL '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file' -> 1
