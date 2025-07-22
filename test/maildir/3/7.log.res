cmd c "check: Delete email: ln Maildir/cur/1434.M21,S=6631,W=6764:2,S Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S. mv 1434.M21,S=6631,W=6764:2,S 1434.M21,S=6631,W=6764:2,ST" local peer test
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
GIT:           ed87712401c07fac232d0f171ff40ded5a96fe77-dirty
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
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 dev_change: 0
csync_check_dir: <TESTBASE>/test/local 193 
Checking <TESTBASE>/test/local/* ..
Calling check_mod on <TESTBASE>/test/local/Maildir from <TESTBASE>/test/local
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir
Redis reply: GET 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/local/Maildir' -> NULL
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 dev_change: 0
csync_check_dir: <TESTBASE>/test/local/Maildir 193 
Checking <TESTBASE>/test/local/Maildir/* ..
Calling check_mod on <TESTBASE>/test/local/Maildir/tmp from <TESTBASE>/test/local/Maildir
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/tmp
Redis reply: GET 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/local/Maildir/tmp' -> NULL
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 dev_change: 0
csync_check_dir: <TESTBASE>/test/local/Maildir/tmp 193 
Checking <TESTBASE>/test/local/Maildir/tmp/* ..
Calling check_mod on <TESTBASE>/test/local/Maildir/new from <TESTBASE>/test/local/Maildir
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/new
Redis reply: GET 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/local/Maildir/new' -> NULL
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 dev_change: 0
csync_check_dir: <TESTBASE>/test/local/Maildir/new 193 
Checking <TESTBASE>/test/local/Maildir/new/* ..
Calling check_mod on <TESTBASE>/test/local/Maildir/cur from <TESTBASE>/test/local/Maildir
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/cur
Redis reply: GET 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/local/Maildir/cur' -> NULL
csync_cmpchecktxt A: v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir 
csync_cmpchecktxt B: v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir 
<TESTBASE>/test/local/Maildir/cur has changed: 
    v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir 
DB: v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir MKDIR
ignore flags: 193
check_file: calc_digest: 0 dirty: 2 is_upgrade 0 dev_change: 0
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/cur
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/cur
mark other operation: 'MOD_DIR' 'peer:<TESTBASE>/test/local/Maildir/cur' '-'.
mark other operation: 'MOD_DIR' 'other:<TESTBASE>/test/local/Maildir/cur' '-'.
mark other: MOD_DIR(129) Old operation: MKDIR(1) '<TESTBASE>/test/local/Maildir/cur' ''
mark operation NEW -> MOD => NEW other:<TESTBASE>/test/local/Maildir/cur (not synced) .
Found row: file '%s' clean_other: '%s' result_other: '%s' dirty: %d operation %d 
INSERT/UPDATE: <TESTBASE>/test/local/Maildir/cur 
Inserted/updated <TESTBASE>/test/local/Maildir/cur rows matched: 1
csync_check_dir: <TESTBASE>/test/local/Maildir/cur 193 
Checking <TESTBASE>/test/local/Maildir/cur/* ..
Calling check_mod on <TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST from <TESTBASE>/test/local/Maildir/cur
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
Redis reply: GET 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST' -> NULL
New file: <TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
check_file: calc_digest: 4 dirty: 2 is_upgrade 0 dev_change: 0
csync_check_file_same_dev_inode <TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST <TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
Adding textlist_add_new: %s
1 files with same dev:inode (x:y) as file: <TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
check same file (64) <TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,S -> <TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST 
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  filename = ? , param1: <TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,S, param2: local
Found MOVE <TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,S -> <TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST 
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
mark other operation: 'MV' 'peer:<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST' '<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,S'.
mark other operation: 'MV' 'other:<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST' '<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,S'.
mark other: MV(16) Old operation: NEW(2) '<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,S' ''
mark operation NEW->MV => NEW other '<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST' '<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,S' '<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,S'.
Found row: file '%s' clean_other: '%s' result_other: '%s' dirty: %d operation %d 
INSERT/UPDATE: <TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST 6cb0c34bcc2b89205c6601b4edaa2eace19ec981
Inserted/updated <TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST rows matched: 1
Calling check_mod on <TESTBASE>/test/local/Maildir/.Trash from <TESTBASE>/test/local/Maildir
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/.Trash
Redis reply: GET 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/local/Maildir/.Trash' -> NULL
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 dev_change: 0
csync_check_dir: <TESTBASE>/test/local/Maildir/.Trash 193 
Checking <TESTBASE>/test/local/Maildir/.Trash/* ..
Calling check_mod on <TESTBASE>/test/local/Maildir/.Trash/cur from <TESTBASE>/test/local/Maildir/.Trash
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/.Trash/cur
Redis reply: GET 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/local/Maildir/.Trash/cur' -> NULL
csync_cmpchecktxt A: v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir 
csync_cmpchecktxt B: v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir 
<TESTBASE>/test/local/Maildir/.Trash/cur has changed: 
    v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir 
DB: v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir MKDIR
ignore flags: 193
check_file: calc_digest: 0 dirty: 2 is_upgrade 0 dev_change: 0
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/.Trash/cur
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/.Trash/cur
mark other operation: 'MOD_DIR' 'peer:<TESTBASE>/test/local/Maildir/.Trash/cur' '-'.
mark other operation: 'MOD_DIR' 'other:<TESTBASE>/test/local/Maildir/.Trash/cur' '-'.
mark other: MOD_DIR(129) Old operation: MKDIR(1) '<TESTBASE>/test/local/Maildir/.Trash/cur' ''
mark operation NEW -> MOD => NEW other:<TESTBASE>/test/local/Maildir/.Trash/cur (not synced) .
Found row: file '%s' clean_other: '%s' result_other: '%s' dirty: %d operation %d 
INSERT/UPDATE: <TESTBASE>/test/local/Maildir/.Trash/cur 
Inserted/updated <TESTBASE>/test/local/Maildir/.Trash/cur rows matched: 1
csync_check_dir: <TESTBASE>/test/local/Maildir/.Trash/cur 193 
Checking <TESTBASE>/test/local/Maildir/.Trash/cur/* ..
Calling check_mod on <TESTBASE>/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S from <TESTBASE>/test/local/Maildir/.Trash/cur
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S
Redis reply: GET 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S' -> NULL
New file: <TESTBASE>/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S
check_file: calc_digest: 4 dirty: 2 is_upgrade 0 dev_change: 0
csync_check_file_same_dev_inode <TESTBASE>/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S <TESTBASE>/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S
Adding textlist_add_new: %s
1 files with same dev:inode (x:y) as file: <TESTBASE>/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S
check same file (32) <TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST -> <TESTBASE>/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S 
Found HARDLINK <TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST -> <TESTBASE>/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S 
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S
mark other operation: 'HARDLINK' 'peer:<TESTBASE>/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S' '<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST'.
mark other: HARDLINK(32) Old operation: MV(16) '<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST' '<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,S'
Found row: file '%s' clean_other: '%s' result_other: '%s' dirty: %d operation %d 
mark other operation: 'HARDLINK' 'other:<TESTBASE>/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S' '<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST'.
mark other: HARDLINK(32) Old operation: NEW(2) '<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST' ''
Found row: file '%s' clean_other: '%s' result_other: '%s' dirty: %d operation %d 
INSERT/UPDATE: <TESTBASE>/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S 6cb0c34bcc2b89205c6601b4edaa2eace19ec981
Inserted/updated <TESTBASE>/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S rows matched: 1
Checking for deleted files <TESTBASE>/test recursive.
File <TESTBASE>/test. Hostname: local 
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/.Trash
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/.Trash/cur
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/cur
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/new
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/tmp
MODE 2
Redis closed.
csync_config_destroy
csync_config_destroy end
