cmd m "6 more files hardlinked (mark)" local peer test
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
Not in one of my groups: <TESTBASE>/test ()
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local
mark other operation: 'MARK' 'peer:<TESTBASE>/test/local' '-'.
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new
mark other operation: 'MARK' 'peer:<TESTBASE>/test/local/new' '-'.
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new/hardlinked
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new/hardlinked
mark other operation: 'MARK' 'peer:<TESTBASE>/test/local/new/hardlinked' '-'.
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new/hardlinked_2
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new/hardlinked_2
mark other operation: 'MARK' 'peer:<TESTBASE>/test/local/new/hardlinked_2' '-'.
mark other: MARK(0) Old operation: MARK(0) '<TESTBASE>/test/local/new/hardlinked' ''
Found row: file '%s' clean_other: '%s' result_other: '%s' dirty: %d operation %d 
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new/hardlinked_3
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new/hardlinked_3
mark other operation: 'MARK' 'peer:<TESTBASE>/test/local/new/hardlinked_3' '-'.
mark other: MARK(0) Old operation: MARK(0) '<TESTBASE>/test/local/new/hardlinked' ''
Found row: file '%s' clean_other: '%s' result_other: '%s' dirty: %d operation %d 
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new/hardlinked_4
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new/hardlinked_4
mark other operation: 'MARK' 'peer:<TESTBASE>/test/local/new/hardlinked_4' '-'.
mark other: MARK(0) Old operation: MARK(0) '<TESTBASE>/test/local/new/hardlinked' ''
Found row: file '%s' clean_other: '%s' result_other: '%s' dirty: %d operation %d 
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new/hardlinked_5
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new/hardlinked_5
mark other operation: 'MARK' 'peer:<TESTBASE>/test/local/new/hardlinked_5' '-'.
mark other: MARK(0) Old operation: MARK(0) '<TESTBASE>/test/local/new/hardlinked' ''
Found row: file '%s' clean_other: '%s' result_other: '%s' dirty: %d operation %d 
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new/new_file
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new/new_file
mark other operation: 'MARK' 'peer:<TESTBASE>/test/local/new/new_file' '-'.
mark other: MARK(0) Old operation: MARK(0) '<TESTBASE>/test/local/new/hardlinked' ''
Found row: file '%s' clean_other: '%s' result_other: '%s' dirty: %d operation %d 
MODE 262144
Redis closed.
csync_config_destroy
csync_config_destroy end
