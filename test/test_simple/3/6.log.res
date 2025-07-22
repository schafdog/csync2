cmd x "clean up" local peer test/local
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
GIT:           c150c89d8255014e65a1e0903401ab4fe3ff8a25-dirty
Opening shared library libpq.dylib
Reading symbols from shared library libpq.dylib
Connecting to redis localhost:6379
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local
csync_file_args: '<TESTBASE>/test/local' flags 65 
Running recursive check for <TESTBASE>/test/local ...
Checking recursive for modified files <TESTBASE>/test/local 
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local
check_mod: No such file '<TESTBASE>/test/local' .
Checking for deleted files <TESTBASE>/test/local recursive.
File <TESTBASE>/test/local. Hostname: local 
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/.Test
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/A
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new_file 'N' all
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new_file 'N' all
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new_file 'N' all
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/new_file 'N' all' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/new_file 'N' all' '-'.
mark other: RM(64) Old operation: NEW(2) '<TESTBASE>/test/local/new_file 'N' all' ''
mark operation NEW -> RM other:<TESTBASE>/test/local/new_file 'N' all deleted before syncing. Removing from dirty.
Found row: file '%s' clean_other: '%s' result_other: '%s' dirty: %d operation %d 
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/A
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/A
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/A' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/A' '-'.
mark other: RM(64) Old operation: NEW(2) '<TESTBASE>/test/local/A' ''
mark operation NEW -> RM other:<TESTBASE>/test/local/A deleted before syncing. Removing from dirty.
Found row: file '%s' clean_other: '%s' result_other: '%s' dirty: %d operation %d 
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/.Test
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/.Test
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/.Test' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/.Test' '-'.
mark other: RM(64) Old operation: NEW(2) '<TESTBASE>/test/local/.Test' ''
mark operation NEW -> RM other:<TESTBASE>/test/local/.Test deleted before syncing. Removing from dirty.
Found row: file '%s' clean_other: '%s' result_other: '%s' dirty: %d operation %d 
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local
mark other operation: 'RM' 'peer:<TESTBASE>/test/local' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local' '-'.
mark other: RM(64) Old operation: MKDIR(1) '<TESTBASE>/test/local' ''
mark operation MKDIR -> RM other:<TESTBASE>/test/local deleted before syncing. Removing from dirty.
Found row: file '%s' clean_other: '%s' result_other: '%s' dirty: %d operation %d 
get dirty host
dirty host peer 
DIRTY LOOKUP: '<TESTBASE>/test/local/new_file 'N' all' 'v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=4'
compare file with pattern <TESTBASE>/test/local
dirty: peer:<TESTBASE>/test/local/new_file 'N' all v2:mtime=xxxxxxxxxx:mode=33188:user=<USER>:group=<GROUP>:type=reg:size=4 ''
DIRTY LOOKUP: '<TESTBASE>/test/local/A' 'v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=0'
compare file with pattern <TESTBASE>/test/local
dirty: peer:<TESTBASE>/test/local/A v2:mtime=xxxxxxxxxx:mode=33188:user=<USER>:group=<GROUP>:type=reg:size=0 ''
DIRTY LOOKUP: '<TESTBASE>/test/local/.Test' 'v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=0'
compare file with pattern <TESTBASE>/test/local
dirty: peer:<TESTBASE>/test/local/.Test v2:mtime=xxxxxxxxxx:mode=33188:user=<USER>:group=<GROUP>:type=reg:size=0 ''
DIRTY LOOKUP: '<TESTBASE>/test/local' 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir'
compare file with pattern <TESTBASE>/test/local
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
