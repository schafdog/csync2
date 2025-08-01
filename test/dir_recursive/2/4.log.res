cmd u "Remove dir recursive (update)" local peer test
Config-File:   csync2_<DB>_<PEER>.cfg
My hostname is local.
Database File: <CONN_STR>
DB Version:    2
IP Version:    IPv4
dirty: peer:<TESTBASE>/test/local/c/f1.txt v2:mtime=xxxxxxxxxx:mode=33188:user=<USER>:group=<GROUP>:type=reg:size=20 ''
dirty: peer:<TESTBASE>/test/local/c/3/f1.txt v2:mtime=xxxxxxxxxx:mode=33188:user=<USER>:group=<GROUP>:type=reg:size=22 ''
dirty: peer:<TESTBASE>/test/local/c/3/f/f1.txt v2:mtime=xxxxxxxxxx:mode=33188:user=<USER>:group=<GROUP>:type=reg:size=24 ''
dirty: peer:<TESTBASE>/test/local/c/3/f v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
dirty: peer:<TESTBASE>/test/local/c/3/e/f1.txt v2:mtime=xxxxxxxxxx:mode=33188:user=<USER>:group=<GROUP>:type=reg:size=24 ''
dirty: peer:<TESTBASE>/test/local/c/3/e v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
dirty: peer:<TESTBASE>/test/local/c/3/d/f1.txt v2:mtime=xxxxxxxxxx:mode=33188:user=<USER>:group=<GROUP>:type=reg:size=24 ''
dirty: peer:<TESTBASE>/test/local/c/3/d v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
dirty: peer:<TESTBASE>/test/local/c/3 v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
dirty: peer:<TESTBASE>/test/local/c/2/f1.txt v2:mtime=xxxxxxxxxx:mode=33188:user=<USER>:group=<GROUP>:type=reg:size=22 ''
dirty: peer:<TESTBASE>/test/local/c/2/f/f1.txt v2:mtime=xxxxxxxxxx:mode=33188:user=<USER>:group=<GROUP>:type=reg:size=24 ''
dirty: peer:<TESTBASE>/test/local/c/2/f v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
dirty: peer:<TESTBASE>/test/local/c/2/e/f1.txt v2:mtime=xxxxxxxxxx:mode=33188:user=<USER>:group=<GROUP>:type=reg:size=24 ''
dirty: peer:<TESTBASE>/test/local/c/2/e v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
dirty: peer:<TESTBASE>/test/local/c/2/d/f1.txt v2:mtime=xxxxxxxxxx:mode=33188:user=<USER>:group=<GROUP>:type=reg:size=24 ''
dirty: peer:<TESTBASE>/test/local/c/2/d v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
dirty: peer:<TESTBASE>/test/local/c/2 v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
dirty: peer:<TESTBASE>/test/local/c/1/f1.txt v2:mtime=xxxxxxxxxx:mode=33188:user=<USER>:group=<GROUP>:type=reg:size=22 ''
dirty: peer:<TESTBASE>/test/local/c/1/f/f1.txt v2:mtime=xxxxxxxxxx:mode=33188:user=<USER>:group=<GROUP>:type=reg:size=24 ''
dirty: peer:<TESTBASE>/test/local/c/1/f v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
dirty: peer:<TESTBASE>/test/local/c/1/e/f1.txt v2:mtime=xxxxxxxxxx:mode=33188:user=<USER>:group=<GROUP>:type=reg:size=24 ''
dirty: peer:<TESTBASE>/test/local/c/1/e v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
dirty: peer:<TESTBASE>/test/local/c/1/d/f1.txt v2:mtime=xxxxxxxxxx:mode=33188:user=<USER>:group=<GROUP>:type=reg:size=24 ''
dirty: peer:<TESTBASE>/test/local/c/1/d v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
dirty: peer:<TESTBASE>/test/local/c/1 v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
dirty: peer:<TESTBASE>/test/local/c v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
dirty: peer:<TESTBASE>/test/local/b/f1.txt v2:mtime=xxxxxxxxxx:mode=33188:user=<USER>:group=<GROUP>:type=reg:size=20 ''
dirty: peer:<TESTBASE>/test/local/b/3/f1.txt v2:mtime=xxxxxxxxxx:mode=33188:user=<USER>:group=<GROUP>:type=reg:size=22 ''
dirty: peer:<TESTBASE>/test/local/b/3/f/f1.txt v2:mtime=xxxxxxxxxx:mode=33188:user=<USER>:group=<GROUP>:type=reg:size=24 ''
dirty: peer:<TESTBASE>/test/local/b/3/f v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
dirty: peer:<TESTBASE>/test/local/b/3/e/f1.txt v2:mtime=xxxxxxxxxx:mode=33188:user=<USER>:group=<GROUP>:type=reg:size=24 ''
dirty: peer:<TESTBASE>/test/local/b/3/e v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
dirty: peer:<TESTBASE>/test/local/b/3/d/f1.txt v2:mtime=xxxxxxxxxx:mode=33188:user=<USER>:group=<GROUP>:type=reg:size=24 ''
dirty: peer:<TESTBASE>/test/local/b/3/d v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
dirty: peer:<TESTBASE>/test/local/b/3 v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
dirty: peer:<TESTBASE>/test/local/b/2/f1.txt v2:mtime=xxxxxxxxxx:mode=33188:user=<USER>:group=<GROUP>:type=reg:size=22 ''
dirty: peer:<TESTBASE>/test/local/b/2/f/f1.txt v2:mtime=xxxxxxxxxx:mode=33188:user=<USER>:group=<GROUP>:type=reg:size=24 ''
dirty: peer:<TESTBASE>/test/local/b/2/f v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
dirty: peer:<TESTBASE>/test/local/b/2/e/f1.txt v2:mtime=xxxxxxxxxx:mode=33188:user=<USER>:group=<GROUP>:type=reg:size=24 ''
dirty: peer:<TESTBASE>/test/local/b/2/e v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
dirty: peer:<TESTBASE>/test/local/b/2/d/f1.txt v2:mtime=xxxxxxxxxx:mode=33188:user=<USER>:group=<GROUP>:type=reg:size=24 ''
dirty: peer:<TESTBASE>/test/local/b/2/d v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
dirty: peer:<TESTBASE>/test/local/b/2 v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
dirty: peer:<TESTBASE>/test/local/b/1/f1.txt v2:mtime=xxxxxxxxxx:mode=33188:user=<USER>:group=<GROUP>:type=reg:size=22 ''
dirty: peer:<TESTBASE>/test/local/b/1/f/f1.txt v2:mtime=xxxxxxxxxx:mode=33188:user=<USER>:group=<GROUP>:type=reg:size=24 ''
dirty: peer:<TESTBASE>/test/local/b/1/f v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
dirty: peer:<TESTBASE>/test/local/b/1/e/f1.txt v2:mtime=xxxxxxxxxx:mode=33188:user=<USER>:group=<GROUP>:type=reg:size=24 ''
dirty: peer:<TESTBASE>/test/local/b/1/e v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
dirty: peer:<TESTBASE>/test/local/b/1/d/f1.txt v2:mtime=xxxxxxxxxx:mode=33188:user=<USER>:group=<GROUP>:type=reg:size=24 ''
dirty: peer:<TESTBASE>/test/local/b/1/d v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
dirty: peer:<TESTBASE>/test/local/b/1 v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
dirty: peer:<TESTBASE>/test/local/b v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
dirty: peer:<TESTBASE>/test/local/a/f1.txt v2:mtime=xxxxxxxxxx:mode=33188:user=<USER>:group=<GROUP>:type=reg:size=20 ''
dirty: peer:<TESTBASE>/test/local/a/3/f1.txt v2:mtime=xxxxxxxxxx:mode=33188:user=<USER>:group=<GROUP>:type=reg:size=22 ''
dirty: peer:<TESTBASE>/test/local/a/3/f/f1.txt v2:mtime=xxxxxxxxxx:mode=33188:user=<USER>:group=<GROUP>:type=reg:size=24 ''
dirty: peer:<TESTBASE>/test/local/a/3/f v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
dirty: peer:<TESTBASE>/test/local/a/3/e/f1.txt v2:mtime=xxxxxxxxxx:mode=33188:user=<USER>:group=<GROUP>:type=reg:size=24 ''
dirty: peer:<TESTBASE>/test/local/a/3/e v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
dirty: peer:<TESTBASE>/test/local/a/3/d/f1.txt v2:mtime=xxxxxxxxxx:mode=33188:user=<USER>:group=<GROUP>:type=reg:size=24 ''
dirty: peer:<TESTBASE>/test/local/a/3/d v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
dirty: peer:<TESTBASE>/test/local/a/3 v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
dirty: peer:<TESTBASE>/test/local/a/2/f1.txt v2:mtime=xxxxxxxxxx:mode=33188:user=<USER>:group=<GROUP>:type=reg:size=22 ''
dirty: peer:<TESTBASE>/test/local/a/2/f/f1.txt v2:mtime=xxxxxxxxxx:mode=33188:user=<USER>:group=<GROUP>:type=reg:size=24 ''
dirty: peer:<TESTBASE>/test/local/a/2/f v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
dirty: peer:<TESTBASE>/test/local/a/2/e/f1.txt v2:mtime=xxxxxxxxxx:mode=33188:user=<USER>:group=<GROUP>:type=reg:size=24 ''
dirty: peer:<TESTBASE>/test/local/a/2/e v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
dirty: peer:<TESTBASE>/test/local/a/2/d/f1.txt v2:mtime=xxxxxxxxxx:mode=33188:user=<USER>:group=<GROUP>:type=reg:size=24 ''
dirty: peer:<TESTBASE>/test/local/a/2/d v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
dirty: peer:<TESTBASE>/test/local/a/2 v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
dirty: peer:<TESTBASE>/test/local/a/1/f1.txt v2:mtime=xxxxxxxxxx:mode=33188:user=<USER>:group=<GROUP>:type=reg:size=22 ''
dirty: peer:<TESTBASE>/test/local/a/1/f/f1.txt v2:mtime=xxxxxxxxxx:mode=33188:user=<USER>:group=<GROUP>:type=reg:size=24 ''
dirty: peer:<TESTBASE>/test/local/a/1/f v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
dirty: peer:<TESTBASE>/test/local/a/1/e/f1.txt v2:mtime=xxxxxxxxxx:mode=33188:user=<USER>:group=<GROUP>:type=reg:size=24 ''
dirty: peer:<TESTBASE>/test/local/a/1/e v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
dirty: peer:<TESTBASE>/test/local/a/1/d/f1.txt v2:mtime=xxxxxxxxxx:mode=33188:user=<USER>:group=<GROUP>:type=reg:size=24 ''
dirty: peer:<TESTBASE>/test/local/a/1/d v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
dirty: peer:<TESTBASE>/test/local/a/1 v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
dirty: peer:<TESTBASE>/test/local/a v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
dirty: peer:<TESTBASE>/test/local v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
Got dirty files from host peer
Connecting to host peer (PLAIN) ...
Looking for alternative host:port for peer
Using alternative port to localhost:30861 
Connecting to localhost:30861 from local
Using specific address 127.x.x.x
Connected to localhost:30861 
CONN peer < CONFIG 

