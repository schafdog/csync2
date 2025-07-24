cmd x "4. clean up" local peer test
csync_hostinfo 0x0
standalone: 0 server_standalone > 0: false
Config-File:   csync2_pgsql_local.cfg
Prefix 'test' is set to '<TESTBASE>/test/local'.
New host alias: local: localhost 30860
New host alias: peer: localhost 30861
New host alias: other: localhost 30862
New group: test
New group:host: test peer
New group:host: test other
New group:host:pattern test other %test%
New group:host:pattern test other %test%/autoresolve
New group:host:pattern test other *~
New group:host:pattern test other *.o
New group:host:pattern test other .*.XXXXXX
New group: first
New group:host: first peer
New group:host: first other
New group:host:pattern first other %test%/auto/first
New group: younger
New group:host: younger peer
New group:host: younger other
New group:host:pattern younger other %test%/auto/younger
New group: older
New group:host: older peer
New group:host: older other
New group:host:pattern older other %test%/auto/older
New group: bigger
New group:host: bigger peer
New group:host: bigger other
New group:host:pattern bigger other %test%/auto/bigger
New group: smaller
New group:host: smaller peer
New group:host: smaller other
New group:host:pattern smaller other %test%/auto/smaller
New group: left
New group:host: left peer
New group:host: left other
New group:host:pattern left other %test%/auto/left
New group: right
New group:host: right peer
New group:host: right other
New group:host:pattern right other %test%/auto/right
New group: test_action
New group:host: test_action peer
New group:host: test_action other
New group:host:pattern test_action other %test%/action
My hostname is local.
Database File: pgsql://csync2:csync238@localhost/csync2_local
DB Version:    2
IP Version:    IPv4
GIT:           14407d2a82844ea3e9d2807313d34f7947c7fc2e-dirty
Opening shared library libpq.so
Reading symbols from shared library libpq.so
Connecting to redis localhost:6379
csync_file_args: '<TESTBASE>/test' flags 65 
Running recursive check for <TESTBASE>/test ...
Checking recursive for modified files <TESTBASE>/test 
csync_check_dir: <TESTBASE>/test 65 
Checking <TESTBASE>/test/* ..
Calling check_mod on <TESTBASE>/test/peer from <TESTBASE>/test
No match. Don't check at all: <TESTBASE>/test/peer
Checking for deleted files <TESTBASE>/test recursive.
File <TESTBASE>/test. Hostname: local 
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/recursive
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/recursive/1
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/recursive/1/2
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/recursive/1/2/3
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/recursive/1/2/3/4
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/recursive/1/2/3/4/5
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/recursive/1/2/3/4/5/file.c
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/recursive/1/2/3/4/5/file.c
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/recursive/1/2/3/4/5/file.c
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/recursive/1/2/3/4/5/file.c' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/recursive/1/2/3/4/5/file.c' '-'.
mark other: RM(64) Old operation: NEW(2) '<TESTBASE>/test/local/recursive/1/2/3/4/5/file.c' ''
mark operation NEW -> RM other:<TESTBASE>/test/local/recursive/1/2/3/4/5/file.c deleted before syncing. Removing from dirty.
Found row: file '%s' clean_other: '%s' result_other: '%s' dirty: %d operation %d 
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/recursive/1/2/3/4/5
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/recursive/1/2/3/4/5
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/recursive/1/2/3/4/5' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/recursive/1/2/3/4/5' '-'.
WARN: operation changed: MKDIR(1) => MKDIR(129)
mark other: RM(64) Old operation: MKDIR(1) '<TESTBASE>/test/local/recursive/1/2/3/4/5' ''
mark operation MKDIR -> RM other:<TESTBASE>/test/local/recursive/1/2/3/4/5 deleted before syncing. Removing from dirty.
Found row: file '%s' clean_other: '%s' result_other: '%s' dirty: %d operation %d 
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/recursive/1/2/3/4
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/recursive/1/2/3/4
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/recursive/1/2/3/4' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/recursive/1/2/3/4' '-'.
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/recursive/1/2/3
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/recursive/1/2/3
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/recursive/1/2/3' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/recursive/1/2/3' '-'.
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/recursive/1/2
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/recursive/1/2
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/recursive/1/2' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/recursive/1/2' '-'.
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/recursive/1
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/recursive/1
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/recursive/1' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/recursive/1' '-'.
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/recursive
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/recursive
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/recursive' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/recursive' '-'.
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local
mark other operation: 'RM' 'peer:<TESTBASE>/test/local' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local' '-'.
get dirty host
dirty host other 
dirty host peer 
DIRTY LOOKUP: '<TESTBASE>/test/local/recursive/1/2/3/4/5/file.c' 'v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=11'
compare file with pattern <TESTBASE>/test
dirty: peer:<TESTBASE>/test/local/recursive/1/2/3/4/5/file.c v2:mtime=xxxxxxxxxx:mode=33188:user=<USER>:group=<GROUP>:type=reg:size=11 ''
DIRTY LOOKUP: '<TESTBASE>/test/local/recursive/1/2/3/4/5' 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir'
compare file with pattern <TESTBASE>/test
dirty: peer:<TESTBASE>/test/local/recursive/1/2/3/4/5 v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
DIRTY LOOKUP: '<TESTBASE>/test/local/recursive/1/2/3/4' 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir'
compare file with pattern <TESTBASE>/test
dirty: peer:<TESTBASE>/test/local/recursive/1/2/3/4 v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
DIRTY LOOKUP: '<TESTBASE>/test/local/recursive/1/2/3' 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir'
compare file with pattern <TESTBASE>/test
dirty: peer:<TESTBASE>/test/local/recursive/1/2/3 v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
DIRTY LOOKUP: '<TESTBASE>/test/local/recursive/1/2' 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir'
compare file with pattern <TESTBASE>/test
dirty: peer:<TESTBASE>/test/local/recursive/1/2 v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
DIRTY LOOKUP: '<TESTBASE>/test/local/recursive/1' 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir'
compare file with pattern <TESTBASE>/test
dirty: peer:<TESTBASE>/test/local/recursive/1 v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
DIRTY LOOKUP: '<TESTBASE>/test/local/recursive' 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir'
compare file with pattern <TESTBASE>/test
dirty: peer:<TESTBASE>/test/local/recursive v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
DIRTY LOOKUP: '<TESTBASE>/test/local' 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir'
compare file with pattern <TESTBASE>/test
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
read_conn_status 'OK (cmd_finished).' 0
CONN peer < DEBUG 3

CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
CONN peer < HELLO local

CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
Dirty (missing) item <TESTBASE>/test/local RM  0
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local
Deleting peer:<TESTBASE>/test/local
CONN peer < STAT %25test%25 
CONN peer > 'OK (data_follows).'
read_conn_status 'OK (data_follows).' 0
CONN peer > 'v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=<USER>%3Agroup=<GROUP>%3Atype=dir'
delete flags: 0
csync_cmpchecktxt A: v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir 
csync_cmpchecktxt B: --- 
<TESTBASE>/test/local is different on peer (cktxt char #1).
>>> PEER:  v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir
>>> LOCAL: ---
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local
CONN peer < DEL %25test%25 
CONN peer > 'IDENT (cmd_finished).'
read_conn_status 'IDENT (cmd_finished).' 4
Clear dirty peer:<TESTBASE>/test/local (0)
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  (filename = ? OR filename LIKE ?) , param1: <TESTBASE>/test/local, param2: <TESTBASE>/test/local/%, param3: local
DELETE (<TESTBASE>/test/local) Last dir: <TESTBASE>/test/local/. rc: 4
Dirty (missing) item <TESTBASE>/test/local/recursive RM  0
Skipping matched file (<TESTBASE>/test/local/recursive) from deleted directory (<TESTBASE>/test/local/)
Dirty (missing) item <TESTBASE>/test/local/recursive/1 RM  0
Skipping matched file (<TESTBASE>/test/local/recursive/1) from deleted directory (<TESTBASE>/test/local/)
Dirty (missing) item <TESTBASE>/test/local/recursive/1/2 RM  0
Skipping matched file (<TESTBASE>/test/local/recursive/1/2) from deleted directory (<TESTBASE>/test/local/)
Dirty (missing) item <TESTBASE>/test/local/recursive/1/2/3 RM  0
Skipping matched file (<TESTBASE>/test/local/recursive/1/2/3) from deleted directory (<TESTBASE>/test/local/)
Dirty (missing) item <TESTBASE>/test/local/recursive/1/2/3/4 RM  0
Skipping matched file (<TESTBASE>/test/local/recursive/1/2/3/4) from deleted directory (<TESTBASE>/test/local/)
Dirty (missing) item <TESTBASE>/test/local/recursive/1/2/3/4/5 RM  0
Skipping matched file (<TESTBASE>/test/local/recursive/1/2/3/4/5) from deleted directory (<TESTBASE>/test/local/)
Dirty (missing) item <TESTBASE>/test/local/recursive/1/2/3/4/5/file.c RM  0
Skipping matched file (<TESTBASE>/test/local/recursive/1/2/3/4/5/file.c) from deleted directory (<TESTBASE>/test/local/)
CONN peer < BYE

CONN peer > 'OK (cu_later).'
read_conn_status 'OK (cu_later).' 0
MODE 65536
Redis closed.
csync_config_destroy
csync_config_destroy end
