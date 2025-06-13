cmd x "New file" local peer test
Config-File:   csync2_pgsql_local.cfg
My hostname is local.
Database File: pgsql://csync2:csync238@localhost/csync2_local
DB Version:    2
IP Version:    IPv4
db_schema_version: 2
Running recursive check for <TESTBASE>/test ...
Checking recursive for modified files <TESTBASE>/test 
Checking <TESTBASE>/test/* ..
No match. Don't check at all: <TESTBASE>/test/peer
Checking <TESTBASE>/test/local/* ..
Checking <TESTBASE>/test/local/usr/* ..
mark other operation: 'MOD_DIR' 'peer:<TESTBASE>/test/local/usr/local' '-'.
mark other operation: 'MOD_DIR' 'other:<TESTBASE>/test/local/usr/local' '-'.
mark other: MOD_DIR(129) Old operation: MKDIR(1) '<TESTBASE>/test/local/usr/local' ''
mark operation NEW -> MOD => NEW other:<TESTBASE>/test/local/usr/local (not synced) .
Inserted/updated <TESTBASE>/test/local/usr/local rows matched: 0
Checking <TESTBASE>/test/local/usr/local/* ..
mark other operation: 'MOD_DIR' 'peer:<TESTBASE>/test/local/usr/local/sbin' '-'.
mark other operation: 'MOD_DIR' 'other:<TESTBASE>/test/local/usr/local/sbin' '-'.
mark other: MOD_DIR(129) Old operation: MKDIR(1) '<TESTBASE>/test/local/usr/local/sbin' ''
mark operation NEW -> MOD => NEW other:<TESTBASE>/test/local/usr/local/sbin (not synced) .
Inserted/updated <TESTBASE>/test/local/usr/local/sbin rows matched: 0
Checking <TESTBASE>/test/local/usr/local/sbin/* ..
New file: <TESTBASE>/test/local/usr/local/sbin/hej
csync_check_file_same_dev_inode <TESTBASE>/test/local/usr/local/sbin/hej <TESTBASE>/test/local/usr/local/sbin/hej
mark other operation: 'NEW' 'peer:<TESTBASE>/test/local/usr/local/sbin/hej' '-'.
mark other operation: 'NEW' 'other:<TESTBASE>/test/local/usr/local/sbin/hej' '-'.
Inserted/updated <TESTBASE>/test/local/usr/local/sbin/hej rows matched: 0
Checking for deleted files <TESTBASE>/test recursive.
csync_file_args: '<TESTBASE>/test' flags 65 
dirty: peer:<TESTBASE>/test/local/usr/local/sbin/hej v2:mtime=xxxxxxxxxx:mode=33188:user=dennis:group=schafroth:type=reg:size=4 ''
dirty: peer:<TESTBASE>/test/local/usr/local/sbin v2:mtime=xxxxxxxxxx:mode=16877:user=dennis:group=schafroth:type=dir ''
dirty: peer:<TESTBASE>/test/local/usr/local v2:mtime=xxxxxxxxxx:mode=16877:user=dennis:group=schafroth:type=dir ''
Got dirty files from host peer
Connecting to host peer (PLAIN) ...
Connecting to localhost:30861 
CONN peer < CONFIG 

CONN peer > 'OK (cmd_finished).'
CONN peer < DEBUG 2

CONN peer > 'OK (cmd_finished).'
CONN peer < HELLO local

CONN peer > 'OK (cmd_finished).'
Updating (MOD_DIR) 'peer:<TESTBASE>/test/local/usr/local' ''
CONN peer < SIG %25test%25/usr/local user/group 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'OK (data_follows).'
update_file_sig <TESTBASE>/test/local/usr/local RC 0
CONN peer > 'v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir'
CONN peer > 'octet-stream 0'
Got octet-stream 0
Content length in buffer: 'octet-stream 0' size: 0 rc: 0 (octet-stream)
rs_check: Receiving signature 0 bytes for <TESTBASE>/test/local/usr/local
CONN peer > 'OK (cmd_finished).'
?S: peer            <TESTBASE>/test/local/usr/local
Clear dirty peer:<TESTBASE>/test/local/usr/local (0)
Updating (MOD_DIR) 'peer:<TESTBASE>/test/local/usr/local/sbin' ''
CONN peer < SIG %25test%25/usr/local/sbin user/group 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'OK (data_follows).'
update_file_sig <TESTBASE>/test/local/usr/local/sbin RC 0
CONN peer > 'v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir'
<TESTBASE>/test/local/usr/local/sbin is different on peer (cktxt char #-1).
>>> peer:	v2:mtime=xxxxxxxxxx:mode=16877:user=dennis:group=schafroth:type=dir
>>> LOCAL:	v2:mtime=xxxxxxxxxx:mode=16877:user=dennis:group=schafroth:type=dir
CONN peer > 'octet-stream 0'
Got octet-stream 0
Content length in buffer: 'octet-stream 0' size: 0 rc: 0 (octet-stream)
rs_check: Receiving signature 0 bytes for <TESTBASE>/test/local/usr/local/sbin
CONN peer > 'OK (cmd_finished).'
?M: peer            <TESTBASE>/test/local/usr/local/sbin
CONN peer < MOD %25test%25/usr/local/sbin - 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/usr/local/sbin (0)
Updating (NEW) 'peer:<TESTBASE>/test/local/usr/local/sbin/hej' ''
CONN peer < SIG %25test%25/usr/local/sbin/hej user/group 1234 1000 dennis schafroth 33188 - 4 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/usr/local/sbin/hej RC 32
CONN peer < CREATE %25test%25/usr/local/sbin/hej - 1234 1000 dennis schafroth 33188 - 4 
CONN peer > 'OK (send data).'
CREATE <TESTBASE>/test/local/usr/local/sbin/hej 4
CONN peer < octet-stream 4

CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/usr/local/sbin/hej (0)
CONN peer < SETTIME %25test%25/usr/local/sbin 
CONN peer > 'OK (cmd_finished).'
CONN peer < SETTIME %25test%25/usr/local 
CONN peer > 'OK (cmd_finished).'
CONN peer < SETTIME %25test%25/usr 
CONN peer > 'OK (cmd_finished).'
CONN peer < BYE

CONN peer > 'OK (cu_later).'
