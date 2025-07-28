cmd c "7 Check local (younger)" local peer test
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
Calling check_mod on <TESTBASE>/test/local from <TESTBASE>/test
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local
Redis reply: GET 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/local' -> NULL
csync_cmpchecktxt A: v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir 
csync_cmpchecktxt B: v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir 
<TESTBASE>/test/local has changed: 
    v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir 
DB: v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir MKDIR
ignore flags: 65
check_file: calc_digest: 0 dirty: 2 is_upgrade 0 dev_change: 0
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local
mark other operation: 'MOD_DIR' 'peer:<TESTBASE>/test/local' '-'.
mark other operation: 'MOD_DIR' 'other:<TESTBASE>/test/local' '-'.
mark other: MOD_DIR(129) Old operation: MKDIR(1) '<TESTBASE>/test/local' ''
mark operation NEW -> MOD => NEW other:<TESTBASE>/test/local (not synced) .
Found row: file '%s' clean_other: '%s' result_other: '%s' dirty: %d operation %d 
INSERT/UPDATE: <TESTBASE>/test/local 
Inserted/updated <TESTBASE>/test/local rows matched: 1
csync_check_dir: <TESTBASE>/test/local 193 
Checking <TESTBASE>/test/local/* ..
Calling check_mod on <TESTBASE>/test/local/auto from <TESTBASE>/test/local
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/auto
Redis reply: GET 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/local/auto' -> NULL
csync_cmpchecktxt A: v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir 
csync_cmpchecktxt B: v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir 
<TESTBASE>/test/local/auto has changed: 
    v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir 
DB: v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir MKDIR
ignore flags: 193
check_file: calc_digest: 0 dirty: 2 is_upgrade 0 dev_change: 0
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/auto
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/auto
mark other operation: 'MOD_DIR' 'peer:<TESTBASE>/test/local/auto' '-'.
mark other operation: 'MOD_DIR' 'other:<TESTBASE>/test/local/auto' '-'.
mark other: MOD_DIR(129) Old operation: MKDIR(1) '<TESTBASE>/test/local/auto' ''
mark operation NEW -> MOD => NEW other:<TESTBASE>/test/local/auto (not synced) .
Found row: file '%s' clean_other: '%s' result_other: '%s' dirty: %d operation %d 
INSERT/UPDATE: <TESTBASE>/test/local/auto 
Inserted/updated <TESTBASE>/test/local/auto rows matched: 1
csync_check_dir: <TESTBASE>/test/local/auto 193 
Checking <TESTBASE>/test/local/auto/* ..
Calling check_mod on <TESTBASE>/test/local/auto/younger from <TESTBASE>/test/local/auto
Match (+): <TESTBASE>/test/local/auto/younger on <TESTBASE>/test/local/auto/younger
Redis reply: GET 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/local/auto/younger' -> NULL
csync_cmpchecktxt A: v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir 
csync_cmpchecktxt B: v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir 
<TESTBASE>/test/local/auto/younger has changed: 
    v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir 
DB: v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir MKDIR
ignore flags: 193
check_file: calc_digest: 0 dirty: 2 is_upgrade 0 dev_change: 0
Match (+): <TESTBASE>/test/local/auto/younger on <TESTBASE>/test/local/auto/younger
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/auto/younger
Match (+): <TESTBASE>/test/local/auto/younger on <TESTBASE>/test/local/auto/younger
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/auto/younger
mark other operation: 'MOD_DIR' 'peer:<TESTBASE>/test/local/auto/younger' '-'.
mark other operation: 'MOD_DIR' 'other:<TESTBASE>/test/local/auto/younger' '-'.
mark other: MOD_DIR(129) Old operation: MKDIR(1) '<TESTBASE>/test/local/auto/younger' ''
mark operation NEW -> MOD => NEW other:<TESTBASE>/test/local/auto/younger (not synced) .
Found row: file '%s' clean_other: '%s' result_other: '%s' dirty: %d operation %d 
INSERT/UPDATE: <TESTBASE>/test/local/auto/younger 
Inserted/updated <TESTBASE>/test/local/auto/younger rows matched: 1
csync_check_dir: <TESTBASE>/test/local/auto/younger 193 
Checking <TESTBASE>/test/local/auto/younger/* ..
Calling check_mod on <TESTBASE>/test/local/auto/younger/local_oldest from <TESTBASE>/test/local/auto/younger
Match (+): <TESTBASE>/test/local/auto/younger on <TESTBASE>/test/local/auto/younger/local_oldest
Redis reply: GET 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/local/auto/younger/local_oldest' -> NULL
csync_cmpchecktxt A: v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=14 
csync_cmpchecktxt B: v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=12 
<TESTBASE>/test/local/auto/younger/local_oldest has changed: 
    v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=14 
DB: v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=12 NEW
ignore flags: 193
check_file: calc_digest: 0 dirty: 2 is_upgrade 0 dev_change: 0
Match (+): <TESTBASE>/test/local/auto/younger on <TESTBASE>/test/local/auto/younger/local_oldest
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/auto/younger/local_oldest
Match (+): <TESTBASE>/test/local/auto/younger on <TESTBASE>/test/local/auto/younger/local_oldest
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/auto/younger/local_oldest
mark other operation: 'MOD' 'peer:<TESTBASE>/test/local/auto/younger/local_oldest' '-'.
mark other: MOD(130) Old operation: NEW(2) '<TESTBASE>/test/local/auto/younger/local_oldest' ''
mark operation NEW -> MOD => NEW peer:<TESTBASE>/test/local/auto/younger/local_oldest (not synced) .
Found row: file '%s' clean_other: '%s' result_other: '%s' dirty: %d operation %d 
mark other operation: 'MOD' 'other:<TESTBASE>/test/local/auto/younger/local_oldest' '-'.
mark other: MOD(130) Old operation: NEW(2) '<TESTBASE>/test/local/auto/younger/local_oldest' ''
mark operation NEW -> MOD => NEW other:<TESTBASE>/test/local/auto/younger/local_oldest (not synced) .
Found row: file '%s' clean_other: '%s' result_other: '%s' dirty: %d operation %d 
INSERT/UPDATE: <TESTBASE>/test/local/auto/younger/local_oldest b228c706dbe64af26f59f8164031636a2f72f2d2
Inserted/updated <TESTBASE>/test/local/auto/younger/local_oldest rows matched: 1
Checking for deleted files <TESTBASE>/test recursive.
File <TESTBASE>/test. Hostname: local 
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/auto
Match (+): <TESTBASE>/test/local/auto/younger on <TESTBASE>/test/local/auto/younger
Match (+): <TESTBASE>/test/local/auto/younger on <TESTBASE>/test/local/auto/younger/local_oldest
MODE 2
Redis closed.
csync_config_destroy
csync_config_destroy end
