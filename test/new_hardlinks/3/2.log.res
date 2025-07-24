cmd c "2 two new files hardlinked (check)" local peer test
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
Calling check_mod on <TESTBASE>/test/local from <TESTBASE>/test
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local
Redis reply: GET 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/local' -> NULL
New file: <TESTBASE>/test/local
check_file: calc_digest: 0 dirty: 2 is_upgrade 0 dev_change: 0
csync_check_file_same_dev_inode <TESTBASE>/test/local <TESTBASE>/test/local
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local' '-'.
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local' '-'.
INSERT/UPDATE: <TESTBASE>/test/local NULL
Inserted/updated <TESTBASE>/test/local rows matched: 1
csync_check_dir: <TESTBASE>/test/local 193 
Checking <TESTBASE>/test/local/* ..
Calling check_mod on <TESTBASE>/test/local/new from <TESTBASE>/test/local
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new
Redis reply: GET 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/local/new' -> NULL
New file: <TESTBASE>/test/local/new
check_file: calc_digest: 0 dirty: 2 is_upgrade 0 dev_change: 0
csync_check_file_same_dev_inode <TESTBASE>/test/local/new <TESTBASE>/test/local/new
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local/new' '-'.
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local/new' '-'.
INSERT/UPDATE: <TESTBASE>/test/local/new NULL
Inserted/updated <TESTBASE>/test/local/new rows matched: 1
csync_check_dir: <TESTBASE>/test/local/new 193 
Checking <TESTBASE>/test/local/new/* ..
Calling check_mod on <TESTBASE>/test/local/new/new_file from <TESTBASE>/test/local/new
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new/new_file
Redis reply: GET 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/local/new/new_file' -> NULL
New file: <TESTBASE>/test/local/new/new_file
check_file: calc_digest: 4 dirty: 2 is_upgrade 0 dev_change: 0
csync_check_file_same_dev_inode <TESTBASE>/test/local/new/new_file <TESTBASE>/test/local/new/new_file
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new/new_file
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new/new_file
mark other operation: 'NEW' 'peer:<TESTBASE>/test/local/new/new_file' '-'.
mark other operation: 'NEW' 'other:<TESTBASE>/test/local/new/new_file' '-'.
INSERT/UPDATE: <TESTBASE>/test/local/new/new_file 32a0617aab4c9fe725f1b5bc441291180ad25b73
Inserted/updated <TESTBASE>/test/local/new/new_file rows matched: 1
Calling check_mod on <TESTBASE>/test/local/new/hardlinked from <TESTBASE>/test/local/new
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new/hardlinked
Redis reply: GET 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/local/new/hardlinked' -> NULL
New file: <TESTBASE>/test/local/new/hardlinked
check_file: calc_digest: 4 dirty: 2 is_upgrade 0 dev_change: 0
csync_check_file_same_dev_inode <TESTBASE>/test/local/new/hardlinked <TESTBASE>/test/local/new/hardlinked
Adding textlist_add_new: %s
1 files with same dev:inode (x:y) as file: <TESTBASE>/test/local/new/hardlinked
check same file (32) <TESTBASE>/test/local/new/new_file -> <TESTBASE>/test/local/new/hardlinked 
Found HARDLINK <TESTBASE>/test/local/new/new_file -> <TESTBASE>/test/local/new/hardlinked 
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new/hardlinked
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new/hardlinked
mark other operation: 'HARDLINK' 'peer:<TESTBASE>/test/local/new/hardlinked' '<TESTBASE>/test/local/new/new_file'.
mark other: HARDLINK(32) Old operation: NEW(2) '<TESTBASE>/test/local/new/new_file' ''
Found row: file '%s' clean_other: '%s' result_other: '%s' dirty: %d operation %d 
mark other operation: 'HARDLINK' 'other:<TESTBASE>/test/local/new/hardlinked' '<TESTBASE>/test/local/new/new_file'.
mark other: HARDLINK(32) Old operation: NEW(2) '<TESTBASE>/test/local/new/new_file' ''
Found row: file '%s' clean_other: '%s' result_other: '%s' dirty: %d operation %d 
INSERT/UPDATE: <TESTBASE>/test/local/new/hardlinked 32a0617aab4c9fe725f1b5bc441291180ad25b73
Inserted/updated <TESTBASE>/test/local/new/hardlinked rows matched: 1
Checking for deleted files <TESTBASE>/test recursive.
File <TESTBASE>/test. Hostname: local 
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new/hardlinked
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new/new_file
MODE 2
Redis closed.
csync_config_destroy
csync_config_destroy end
