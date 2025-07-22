cmd x "Clean up" local peer test
csync_hostinfo (nil)
standalone: 0 server_standalone > 0: 0
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
GIT:           b6533f8fb67daf9e5335a557b1f91c7711d10543-dirty
Opening shared library libpq.so
Reading symbols from shared library libpq.so
csync2_db_SQL: update file set filename = NULL where filename = NULL 
csync2_db_SQL: update host set host = NULL where host = NULL
db_schema_version: 2
Connecting to redis localhost:6379
Running recursive check for <TESTBASE>/test ...
Checking recursive for modified files <TESTBASE>/test 
csync_check_dir: <TESTBASE>/test 65 
Checking <TESTBASE>/test/* ..
No match. Don't check at all: <TESTBASE>/test/peer
Checking for deleted files <TESTBASE>/test recursive.
file <TESTBASE>/test encoded <TESTBASE>/test. Hostname: local 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  (filename = '<TESTBASE>/test' OR filename LIKE '<TESTBASE>/test/%')  AND  hostname = 'local' ORDER BY filename
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/bad.link
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new_file 'N' all
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new_file 'N' all.link
SQL Query finished.
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new_file 'N' all.link
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new_file 'N' all.link
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/new_file 'N' all.link' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=<MTIME>mode=41471:user=<USER>:group=<GROUP>:type=lnk:target=new_file ''N'' all' AND device = <DEV> AND inode = <INODE>  OR filename = '<TESTBASE>/test/local/new_file ''N'' all.link') AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/new_file ''N'' all.link'  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('<TESTBASE>/test/local/new_file ''N'' all.link', 0, 'local', 'peer', 'RM', 'v2:mtime=<MTIME>mode=41471:user=<USER>:group=<GROUP>:type=lnk:target=new_file ''N'' all', 2049, 52710367, NULL, 64, 41471, 6, 1748673364)
mark other operation: 'RM' 'other:<TESTBASE>/test/local/new_file 'N' all.link' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=<MTIME>mode=41471:user=<USER>:group=<GROUP>:type=lnk:target=new_file ''N'' all' AND device = <DEV> AND inode = <INODE>  OR filename = '<TESTBASE>/test/local/new_file ''N'' all.link') AND peername = 'other' ORDER BY timestamp 
SQL Query finished.
mark other: RM(64) Old operation: LINK(2) '<TESTBASE>/test/local/new_file 'N' all.link' 'new_file 'N' all'
mark operation NEW -> RM other:<TESTBASE>/test/local/new_file 'N' all.link deleted before syncing. Removing from dirty.
Found row: file '<TESTBASE>/test/local/new_file 'N' all.link' clean_other: '(null)' result_other: '(null)' dirty: 0 operation 0 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/new_file ''N'' all.link'  AND  myname = 'local' AND peername like 'other'
csync2_db_SQL: delete from file WHERE hostname = 'local' AND filename = '<TESTBASE>/test/local/new_file ''N'' all.link'
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new_file 'N' all
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new_file 'N' all
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/new_file 'N' all' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=4' AND device = <DEV> AND inode = <INODE>  OR filename = '<TESTBASE>/test/local/new_file ''N'' all') AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/new_file ''N'' all'  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('<TESTBASE>/test/local/new_file ''N'' all', 0, 'local', 'peer', 'RM', 'v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=4', 2049, 52710352, NULL, 64, 33188, 2, 1748673364)
mark other operation: 'RM' 'other:<TESTBASE>/test/local/new_file 'N' all' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=4' AND device = <DEV> AND inode = <INODE>  OR filename = '<TESTBASE>/test/local/new_file ''N'' all') AND peername = 'other' ORDER BY timestamp 
SQL Query finished.
mark other: RM(64) Old operation: NEW(2) '<TESTBASE>/test/local/new_file 'N' all' ''
mark operation NEW -> RM other:<TESTBASE>/test/local/new_file 'N' all deleted before syncing. Removing from dirty.
Found row: file '<TESTBASE>/test/local/new_file 'N' all' clean_other: '(null)' result_other: '(null)' dirty: 0 operation 0 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/new_file ''N'' all'  AND  myname = 'local' AND peername like 'other'
csync2_db_SQL: delete from file WHERE hostname = 'local' AND filename = '<TESTBASE>/test/local/new_file ''N'' all'
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/bad.link
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/bad.link
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/bad.link' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=<MTIME>mode=41471:user=<USER>:group=<GROUP>:type=lnk:target=missing' AND device = <DEV> AND inode = <INODE>  OR filename = '<TESTBASE>/test/local/bad.link') AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/bad.link'  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('<TESTBASE>/test/local/bad.link', 0, 'local', 'peer', 'RM', 'v2:mtime=<MTIME>mode=41471:user=<USER>:group=<GROUP>:type=lnk:target=missing', 2049, 52710371, NULL, 64, 41471, 6, 1748673364)
mark other operation: 'RM' 'other:<TESTBASE>/test/local/bad.link' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=<MTIME>mode=41471:user=<USER>:group=<GROUP>:type=lnk:target=missing' AND device = <DEV> AND inode = <INODE>  OR filename = '<TESTBASE>/test/local/bad.link') AND peername = 'other' ORDER BY timestamp 
SQL Query finished.
mark other: RM(64) Old operation: LINK(2) '<TESTBASE>/test/local/bad.link' 'missing'
mark operation NEW -> RM other:<TESTBASE>/test/local/bad.link deleted before syncing. Removing from dirty.
Found row: file '<TESTBASE>/test/local/bad.link' clean_other: '(null)' result_other: '(null)' dirty: 0 operation 0 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/bad.link'  AND  myname = 'local' AND peername like 'other'
csync2_db_SQL: delete from file WHERE hostname = 'local' AND filename = '<TESTBASE>/test/local/bad.link'
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local
mark other operation: 'RM' 'peer:<TESTBASE>/test/local' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir' AND device = <DEV> AND inode = <INODE>  OR filename = '<TESTBASE>/test/local') AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local'  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('<TESTBASE>/test/local', 0, 'local', 'peer', 'RM', 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir', 2049, 52709148, NULL, 64, 16877, 1, 1748673364)
mark other operation: 'RM' 'other:<TESTBASE>/test/local' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir' AND device = <DEV> AND inode = <INODE>  OR filename = '<TESTBASE>/test/local') AND peername = 'other' ORDER BY timestamp 
SQL Query finished.
mark other: RM(64) Old operation: MKDIR(1) '<TESTBASE>/test/local' ''
mark operation MKDIR -> RM other:<TESTBASE>/test/local deleted before syncing. Removing from dirty.
Found row: file '<TESTBASE>/test/local' clean_other: '(null)' result_other: '(null)' dirty: 0 operation 0 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local'  AND  myname = 'local' AND peername like 'other'
csync2_db_SQL: delete from file WHERE hostname = 'local' AND filename = '<TESTBASE>/test/local'
csync_file_args: '<TESTBASE>/test' flags 65 
get dirty host
SQL: SELECT peername FROM dirty WHERE myname = 'local' AND peername NOT IN (SELECT host FROM host WHERE status = 1) GROUP BY peername
dirty host peer 
SQL Query finished.
SQL: SELECT filename, operation, op, other, checktxt, digest, forced, (op & 639) as type FROM dirty WHERE   (filename = '<TESTBASE>/test' OR filename LIKE '<TESTBASE>/test/%')  AND  peername = 'peer' AND myname = 'local' AND peername NOT IN (SELECT host FROM host WHERE status = 1) ORDER by type DESC, filename DESC
DIRTY LOOKUP: '<TESTBASE>/test/local/new_file 'N' all.link' ''
compare file with pattern <TESTBASE>/test
dirty: peer:<TESTBASE>/test/local/new_file 'N' all.link v2:mtime=xxxxxxxxxx:mode=41471:user=<USER>:group=<GROUP>:type=lnk:target=new_file 'N' all ''
DIRTY LOOKUP: '<TESTBASE>/test/local/new_file 'N' all' ''
compare file with pattern <TESTBASE>/test
dirty: peer:<TESTBASE>/test/local/new_file 'N' all v2:mtime=xxxxxxxxxx:mode=33188:user=<USER>:group=<GROUP>:type=reg:size=4 ''
DIRTY LOOKUP: '<TESTBASE>/test/local/bad.link' ''
compare file with pattern <TESTBASE>/test
dirty: peer:<TESTBASE>/test/local/bad.link v2:mtime=xxxxxxxxxx:mode=41471:user=<USER>:group=<GROUP>:type=lnk:target=missing ''
DIRTY LOOKUP: '<TESTBASE>/test/local' ''
compare file with pattern <TESTBASE>/test
dirty: peer:<TESTBASE>/test/local v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
SQL Query finished.
Got dirty files from host peer
Connecting to host peer (PLAIN) ...
Using alternative port to localhost:30861 
Connecting to localhost:30861 
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
CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
Clear dirty peer:<TESTBASE>/test/local (0)
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local'  AND  myname = 'local' AND peername like 'peer'
Dirty (missing) item <TESTBASE>/test/local/bad.link RM  0
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/bad.link
Deleting peer:<TESTBASE>/test/local/bad.link
CONN peer < STAT %25test%25/bad.link 
CONN peer > 'IDENT (cmd_finished).'
read_conn_status 'IDENT (cmd_finished).' 4
csync2_db_SQL: DELETE FROM dirty WHERE  (filename = '<TESTBASE>/test/local/bad.link' OR filename LIKE '<TESTBASE>/test/local/bad.link/%')  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: DELETE FROM file WHERE  (filename = '<TESTBASE>/test/local/bad.link' OR filename LIKE '<TESTBASE>/test/local/bad.link/%')  AND  hostname = 'local'
DELETE (<TESTBASE>/test/local/bad.link) Last dir: <TESTBASE>/test/local/bad.link/. rc: 4
Dirty (missing) item <TESTBASE>/test/local/new_file 'N' all RM  0
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new_file 'N' all
Deleting peer:<TESTBASE>/test/local/new_file 'N' all
CONN peer < STAT %25test%25/new_file%20%27N%27%20all 
CONN peer > 'ERROR (Path not found): %25test%25'
read_conn_status '%25test%25' -13
peer:<TESTBASE>/test/local/new_file 'N' all is already up to date on peer.
Clear dirty peer:<TESTBASE>/test/local/new_file 'N' all (0)
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/new_file ''N'' all'  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: DELETE FROM dirty WHERE  (filename = '<TESTBASE>/test/local/new_file ''N'' all' OR filename LIKE '<TESTBASE>/test/local/new_file ''N'' all/%')  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: DELETE FROM file WHERE  (filename = '<TESTBASE>/test/local/new_file ''N'' all' OR filename LIKE '<TESTBASE>/test/local/new_file ''N'' all/%')  AND  hostname = 'local'
DELETE (<TESTBASE>/test/local/new_file 'N' all) Last dir: <TESTBASE>/test/local/new_file 'N' all/. rc: 4
Dirty (missing) item <TESTBASE>/test/local/new_file 'N' all.link RM  0
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new_file 'N' all.link
Deleting peer:<TESTBASE>/test/local/new_file 'N' all.link
CONN peer < STAT %25test%25/new_file%20%27N%27%20all.link 
CONN peer > 'ERROR (Path not found): %25test%25'
read_conn_status '%25test%25' -13
peer:<TESTBASE>/test/local/new_file 'N' all.link is already up to date on peer.
Clear dirty peer:<TESTBASE>/test/local/new_file 'N' all.link (0)
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/new_file ''N'' all.link'  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: DELETE FROM dirty WHERE  (filename = '<TESTBASE>/test/local/new_file ''N'' all.link' OR filename LIKE '<TESTBASE>/test/local/new_file ''N'' all.link/%')  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: DELETE FROM file WHERE  (filename = '<TESTBASE>/test/local/new_file ''N'' all.link' OR filename LIKE '<TESTBASE>/test/local/new_file ''N'' all.link/%')  AND  hostname = 'local'
DELETE (<TESTBASE>/test/local/new_file 'N' all.link) Last dir: <TESTBASE>/test/local/new_file 'N' all.link/. rc: 4
CONN peer < BYE

CONN peer > 'ERROR (Path not found): %25test%25'
read_conn_status '%25test%25' -13
MODE 65536
Redis closed.
SQL: SELECT command, logfile FROM action
SQL Query finished.
csync_config_destroy
csync_config_destroy end
