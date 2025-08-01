cmd c "New local/new_file 'N' all" local peer test
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
Calling check_mod on <TESTBASE>/test/local/new_file 'N' all from <TESTBASE>/test/local
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new_file 'N' all
Redis reply: GET 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/local/new_file 'N' all' -> NULL
New file: <TESTBASE>/test/local/new_file 'N' all
check_file: calc_digest: 4 dirty: 2 is_upgrade 0 dev_change: 0
csync_check_file_same_dev_inode <TESTBASE>/test/local/new_file 'N' all <TESTBASE>/test/local/new_file 'N' all
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new_file 'N' all
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new_file 'N' all
mark other operation: 'NEW' 'peer:<TESTBASE>/test/local/new_file 'N' all' '-'.
mark other operation: 'NEW' 'other:<TESTBASE>/test/local/new_file 'N' all' '-'.
INSERT/UPDATE: <TESTBASE>/test/local/new_file 'N' all eeb4df3d04063049b45ea11a12354a37e8740687
Inserted/updated <TESTBASE>/test/local/new_file 'N' all rows matched: 1
Calling check_mod on <TESTBASE>/test/local/A from <TESTBASE>/test/local
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/A
Redis reply: GET 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/local/A' -> NULL
New file: <TESTBASE>/test/local/A
check_file: calc_digest: 4 dirty: 2 is_upgrade 0 dev_change: 0
csync_check_file_same_dev_inode <TESTBASE>/test/local/A <TESTBASE>/test/local/A
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/A
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/A
mark other operation: 'NEW' 'peer:<TESTBASE>/test/local/A' '-'.
mark other operation: 'NEW' 'other:<TESTBASE>/test/local/A' '-'.
INSERT/UPDATE: <TESTBASE>/test/local/A da39a3ee5e6b4b0d3255bfef95601890afd80709
Inserted/updated <TESTBASE>/test/local/A rows matched: 1
Calling check_mod on <TESTBASE>/test/local/.Test from <TESTBASE>/test/local
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/.Test
Redis reply: GET 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/local/.Test' -> NULL
New file: <TESTBASE>/test/local/.Test
check_file: calc_digest: 4 dirty: 2 is_upgrade 0 dev_change: 0
csync_check_file_same_dev_inode <TESTBASE>/test/local/.Test <TESTBASE>/test/local/.Test
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/.Test
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/.Test
mark other operation: 'NEW' 'peer:<TESTBASE>/test/local/.Test' '-'.
mark other operation: 'NEW' 'other:<TESTBASE>/test/local/.Test' '-'.
INSERT/UPDATE: <TESTBASE>/test/local/.Test da39a3ee5e6b4b0d3255bfef95601890afd80709
Inserted/updated <TESTBASE>/test/local/.Test rows matched: 1
Checking for deleted files <TESTBASE>/test recursive.
File <TESTBASE>/test. Hostname: local 
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/.Test
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/A
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new_file 'N' all
MODE 2
Redis closed.
csync_config_destroy
csync_config_destroy end