CONN peer > 'OK (cmd_finished).'
CONN peer < DEBUG 2

CONN peer > 'OK (cmd_finished).'
CONN peer < HELLO local

CONN peer > 'OK (cmd_finished).'
Dirty (missing) item <TESTBASE>/test/local RM NULL 0
Deleting peer:<TESTBASE>/test/local
CONN peer < STAT %25test%25 
CONN peer > 'OK (data_follows).'
CONN peer > 'v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=<USER>%3Agroup=<GROUP>%3Atype=dir'
delete flags: 0
CONN peer < DEL %25test%25 
CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local (0)
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  (filename = ? OR filename LIKE ?) , param1: <TESTBASE>/test/local, param2: <TESTBASE>/test/local/%, param3: local
DELETE (<TESTBASE>/test/local) Last dir: <TESTBASE>/test/local/. rc: 4
Dirty (missing) item <TESTBASE>/test/local/a RM NULL 0
Skipping matched file (<TESTBASE>/test/local/a) from deleted directory (<TESTBASE>/test/local/)
Dirty (missing) item <TESTBASE>/test/local/a/1 RM NULL 0
Skipping matched file (<TESTBASE>/test/local/a/1) from deleted directory (<TESTBASE>/test/local/)
Dirty (missing) item <TESTBASE>/test/local/a/1/d RM NULL 0
Skipping matched file (<TESTBASE>/test/local/a/1/d) from deleted directory (<TESTBASE>/test/local/)
Dirty (missing) item <TESTBASE>/test/local/a/1/d/f1.txt RM NULL 0
Skipping matched file (<TESTBASE>/test/local/a/1/d/f1.txt) from deleted directory (<TESTBASE>/test/local/)
Dirty (missing) item <TESTBASE>/test/local/a/1/e RM NULL 0
Skipping matched file (<TESTBASE>/test/local/a/1/e) from deleted directory (<TESTBASE>/test/local/)
Dirty (missing) item <TESTBASE>/test/local/a/1/e/f1.txt RM NULL 0
Skipping matched file (<TESTBASE>/test/local/a/1/e/f1.txt) from deleted directory (<TESTBASE>/test/local/)
Dirty (missing) item <TESTBASE>/test/local/a/1/f RM NULL 0
Skipping matched file (<TESTBASE>/test/local/a/1/f) from deleted directory (<TESTBASE>/test/local/)
Dirty (missing) item <TESTBASE>/test/local/a/1/f/f1.txt RM NULL 0
Skipping matched file (<TESTBASE>/test/local/a/1/f/f1.txt) from deleted directory (<TESTBASE>/test/local/)
Dirty (missing) item <TESTBASE>/test/local/a/1/f1.txt RM NULL 0
Skipping matched file (<TESTBASE>/test/local/a/1/f1.txt) from deleted directory (<TESTBASE>/test/local/)
Dirty (missing) item <TESTBASE>/test/local/a/2 RM NULL 0
Skipping matched file (<TESTBASE>/test/local/a/2) from deleted directory (<TESTBASE>/test/local/)
Dirty (missing) item <TESTBASE>/test/local/a/2/d RM NULL 0
Skipping matched file (<TESTBASE>/test/local/a/2/d) from deleted directory (<TESTBASE>/test/local/)
Dirty (missing) item <TESTBASE>/test/local/a/2/d/f1.txt RM NULL 0
Skipping matched file (<TESTBASE>/test/local/a/2/d/f1.txt) from deleted directory (<TESTBASE>/test/local/)
Dirty (missing) item <TESTBASE>/test/local/a/2/e RM NULL 0
Skipping matched file (<TESTBASE>/test/local/a/2/e) from deleted directory (<TESTBASE>/test/local/)
Dirty (missing) item <TESTBASE>/test/local/a/2/e/f1.txt RM NULL 0
Skipping matched file (<TESTBASE>/test/local/a/2/e/f1.txt) from deleted directory (<TESTBASE>/test/local/)
Dirty (missing) item <TESTBASE>/test/local/a/2/f RM NULL 0
Skipping matched file (<TESTBASE>/test/local/a/2/f) from deleted directory (<TESTBASE>/test/local/)
Dirty (missing) item <TESTBASE>/test/local/a/2/f/f1.txt RM NULL 0
Skipping matched file (<TESTBASE>/test/local/a/2/f/f1.txt) from deleted directory (<TESTBASE>/test/local/)
Dirty (missing) item <TESTBASE>/test/local/a/2/f1.txt RM NULL 0
Skipping matched file (<TESTBASE>/test/local/a/2/f1.txt) from deleted directory (<TESTBASE>/test/local/)
Dirty (missing) item <TESTBASE>/test/local/a/3 RM NULL 0
Skipping matched file (<TESTBASE>/test/local/a/3) from deleted directory (<TESTBASE>/test/local/)
Dirty (missing) item <TESTBASE>/test/local/a/3/d RM NULL 0
Skipping matched file (<TESTBASE>/test/local/a/3/d) from deleted directory (<TESTBASE>/test/local/)
Dirty (missing) item <TESTBASE>/test/local/a/3/d/f1.txt RM NULL 0
Skipping matched file (<TESTBASE>/test/local/a/3/d/f1.txt) from deleted directory (<TESTBASE>/test/local/)
Dirty (missing) item <TESTBASE>/test/local/a/3/e RM NULL 0
Skipping matched file (<TESTBASE>/test/local/a/3/e) from deleted directory (<TESTBASE>/test/local/)
Dirty (missing) item <TESTBASE>/test/local/a/3/e/f1.txt RM NULL 0
Skipping matched file (<TESTBASE>/test/local/a/3/e/f1.txt) from deleted directory (<TESTBASE>/test/local/)
Dirty (missing) item <TESTBASE>/test/local/a/3/f RM NULL 0
Skipping matched file (<TESTBASE>/test/local/a/3/f) from deleted directory (<TESTBASE>/test/local/)
Dirty (missing) item <TESTBASE>/test/local/a/3/f/f1.txt RM NULL 0
Skipping matched file (<TESTBASE>/test/local/a/3/f/f1.txt) from deleted directory (<TESTBASE>/test/local/)
Dirty (missing) item <TESTBASE>/test/local/a/3/f1.txt RM NULL 0
Skipping matched file (<TESTBASE>/test/local/a/3/f1.txt) from deleted directory (<TESTBASE>/test/local/)
Dirty (missing) item <TESTBASE>/test/local/a/f1.txt RM NULL 0
Skipping matched file (<TESTBASE>/test/local/a/f1.txt) from deleted directory (<TESTBASE>/test/local/)
Dirty (missing) item <TESTBASE>/test/local/b RM NULL 0
Skipping matched file (<TESTBASE>/test/local/b) from deleted directory (<TESTBASE>/test/local/)
Dirty (missing) item <TESTBASE>/test/local/b/1 RM NULL 0
Skipping matched file (<TESTBASE>/test/local/b/1) from deleted directory (<TESTBASE>/test/local/)
Dirty (missing) item <TESTBASE>/test/local/b/1/d RM NULL 0
Skipping matched file (<TESTBASE>/test/local/b/1/d) from deleted directory (<TESTBASE>/test/local/)
Dirty (missing) item <TESTBASE>/test/local/b/1/d/f1.txt RM NULL 0
Skipping matched file (<TESTBASE>/test/local/b/1/d/f1.txt) from deleted directory (<TESTBASE>/test/local/)
Dirty (missing) item <TESTBASE>/test/local/b/1/e RM NULL 0
Skipping matched file (<TESTBASE>/test/local/b/1/e) from deleted directory (<TESTBASE>/test/local/)
Dirty (missing) item <TESTBASE>/test/local/b/1/e/f1.txt RM NULL 0
Skipping matched file (<TESTBASE>/test/local/b/1/e/f1.txt) from deleted directory (<TESTBASE>/test/local/)
Dirty (missing) item <TESTBASE>/test/local/b/1/f RM NULL 0
Skipping matched file (<TESTBASE>/test/local/b/1/f) from deleted directory (<TESTBASE>/test/local/)
Dirty (missing) item <TESTBASE>/test/local/b/1/f/f1.txt RM NULL 0
Skipping matched file (<TESTBASE>/test/local/b/1/f/f1.txt) from deleted directory (<TESTBASE>/test/local/)
Dirty (missing) item <TESTBASE>/test/local/b/1/f1.txt RM NULL 0
Skipping matched file (<TESTBASE>/test/local/b/1/f1.txt) from deleted directory (<TESTBASE>/test/local/)
Dirty (missing) item <TESTBASE>/test/local/b/2 RM NULL 0
Skipping matched file (<TESTBASE>/test/local/b/2) from deleted directory (<TESTBASE>/test/local/)
Dirty (missing) item <TESTBASE>/test/local/b/2/d RM NULL 0
Skipping matched file (<TESTBASE>/test/local/b/2/d) from deleted directory (<TESTBASE>/test/local/)
Dirty (missing) item <TESTBASE>/test/local/b/2/d/f1.txt RM NULL 0
Skipping matched file (<TESTBASE>/test/local/b/2/d/f1.txt) from deleted directory (<TESTBASE>/test/local/)
Dirty (missing) item <TESTBASE>/test/local/b/2/e RM NULL 0
Skipping matched file (<TESTBASE>/test/local/b/2/e) from deleted directory (<TESTBASE>/test/local/)
Dirty (missing) item <TESTBASE>/test/local/b/2/e/f1.txt RM NULL 0
Skipping matched file (<TESTBASE>/test/local/b/2/e/f1.txt) from deleted directory (<TESTBASE>/test/local/)
Dirty (missing) item <TESTBASE>/test/local/b/2/f RM NULL 0
Skipping matched file (<TESTBASE>/test/local/b/2/f) from deleted directory (<TESTBASE>/test/local/)
Dirty (missing) item <TESTBASE>/test/local/b/2/f/f1.txt RM NULL 0
Skipping matched file (<TESTBASE>/test/local/b/2/f/f1.txt) from deleted directory (<TESTBASE>/test/local/)
Dirty (missing) item <TESTBASE>/test/local/b/2/f1.txt RM NULL 0
Skipping matched file (<TESTBASE>/test/local/b/2/f1.txt) from deleted directory (<TESTBASE>/test/local/)
Dirty (missing) item <TESTBASE>/test/local/b/3 RM NULL 0
Skipping matched file (<TESTBASE>/test/local/b/3) from deleted directory (<TESTBASE>/test/local/)
Dirty (missing) item <TESTBASE>/test/local/b/3/d RM NULL 0
Skipping matched file (<TESTBASE>/test/local/b/3/d) from deleted directory (<TESTBASE>/test/local/)
Dirty (missing) item <TESTBASE>/test/local/b/3/d/f1.txt RM NULL 0
Skipping matched file (<TESTBASE>/test/local/b/3/d/f1.txt) from deleted directory (<TESTBASE>/test/local/)
Dirty (missing) item <TESTBASE>/test/local/b/3/e RM NULL 0
Skipping matched file (<TESTBASE>/test/local/b/3/e) from deleted directory (<TESTBASE>/test/local/)
Dirty (missing) item <TESTBASE>/test/local/b/3/e/f1.txt RM NULL 0
Skipping matched file (<TESTBASE>/test/local/b/3/e/f1.txt) from deleted directory (<TESTBASE>/test/local/)
Dirty (missing) item <TESTBASE>/test/local/b/3/f RM NULL 0
Skipping matched file (<TESTBASE>/test/local/b/3/f) from deleted directory (<TESTBASE>/test/local/)
Dirty (missing) item <TESTBASE>/test/local/b/3/f/f1.txt RM NULL 0
Skipping matched file (<TESTBASE>/test/local/b/3/f/f1.txt) from deleted directory (<TESTBASE>/test/local/)
Dirty (missing) item <TESTBASE>/test/local/b/3/f1.txt RM NULL 0
Skipping matched file (<TESTBASE>/test/local/b/3/f1.txt) from deleted directory (<TESTBASE>/test/local/)
Dirty (missing) item <TESTBASE>/test/local/b/f1.txt RM NULL 0
Skipping matched file (<TESTBASE>/test/local/b/f1.txt) from deleted directory (<TESTBASE>/test/local/)
Dirty (missing) item <TESTBASE>/test/local/c RM NULL 0
Skipping matched file (<TESTBASE>/test/local/c) from deleted directory (<TESTBASE>/test/local/)
Dirty (missing) item <TESTBASE>/test/local/c/1 RM NULL 0
Skipping matched file (<TESTBASE>/test/local/c/1) from deleted directory (<TESTBASE>/test/local/)
Dirty (missing) item <TESTBASE>/test/local/c/1/d RM NULL 0
Skipping matched file (<TESTBASE>/test/local/c/1/d) from deleted directory (<TESTBASE>/test/local/)
Dirty (missing) item <TESTBASE>/test/local/c/1/d/f1.txt RM NULL 0
Skipping matched file (<TESTBASE>/test/local/c/1/d/f1.txt) from deleted directory (<TESTBASE>/test/local/)
Dirty (missing) item <TESTBASE>/test/local/c/1/e RM NULL 0
Skipping matched file (<TESTBASE>/test/local/c/1/e) from deleted directory (<TESTBASE>/test/local/)
Dirty (missing) item <TESTBASE>/test/local/c/1/e/f1.txt RM NULL 0
Skipping matched file (<TESTBASE>/test/local/c/1/e/f1.txt) from deleted directory (<TESTBASE>/test/local/)
Dirty (missing) item <TESTBASE>/test/local/c/1/f RM NULL 0
Skipping matched file (<TESTBASE>/test/local/c/1/f) from deleted directory (<TESTBASE>/test/local/)
Dirty (missing) item <TESTBASE>/test/local/c/1/f/f1.txt RM NULL 0
Skipping matched file (<TESTBASE>/test/local/c/1/f/f1.txt) from deleted directory (<TESTBASE>/test/local/)
Dirty (missing) item <TESTBASE>/test/local/c/1/f1.txt RM NULL 0
Skipping matched file (<TESTBASE>/test/local/c/1/f1.txt) from deleted directory (<TESTBASE>/test/local/)
Dirty (missing) item <TESTBASE>/test/local/c/2 RM NULL 0
Skipping matched file (<TESTBASE>/test/local/c/2) from deleted directory (<TESTBASE>/test/local/)
Dirty (missing) item <TESTBASE>/test/local/c/2/d RM NULL 0
Skipping matched file (<TESTBASE>/test/local/c/2/d) from deleted directory (<TESTBASE>/test/local/)
Dirty (missing) item <TESTBASE>/test/local/c/2/d/f1.txt RM NULL 0
Skipping matched file (<TESTBASE>/test/local/c/2/d/f1.txt) from deleted directory (<TESTBASE>/test/local/)
Dirty (missing) item <TESTBASE>/test/local/c/2/e RM NULL 0
Skipping matched file (<TESTBASE>/test/local/c/2/e) from deleted directory (<TESTBASE>/test/local/)
Dirty (missing) item <TESTBASE>/test/local/c/2/e/f1.txt RM NULL 0
Skipping matched file (<TESTBASE>/test/local/c/2/e/f1.txt) from deleted directory (<TESTBASE>/test/local/)
Dirty (missing) item <TESTBASE>/test/local/c/2/f RM NULL 0
Skipping matched file (<TESTBASE>/test/local/c/2/f) from deleted directory (<TESTBASE>/test/local/)
Dirty (missing) item <TESTBASE>/test/local/c/2/f/f1.txt RM NULL 0
Skipping matched file (<TESTBASE>/test/local/c/2/f/f1.txt) from deleted directory (<TESTBASE>/test/local/)
Dirty (missing) item <TESTBASE>/test/local/c/2/f1.txt RM NULL 0
Skipping matched file (<TESTBASE>/test/local/c/2/f1.txt) from deleted directory (<TESTBASE>/test/local/)
Dirty (missing) item <TESTBASE>/test/local/c/3 RM NULL 0
Skipping matched file (<TESTBASE>/test/local/c/3) from deleted directory (<TESTBASE>/test/local/)
Dirty (missing) item <TESTBASE>/test/local/c/3/d RM NULL 0
Skipping matched file (<TESTBASE>/test/local/c/3/d) from deleted directory (<TESTBASE>/test/local/)
Dirty (missing) item <TESTBASE>/test/local/c/3/d/f1.txt RM NULL 0
Skipping matched file (<TESTBASE>/test/local/c/3/d/f1.txt) from deleted directory (<TESTBASE>/test/local/)
Dirty (missing) item <TESTBASE>/test/local/c/3/e RM NULL 0
Skipping matched file (<TESTBASE>/test/local/c/3/e) from deleted directory (<TESTBASE>/test/local/)
Dirty (missing) item <TESTBASE>/test/local/c/3/e/f1.txt RM NULL 0
Skipping matched file (<TESTBASE>/test/local/c/3/e/f1.txt) from deleted directory (<TESTBASE>/test/local/)
Dirty (missing) item <TESTBASE>/test/local/c/3/f RM NULL 0
Skipping matched file (<TESTBASE>/test/local/c/3/f) from deleted directory (<TESTBASE>/test/local/)
Dirty (missing) item <TESTBASE>/test/local/c/3/f/f1.txt RM NULL 0
Skipping matched file (<TESTBASE>/test/local/c/3/f/f1.txt) from deleted directory (<TESTBASE>/test/local/)
Dirty (missing) item <TESTBASE>/test/local/c/3/f1.txt RM NULL 0
Skipping matched file (<TESTBASE>/test/local/c/3/f1.txt) from deleted directory (<TESTBASE>/test/local/)
Dirty (missing) item <TESTBASE>/test/local/c/f1.txt RM NULL 0
Skipping matched file (<TESTBASE>/test/local/c/f1.txt) from deleted directory (<TESTBASE>/test/local/)
CONN peer < BYE

CONN peer > 'OK (cu_later).'
