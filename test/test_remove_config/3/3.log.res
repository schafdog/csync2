cmd R "check -R" local peer test
csync_hostinfo (nil)
standalone: 0 server_standalone > 0: 0
Mode: 16384 Flags: 1 PID: 2657695
Config-File:   csync2_pgsql_local.cfg
Prefix 'test' is set to '<TESTBASE>/test/local'.
New host alias: local: localhost 30860
New host alias: peer: localhost 30861
New host alias: other: localhost 30862
New group: test
New group:host: test peer
New group:host: test other
New group:host:pattern test other %test%
New group:host:pattern test other %test%/new_file
New group:host:pattern test other %test%/autoresolve
New group:host:pattern test other *~
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
GIT:           42ec618cadb2cff3bcf7925107f9c9ae320ed28c-dirty
Opening shared library libpq.so
Reading symbols from shared library libpq.so
csync2_db_SQL: update file set filename = NULL where filename = NULL 
csync2_db_SQL: update host set host = NULL where host = NULL
db_schema_version: 2
Connecting to redis localhost:6379
MODE 16384
remove_old: dirty
SQL: SELECT filename, myname, peername FROM dirty where myname = 'local' AND peername not in (select host from host where status = 1) 
Check 'local' with 'peer:<TESTBASE>/test/local' from dirty.
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local
Check 'local' with 'other:<TESTBASE>/test/local' from dirty.
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local
Check 'local' with 'peer:<TESTBASE>/test/local/new_file' from dirty.
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new_file
Match (-): <TESTBASE>/test/local/new_file on <TESTBASE>/test/local/new_file
Remove 'peer:<TESTBASE>/test/local/new_file' from dirty. No longer in configuration
Check 'local' with 'other:<TESTBASE>/test/local/new_file' from dirty.
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new_file
Match (-): <TESTBASE>/test/local/new_file on <TESTBASE>/test/local/new_file
Remove 'other:<TESTBASE>/test/local/new_file' from dirty. No longer in configuration
SQL Query finished.
Removing <TESTBASE>/test/local/new_file (other) from dirty db.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/new_file'  AND  myname = 'local' AND peername like 'other'
Removing <TESTBASE>/test/local/new_file (peer) from dirty db.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/new_file'  AND  myname = 'local' AND peername like 'peer'
remove_old: file
SQL: SELECT filename, mode FROM file where hostname = 'local' AND filename = '<TESTBASE>/test' or filename like '<TESTBASE>/test/%' 
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new_file
Match (-): <TESTBASE>/test/local/new_file on <TESTBASE>/test/local/new_file
SQL Query finished.
Removing <TESTBASE>/test/local/new_file from file db.
csync2_db_SQL: DELETE FROM file WHERE  (filename = '<TESTBASE>/test/local/new_file' OR filename LIKE '<TESTBASE>/test/local/new_file/%')  AND  hostname = 'local'
remove_old: end
Redis closing: <PTR>
Redis closed.
SQL: SELECT command, logfile FROM action
SQL Query finished.
Closing db: <PTR>
Closed db: <PTR>
Closed db: <PTR>
csync_config_destroy
csync_config_destroy end
