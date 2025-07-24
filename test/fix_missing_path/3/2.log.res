cmd cI "2. New local/recursive/.. -I" local peer test
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
csync_file_args: '<TESTBASE>/test' flags 69 
Running recursive check for <TESTBASE>/test ...
Checking recursive for modified files <TESTBASE>/test 
csync_check_dir: <TESTBASE>/test 69 
Checking <TESTBASE>/test/* ..
Calling check_mod on <TESTBASE>/test/local from <TESTBASE>/test
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local
Redis reply: GET 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/local' -> NULL
New file: <TESTBASE>/test/local
check_file: calc_digest: 0 dirty: 2 is_upgrade 0 dev_change: 0
csync_check_file_same_dev_inode <TESTBASE>/test/local <TESTBASE>/test/local
INSERT/UPDATE: <TESTBASE>/test/local NULL
Inserted/updated <TESTBASE>/test/local rows matched: 1
csync_check_dir: <TESTBASE>/test/local 197 
Checking <TESTBASE>/test/local/* ..
Calling check_mod on <TESTBASE>/test/local/recursive from <TESTBASE>/test/local
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/recursive
Redis reply: GET 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/local/recursive' -> NULL
New file: <TESTBASE>/test/local/recursive
check_file: calc_digest: 0 dirty: 2 is_upgrade 0 dev_change: 0
csync_check_file_same_dev_inode <TESTBASE>/test/local/recursive <TESTBASE>/test/local/recursive
INSERT/UPDATE: <TESTBASE>/test/local/recursive NULL
Inserted/updated <TESTBASE>/test/local/recursive rows matched: 1
csync_check_dir: <TESTBASE>/test/local/recursive 197 
Checking <TESTBASE>/test/local/recursive/* ..
Calling check_mod on <TESTBASE>/test/local/recursive/1 from <TESTBASE>/test/local/recursive
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/recursive/1
Redis reply: GET 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/local/recursive/1' -> NULL
New file: <TESTBASE>/test/local/recursive/1
check_file: calc_digest: 0 dirty: 2 is_upgrade 0 dev_change: 0
csync_check_file_same_dev_inode <TESTBASE>/test/local/recursive/1 <TESTBASE>/test/local/recursive/1
INSERT/UPDATE: <TESTBASE>/test/local/recursive/1 NULL
Inserted/updated <TESTBASE>/test/local/recursive/1 rows matched: 1
csync_check_dir: <TESTBASE>/test/local/recursive/1 197 
Checking <TESTBASE>/test/local/recursive/1/* ..
Calling check_mod on <TESTBASE>/test/local/recursive/1/2 from <TESTBASE>/test/local/recursive/1
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/recursive/1/2
Redis reply: GET 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/local/recursive/1/2' -> NULL
New file: <TESTBASE>/test/local/recursive/1/2
check_file: calc_digest: 0 dirty: 2 is_upgrade 0 dev_change: 0
csync_check_file_same_dev_inode <TESTBASE>/test/local/recursive/1/2 <TESTBASE>/test/local/recursive/1/2
INSERT/UPDATE: <TESTBASE>/test/local/recursive/1/2 NULL
Inserted/updated <TESTBASE>/test/local/recursive/1/2 rows matched: 1
csync_check_dir: <TESTBASE>/test/local/recursive/1/2 197 
Checking <TESTBASE>/test/local/recursive/1/2/* ..
Calling check_mod on <TESTBASE>/test/local/recursive/1/2/3 from <TESTBASE>/test/local/recursive/1/2
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/recursive/1/2/3
Redis reply: GET 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/local/recursive/1/2/3' -> NULL
New file: <TESTBASE>/test/local/recursive/1/2/3
check_file: calc_digest: 0 dirty: 2 is_upgrade 0 dev_change: 0
csync_check_file_same_dev_inode <TESTBASE>/test/local/recursive/1/2/3 <TESTBASE>/test/local/recursive/1/2/3
INSERT/UPDATE: <TESTBASE>/test/local/recursive/1/2/3 NULL
Inserted/updated <TESTBASE>/test/local/recursive/1/2/3 rows matched: 1
csync_check_dir: <TESTBASE>/test/local/recursive/1/2/3 197 
Checking <TESTBASE>/test/local/recursive/1/2/3/* ..
Calling check_mod on <TESTBASE>/test/local/recursive/1/2/3/4 from <TESTBASE>/test/local/recursive/1/2/3
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/recursive/1/2/3/4
Redis reply: GET 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/local/recursive/1/2/3/4' -> NULL
New file: <TESTBASE>/test/local/recursive/1/2/3/4
check_file: calc_digest: 0 dirty: 2 is_upgrade 0 dev_change: 0
csync_check_file_same_dev_inode <TESTBASE>/test/local/recursive/1/2/3/4 <TESTBASE>/test/local/recursive/1/2/3/4
INSERT/UPDATE: <TESTBASE>/test/local/recursive/1/2/3/4 NULL
Inserted/updated <TESTBASE>/test/local/recursive/1/2/3/4 rows matched: 1
csync_check_dir: <TESTBASE>/test/local/recursive/1/2/3/4 197 
Checking <TESTBASE>/test/local/recursive/1/2/3/4/* ..
Calling check_mod on <TESTBASE>/test/local/recursive/1/2/3/4/5 from <TESTBASE>/test/local/recursive/1/2/3/4
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/recursive/1/2/3/4/5
Redis reply: GET 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/local/recursive/1/2/3/4/5' -> NULL
New file: <TESTBASE>/test/local/recursive/1/2/3/4/5
check_file: calc_digest: 0 dirty: 2 is_upgrade 0 dev_change: 0
csync_check_file_same_dev_inode <TESTBASE>/test/local/recursive/1/2/3/4/5 <TESTBASE>/test/local/recursive/1/2/3/4/5
INSERT/UPDATE: <TESTBASE>/test/local/recursive/1/2/3/4/5 NULL
Inserted/updated <TESTBASE>/test/local/recursive/1/2/3/4/5 rows matched: 1
csync_check_dir: <TESTBASE>/test/local/recursive/1/2/3/4/5 197 
Checking <TESTBASE>/test/local/recursive/1/2/3/4/5/* ..
Checking for deleted files <TESTBASE>/test recursive.
File <TESTBASE>/test. Hostname: local 
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/recursive
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/recursive/1
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/recursive/1/2
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/recursive/1/2/3
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/recursive/1/2/3/4
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/recursive/1/2/3/4/5
MODE 2
Redis closed.
csync_config_destroy
csync_config_destroy end
