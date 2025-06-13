cmd cI "5 more files hardlinked (mark)" local peer test
csync_hostinfo (nil)
standalone: 0 server_standalone > 0: 0
Mode: 2 Flags: 5 PID: 2800955
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
Database File: pgsql://csync2:csync238@localhost/csync2
DB Version:    2
IP Version:    IPv4
GIT:           4e39c9f1a4ba8dd4471035859699f313dee4972c
Opening shared library libpq.so
Reading symbols from shared library libpq.so
csync2_db_SQL: update file set filename = NULL where filename = NULL 
csync2_db_SQL: update host set host = NULL where host = NULL
db_schema_version: 2
Connecting to redis localhost:6379
Running recursive check for <TESTBASE>/test ...
Checking recursive for modified files <TESTBASE>/test 
csync_check_dir: <TESTBASE>/test 69 
Checking <TESTBASE>/test/* ..
No match. Don't check at all: <TESTBASE>/test/peer
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'local' AND filename = '<TESTBASE>/test/local' 
SQL Query finished.
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 dev_change: 0
csync_check_dir: <TESTBASE>/test/local 197 
Checking <TESTBASE>/test/local/* ..
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'local' AND filename = '<TESTBASE>/test/local/new' 
csync_cmpchecktxt A: v2:mtime=1736296367:mode=16877:user=dennis:group=schafroth:type=dir 
csync_cmpchecktxt B: v2:mtime=1736296315:mode=16877:user=dennis:group=schafroth:type=dir 
<TESTBASE>/test/local/new has changed: 
    v2:mtime=1736296367:mode=16877:user=dennis:group=schafroth:type=dir 
DB: v2:mtime=1736296315:mode=16877:user=dennis:group=schafroth:type=dir MKDIR
ignore flags: 197
SQL Query finished.
check_file: calc_digest: 0 dirty: 2 is_upgrade 0 dev_change: 0
csync2_db_SQL: UPDATE file set checktxt='v2:mtime=1736296367:mode=16877:user=dennis:group=schafroth:type=dir', device=2049, inode=56360962,                 digest='', mode=16877, mtime=1736296367, size=4096, type=1 where filename = '<TESTBASE>/test/local/new'
Inserted/updated <TESTBASE>/test/local/new rows matched: 0
csync_check_dir: <TESTBASE>/test/local/new 197 
Checking <TESTBASE>/test/local/new/* ..
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new/new_file
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'local' AND filename = '<TESTBASE>/test/local/new/new_file' 
SQL Query finished.
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 dev_change: 0
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new/hardlinked_5
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'local' AND filename = '<TESTBASE>/test/local/new/hardlinked_5' 
New file: <TESTBASE>/test/local/new/hardlinked_5
SQL Query finished.
check_file: calc_digest: 4 dirty: 2 is_upgrade 0 dev_change: 0
csync_check_file_same_dev_inode <TESTBASE>/test/local/new/hardlinked_5 <TESTBASE>/test/local/new/hardlinked_5
SQL:  SELECT filename, checktxt, digest FROM file WHERE  hostname = 'local'  AND device = 2049  AND inode = 56360963  AND filename != '<TESTBASE>/test/local/new/hardlinked_5' 
Adding textlist_add_new: <TESTBASE>/test/local/new/hardlinked
Adding textlist_add_new: <TESTBASE>/test/local/new/hardlinked_2
Adding textlist_add_new: <TESTBASE>/test/local/new/hardlinked_3
Adding textlist_add_new: <TESTBASE>/test/local/new/new_file
4 files with same dev:inode (2049:56360963) as file: <TESTBASE>/test/local/new/hardlinked_5
SQL Query finished.
check same file (32) <TESTBASE>/test/local/new/new_file -> <TESTBASE>/test/local/new/hardlinked_5 
Found HARDLINK <TESTBASE>/test/local/new/new_file -> <TESTBASE>/test/local/new/hardlinked_5 
check same file (32) <TESTBASE>/test/local/new/hardlinked_3 -> <TESTBASE>/test/local/new/hardlinked_5 
Found HARDLINK <TESTBASE>/test/local/new/hardlinked_3 -> <TESTBASE>/test/local/new/hardlinked_5 
check same file (32) <TESTBASE>/test/local/new/hardlinked_2 -> <TESTBASE>/test/local/new/hardlinked_5 
Found HARDLINK <TESTBASE>/test/local/new/hardlinked_2 -> <TESTBASE>/test/local/new/hardlinked_5 
check same file (32) <TESTBASE>/test/local/new/hardlinked -> <TESTBASE>/test/local/new/hardlinked_5 
Found HARDLINK <TESTBASE>/test/local/new/hardlinked -> <TESTBASE>/test/local/new/hardlinked_5 
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('local', '<TESTBASE>/test/local/new/hardlinked_5', 'v2:mtime=1736296279:mode=33188:user=dennis:group=schafroth:type=reg:size=4', 2049, 56360963, '32a0617aab4c9fe725f1b5bc441291180ad25b73', 33188, 4, 1736296279, 2) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1736296279:mode=33188:user=dennis:group=schafroth:type=reg:size=4', device = 2049, inode = 56360963, digest = '32a0617aab4c9fe725f1b5bc441291180ad25b73', mode = 33188, size = 4, mtime = 1736296279, type = 2
Inserted/updated <TESTBASE>/test/local/new/hardlinked_5 rows matched: 0
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new/hardlinked_4
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'local' AND filename = '<TESTBASE>/test/local/new/hardlinked_4' 
New file: <TESTBASE>/test/local/new/hardlinked_4
SQL Query finished.
check_file: calc_digest: 4 dirty: 2 is_upgrade 0 dev_change: 0
csync_check_file_same_dev_inode <TESTBASE>/test/local/new/hardlinked_4 <TESTBASE>/test/local/new/hardlinked_4
SQL:  SELECT filename, checktxt, digest FROM file WHERE  hostname = 'local'  AND device = 2049  AND inode = 56360963  AND filename != '<TESTBASE>/test/local/new/hardlinked_4' 
Adding textlist_add_new: <TESTBASE>/test/local/new/hardlinked
Adding textlist_add_new: <TESTBASE>/test/local/new/hardlinked_2
Adding textlist_add_new: <TESTBASE>/test/local/new/hardlinked_3
Adding textlist_add_new: <TESTBASE>/test/local/new/hardlinked_5
Adding textlist_add_new: <TESTBASE>/test/local/new/new_file
5 files with same dev:inode (2049:56360963) as file: <TESTBASE>/test/local/new/hardlinked_4
SQL Query finished.
check same file (32) <TESTBASE>/test/local/new/new_file -> <TESTBASE>/test/local/new/hardlinked_4 
Found HARDLINK <TESTBASE>/test/local/new/new_file -> <TESTBASE>/test/local/new/hardlinked_4 
check same file (32) <TESTBASE>/test/local/new/hardlinked_5 -> <TESTBASE>/test/local/new/hardlinked_4 
Found HARDLINK <TESTBASE>/test/local/new/hardlinked_5 -> <TESTBASE>/test/local/new/hardlinked_4 
check same file (32) <TESTBASE>/test/local/new/hardlinked_3 -> <TESTBASE>/test/local/new/hardlinked_4 
Found HARDLINK <TESTBASE>/test/local/new/hardlinked_3 -> <TESTBASE>/test/local/new/hardlinked_4 
check same file (32) <TESTBASE>/test/local/new/hardlinked_2 -> <TESTBASE>/test/local/new/hardlinked_4 
Found HARDLINK <TESTBASE>/test/local/new/hardlinked_2 -> <TESTBASE>/test/local/new/hardlinked_4 
check same file (32) <TESTBASE>/test/local/new/hardlinked -> <TESTBASE>/test/local/new/hardlinked_4 
Found HARDLINK <TESTBASE>/test/local/new/hardlinked -> <TESTBASE>/test/local/new/hardlinked_4 
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('local', '<TESTBASE>/test/local/new/hardlinked_4', 'v2:mtime=1736296279:mode=33188:user=dennis:group=schafroth:type=reg:size=4', 2049, 56360963, '32a0617aab4c9fe725f1b5bc441291180ad25b73', 33188, 4, 1736296279, 2) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1736296279:mode=33188:user=dennis:group=schafroth:type=reg:size=4', device = 2049, inode = 56360963, digest = '32a0617aab4c9fe725f1b5bc441291180ad25b73', mode = 33188, size = 4, mtime = 1736296279, type = 2
Inserted/updated <TESTBASE>/test/local/new/hardlinked_4 rows matched: 0
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new/hardlinked_3
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'local' AND filename = '<TESTBASE>/test/local/new/hardlinked_3' 
SQL Query finished.
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 dev_change: 0
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new/hardlinked_2
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'local' AND filename = '<TESTBASE>/test/local/new/hardlinked_2' 
SQL Query finished.
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 dev_change: 0
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new/hardlinked
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'local' AND filename = '<TESTBASE>/test/local/new/hardlinked' 
SQL Query finished.
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 dev_change: 0
Checking for deleted files <TESTBASE>/test recursive.
file <TESTBASE>/test encoded <TESTBASE>/test. Hostname: local 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  (filename = '<TESTBASE>/test' OR filename LIKE '<TESTBASE>/test/%')  AND  hostname = 'local' ORDER BY filename
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local
check_pure: filename: '<TESTBASE>/test/local' 53, cached path: '(null)' 0, 0.
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new
check_pure: filename: '<TESTBASE>/test/local/new' 59, cached path: '<TESTBASE>/test/' 53, 53.
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new/hardlinked
check_pure: filename: '<TESTBASE>/test/local/new/hardlinked' 63, cached path: '<TESTBASE>/test/local/' 59, 59.
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new/hardlinked_2
check_pure: filename: '<TESTBASE>/test/local/new/hardlinked_2' 63, cached path: '<TESTBASE>/test/local/new/' 63, 63.
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new/hardlinked_3
check_pure: filename: '<TESTBASE>/test/local/new/hardlinked_3' 63, cached path: '<TESTBASE>/test/local/new/' 63, 63.
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new/hardlinked_4
check_pure: filename: '<TESTBASE>/test/local/new/hardlinked_4' 63, cached path: '<TESTBASE>/test/local/new/' 63, 63.
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new/hardlinked_5
check_pure: filename: '<TESTBASE>/test/local/new/hardlinked_5' 63, cached path: '<TESTBASE>/test/local/new/' 63, 63.
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new/new_file
check_pure: filename: '<TESTBASE>/test/local/new/new_file' 63, cached path: '<TESTBASE>/test/local/new/' 63, 63.
SQL Query finished.
csync_file_args: '<TESTBASE>/test' flags 69 
MODE 2
Redis closing: 0x555c5386c470
Redis closed.
SQL: SELECT command, logfile FROM action
SQL Query finished.
Closing db: 0x555c5386c150
Closed db: 0x555c5386c150
Closed db: 0x555c5386c150
csync_config_destroy
csync_config_destroy end
