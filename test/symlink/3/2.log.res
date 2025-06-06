cmd x "Link local/new_file 'N' all" local peer test
csync_hostinfo (nil)
standalone: 0 server_standalone > 0: 0
Config-File:   csync2_pgsql_local.cfg
Prefix 'test' is set to '/export/home/dennis/Projects/csync2/csync2/test/test/local'.
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
Running recursive check for /export/home/dennis/Projects/csync2/csync2/test/test ...
Checking recursive for modified files /export/home/dennis/Projects/csync2/csync2/test/test 
csync_check_dir: /export/home/dennis/Projects/csync2/csync2/test/test 65 
Checking /export/home/dennis/Projects/csync2/csync2/test/test/* ..
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local
Redis reply: GET 'CLOSE_WRITE,CLOSE:/export/home/dennis/Projects/csync2/csync2/test/test/local' -> (null)
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'local' AND filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local' 
New file: /export/home/dennis/Projects/csync2/csync2/test/test/local
SQL Query finished.
check_file: calc_digest: 0 dirty: 2 is_upgrade 0 dev_change: 0
csync_check_file_same_dev_inode /export/home/dennis/Projects/csync2/csync2/test/test/local /export/home/dennis/Projects/csync2/csync2/test/test/local
SQL:  SELECT filename, checktxt, digest FROM file f  WHERE  hostname = 'local'  AND device = 2049  AND inode = 52709148  AND filename != '/export/home/dennis/Projects/csync2/csync2/test/test/local' AND ('NULL' = '(null)' OR      filename NOT IN (SELECT filename FROM dirty WHERE peername = '(null)' AND device = f.device AND inode = f.inode));
SQL Query finished.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local
mark other operation: 'MKDIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1748673362:mode=16877:user=dennis:group=schafroth:type=dir' AND device = 2049 AND inode = 52709148 OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local') AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local'  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local', 0, 'local', 'peer', 'MKDIR', 'v2:mtime=1748673362:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 52709148, NULL, 1, 16877, 1, 1748673362)
mark other operation: 'MKDIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1748673362:mode=16877:user=dennis:group=schafroth:type=dir' AND device = 2049 AND inode = 52709148 OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local') AND peername = 'other' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local'  AND  myname = 'local' AND peername like 'other'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local', 0, 'local', 'other', 'MKDIR', 'v2:mtime=1748673362:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 52709148, NULL, 1, 16877, 1, 1748673362)
INSERT/UPDATE: /export/home/dennis/Projects/csync2/csync2/test/test/local (null)
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('local', '/export/home/dennis/Projects/csync2/csync2/test/test/local', 'v2:mtime=1748673362:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 52709148, NULL, 16877, 4096, 1748673362, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1748673362:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 52709148, digest = NULL, mode = 16877, size = 4096, mtime = 1748673362, type = 1
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local rows matched: 0
csync_check_dir: /export/home/dennis/Projects/csync2/csync2/test/test/local 193 
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/* ..
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/new_file 'N' all.link
Redis reply: GET 'CLOSE_WRITE,CLOSE:/export/home/dennis/Projects/csync2/csync2/test/test/local/new_file 'N' all.link' -> (null)
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'local' AND filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/new_file ''N'' all.link' 
New file: /export/home/dennis/Projects/csync2/csync2/test/test/local/new_file 'N' all.link
SQL Query finished.
check_file: calc_digest: 0 dirty: 2 is_upgrade 0 dev_change: 0
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/new_file 'N' all.link
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/new_file 'N' all.link
mark other operation: 'NEW' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new_file 'N' all.link' 'new_file 'N' all'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1748673362:mode=41471:user=dennis:group=schafroth:type=lnk:target=new_file ''''N'''' all' AND device = 2049 AND inode = 52710367 OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/new_file ''N'' all.link') AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/new_file ''N'' all.link'  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/new_file ''N'' all.link', 0, 'local', 'peer', 'NEW', 'v2:mtime=1748673362:mode=41471:user=dennis:group=schafroth:type=lnk:target=new_file ''''N'''' all', 2049, 52710367, 'new_file ''N'' all', 2, 41471, 6, 1748673362)
mark other operation: 'NEW' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/new_file 'N' all.link' 'new_file 'N' all'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1748673362:mode=41471:user=dennis:group=schafroth:type=lnk:target=new_file ''''N'''' all' AND device = 2049 AND inode = 52710367 OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/new_file ''N'' all.link') AND peername = 'other' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/new_file ''N'' all.link'  AND  myname = 'local' AND peername like 'other'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/new_file ''N'' all.link', 0, 'local', 'other', 'NEW', 'v2:mtime=1748673362:mode=41471:user=dennis:group=schafroth:type=lnk:target=new_file ''''N'''' all', 2049, 52710367, 'new_file ''N'' all', 2, 41471, 6, 1748673362)
INSERT/UPDATE: /export/home/dennis/Projects/csync2/csync2/test/test/local/new_file ''N'' all.link (null)
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('local', '/export/home/dennis/Projects/csync2/csync2/test/test/local/new_file ''N'' all.link', 'v2:mtime=1748673362:mode=41471:user=dennis:group=schafroth:type=lnk:target=new_file ''N'' all', 2049, 52710367, NULL, 41471, 16, 1748673362, 6) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1748673362:mode=41471:user=dennis:group=schafroth:type=lnk:target=new_file ''N'' all', device = 2049, inode = 52710367, digest = NULL, mode = 41471, size = 16, mtime = 1748673362, type = 6
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local/new_file 'N' all.link rows matched: 0
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/new_file 'N' all
Redis reply: GET 'CLOSE_WRITE,CLOSE:/export/home/dennis/Projects/csync2/csync2/test/test/local/new_file 'N' all' -> (null)
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'local' AND filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/new_file ''N'' all' 
New file: /export/home/dennis/Projects/csync2/csync2/test/test/local/new_file 'N' all
SQL Query finished.
check_file: calc_digest: 4 dirty: 2 is_upgrade 0 dev_change: 0
csync_check_file_same_dev_inode /export/home/dennis/Projects/csync2/csync2/test/test/local/new_file 'N' all /export/home/dennis/Projects/csync2/csync2/test/test/local/new_file ''N'' all
SQL:  SELECT filename, checktxt, digest FROM file f  WHERE  hostname = 'local'  AND device = 2049  AND inode = 52710352  AND filename != '/export/home/dennis/Projects/csync2/csync2/test/test/local/new_file ''N'' all' AND ('NULL' = '(null)' OR      filename NOT IN (SELECT filename FROM dirty WHERE peername = '(null)' AND device = f.device AND inode = f.inode));
SQL Query finished.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/new_file 'N' all
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/new_file 'N' all
mark other operation: 'NEW' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new_file 'N' all' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1748673361:mode=33188:user=dennis:group=schafroth:type=reg:size=4' AND device = 2049 AND inode = 52710352 OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/new_file ''N'' all') AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/new_file ''N'' all'  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/new_file ''N'' all', 0, 'local', 'peer', 'NEW', 'v2:mtime=1748673361:mode=33188:user=dennis:group=schafroth:type=reg:size=4', 2049, 52710352, NULL, 2, 33188, 2, 1748673361)
mark other operation: 'NEW' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/new_file 'N' all' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1748673361:mode=33188:user=dennis:group=schafroth:type=reg:size=4' AND device = 2049 AND inode = 52710352 OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/new_file ''N'' all') AND peername = 'other' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/new_file ''N'' all'  AND  myname = 'local' AND peername like 'other'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/new_file ''N'' all', 0, 'local', 'other', 'NEW', 'v2:mtime=1748673361:mode=33188:user=dennis:group=schafroth:type=reg:size=4', 2049, 52710352, NULL, 2, 33188, 2, 1748673361)
INSERT/UPDATE: /export/home/dennis/Projects/csync2/csync2/test/test/local/new_file ''N'' all eeb4df3d04063049b45ea11a12354a37e8740687
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('local', '/export/home/dennis/Projects/csync2/csync2/test/test/local/new_file ''N'' all', 'v2:mtime=1748673361:mode=33188:user=dennis:group=schafroth:type=reg:size=4', 2049, 52710352, 'eeb4df3d04063049b45ea11a12354a37e8740687', 33188, 4, 1748673361, 2) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1748673361:mode=33188:user=dennis:group=schafroth:type=reg:size=4', device = 2049, inode = 52710352, digest = 'eeb4df3d04063049b45ea11a12354a37e8740687', mode = 33188, size = 4, mtime = 1748673361, type = 2
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local/new_file 'N' all rows matched: 0
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test recursive.
file /export/home/dennis/Projects/csync2/csync2/test/test encoded /export/home/dennis/Projects/csync2/csync2/test/test. Hostname: local 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  (filename = '/export/home/dennis/Projects/csync2/csync2/test/test' OR filename LIKE '/export/home/dennis/Projects/csync2/csync2/test/test/%')  AND  hostname = 'local' ORDER BY filename
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/local' 53, cached path: '(null)' 0, 0.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/new_file 'N' all
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/local/new_file 'N' all' 59, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/' 53, 53.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/new_file 'N' all.link
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/local/new_file 'N' all.link' 59, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/local/' 59, 59.
SQL Query finished.
csync_file_args: '/export/home/dennis/Projects/csync2/csync2/test/test' flags 65 
get dirty host
SQL: SELECT peername FROM dirty WHERE myname = 'local' AND peername NOT IN (SELECT host FROM host WHERE status = 1) GROUP BY peername
dirty host other 
dirty host peer 
SQL Query finished.
SQL: SELECT filename, operation, op, other, checktxt, digest, forced, (op & 639) as type FROM dirty WHERE   (filename = '/export/home/dennis/Projects/csync2/csync2/test/test' OR filename LIKE '/export/home/dennis/Projects/csync2/csync2/test/test/%')  AND  peername = 'peer' AND myname = 'local' AND peername NOT IN (SELECT host FROM host WHERE status = 1) ORDER by type DESC, filename DESC
DIRTY LOOKUP: '/export/home/dennis/Projects/csync2/csync2/test/test/local/new_file 'N' all.link' ''
compare file with pattern /export/home/dennis/Projects/csync2/csync2/test/test
dirty: peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new_file 'N' all.link v2:mtime=xxxxxxxxxx:mode=41471:user=dennis:group=schafroth:type=lnk:target=new_file ''N'' all ''
DIRTY LOOKUP: '/export/home/dennis/Projects/csync2/csync2/test/test/local/new_file 'N' all' ''
compare file with pattern /export/home/dennis/Projects/csync2/csync2/test/test
dirty: peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new_file 'N' all v2:mtime=xxxxxxxxxx:mode=33188:user=dennis:group=schafroth:type=reg:size=4 ''
DIRTY LOOKUP: '/export/home/dennis/Projects/csync2/csync2/test/test/local' ''
compare file with pattern /export/home/dennis/Projects/csync2/csync2/test/test
dirty: peer:/export/home/dennis/Projects/csync2/csync2/test/test/local v2:mtime=xxxxxxxxxx:mode=16877:user=dennis:group=schafroth:type=dir ''
SQL Query finished.
Got dirty files from host peer
Connecting to host peer (PLAIN) ...
Using alternative port to localhost:30861 
Connecting to localhost:30861 
Using specific address 127.0.0.2
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
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/local' 53, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/local/' 59, 53.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local
uid dennis gid schafroth
Updating (MKDIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local' ''
csync_update_file_sig_rs_diff peer:/export/home/dennis/Projects/csync2/csync2/test/test/local
CONN peer < SIG %25test%25 user/group 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'OK (not_found).'
update_file_sig /export/home/dennis/Projects/csync2/csync2/test/test/local RC 32
has links: file /export/home/dennis/Projects/csync2/csync2/test/test/local checktxt 'v2:mtime=1748673362:mode=16877:user=dennis:group=schafroth:type=dir' 2 0
MKDIR rc: 32
CONN peer < MKDIR %25test%25 - 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'IDENT (cmd_finished).'
read_conn_status 'IDENT (cmd_finished).' 4
before setown/settime/setmod on OK. rc 4 sig_rc: 32.
After setown/settime/setmod on OK. rc 4.
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local (0)
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local'  AND  myname = 'local' AND peername like 'peer'
Directory /export/home/dennis/Projects/csync2/csync2/test/test
Adding textlist_add_new: /export/home/dennis/Projects/csync2/csync2/test/test
Skipping textlist_add_new: /export/home/dennis/Projects/csync2/csync2/test/test
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/local/new_file 'N' all' 59, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/' 53, 53.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/new_file 'N' all
uid dennis gid schafroth
Updating (NEW) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new_file 'N' all' ''
csync_update_file_sig_rs_diff peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new_file 'N' all
CONN peer < SIG %25test%25/new_file%20%27N%27%20all user/group 1234 1000 dennis schafroth 33188 - 4 
CONN peer > 'OK (not_found).'
update_file_sig /export/home/dennis/Projects/csync2/csync2/test/test/local/new_file 'N' all RC 32
has links: file /export/home/dennis/Projects/csync2/csync2/test/test/local/new_file 'N' all checktxt 'v2:mtime=1748673361:mode=33188:user=dennis:group=schafroth:type=reg:size=4' 1 1
CONN peer < CREATE %25test%25/new_file%20%27N%27%20all - 1234 1000 dennis schafroth 33188 - 4 
CONN peer > 'OK (send data).'
read_conn_status 'OK (send data).' 0
CREATE /export/home/dennis/Projects/csync2/csync2/test/test/local/new_file 'N' all 4
Sending octet-stream of 4 bytes
CONN peer < octet-stream 4

Reading chunk 4 bytes of 4 from file
Writing chunk 4 bytes of 4
CONN peer > 'IDENT (cmd_finished).'
read_conn_status 'IDENT (cmd_finished).' 4
before setown/settime/setmod on OK. rc 4 sig_rc: 32.
After setown/settime/setmod on OK. rc 4.
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new_file 'N' all (0)
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/new_file ''N'' all'  AND  myname = 'local' AND peername like 'peer'
Directory /export/home/dennis/Projects/csync2/csync2/test/test/local
Adding textlist_add_new: /export/home/dennis/Projects/csync2/csync2/test/test/local
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/local/new_file 'N' all.link' 59, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/local/' 59, 59.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/new_file 'N' all.link
uid dennis gid schafroth
Updating (LINK) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new_file 'N' all.link' 'new_file 'N' all'
csync_update_file_sig_rs_diff peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new_file 'N' all.link
CONN peer < SIG %25test%25/new_file%20%27N%27%20all.link user/group 1234 1000 dennis schafroth 41471 - 16 
CONN peer > 'OK (not_found).'
update_file_sig /export/home/dennis/Projects/csync2/csync2/test/test/local/new_file 'N' all.link RC 32
has links: file /export/home/dennis/Projects/csync2/csync2/test/test/local/new_file 'N' all.link checktxt 'v2:mtime=1748673362:mode=41471:user=dennis:group=schafroth:type=lnk:target=new_file ''N'' all' 1 0
CONN peer < MKLINK %25test%25/new_file%20%27N%27%20all.link 
CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
before setown/settime/setmod on OK. rc 0 sig_rc: 32.
CONN peer < SETOWN %25test%25/new_file%20%27N%27%20all.link user/group 1234 1000 dennis schafroth 41471 - 16 
CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
Skipping setmod on link peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new_file 'N' all.link
CONN peer < SETTIME %25test%25/new_file%20%27N%27%20all.link 
CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
After setown/settime/setmod on OK. rc 0.
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new_file 'N' all.link (0)
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/new_file ''N'' all.link'  AND  myname = 'local' AND peername like 'peer'
Directory /export/home/dennis/Projects/csync2/csync2/test/test/local
Skipping textlist_add_new: /export/home/dennis/Projects/csync2/csync2/test/test/local
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local
uid dennis gid schafroth
update_directory: Setting directory time /export/home/dennis/Projects/csync2/csync2/test/test/local 1748673362.
CONN peer < SETTIME %25test%25 
CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
CONN peer < BYE

CONN peer > 'OK (cu_later).'
read_conn_status 'OK (cu_later).' 0
MODE 65536
Redis closed.
SQL: SELECT command, logfile FROM action
SQL Query finished.
csync_config_destroy
csync_config_destroy end
