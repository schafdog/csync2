cmd x "Bad link" local peer test
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
mark other operation: 'MOD_DIR' 'peer:<TESTBASE>/test/local' '-'.
mark other operation: 'MOD_DIR' 'other:<TESTBASE>/test/local' '-'.
mark other: MOD_DIR(129) Old operation: MKDIR(1) '<TESTBASE>/test/local' ''
mark operation NEW -> MOD => NEW other:<TESTBASE>/test/local (not synced) .
Inserted/updated <TESTBASE>/test/local rows matched: 0
Checking <TESTBASE>/test/local/* ..
New file: <TESTBASE>/test/local/bad.link
WARN: stat failed. op: 2
mark other operation: 'RM?' 'peer:<TESTBASE>/test/local/bad.link' 'missing'.
WARN: stat failed. op: 2
mark other operation: 'RM?' 'other:<TESTBASE>/test/local/bad.link' 'missing'.
Inserted/updated <TESTBASE>/test/local/bad.link rows matched: 0
Checking for deleted files <TESTBASE>/test recursive.
<<<<<<< HEAD
csync_file_args: '<TESTBASE>/test' flags 65 
dirty: peer:<TESTBASE>/test/local/bad.link v2:mtime=xxxxxxxxxx:mode=41471:user=dennis:group=schafroth:type=lnk:target=missing ''
dirty: peer:<TESTBASE>/test/local v2:mtime=xxxxxxxxxx:mode=16877:user=dennis:group=schafroth:type=dir ''
=======
dirty: peer:<TESTBASE>/test/local/bad.link v2:mtime=xxxxxxxxxx:mode=41471:user=<USER>:group=<GROUP>:type=lnk:target=missing ''
dirty: peer:<TESTBASE>/test/local v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
>>>>>>> 768622b8 (Filter dev:inode. Fix error code (wrong on macos))
Got dirty files from host peer
Connecting to host peer (PLAIN) ...
Using alternative port to localhost:30861 
Connecting to localhost:30861 
Using specific address 127.0.0.2
Connected to localhost:30861 
CONN peer < CONFIG 

CONN peer > 'OK (cmd_finished).'
CONN peer < DEBUG 2

CONN peer > 'OK (cmd_finished).'
CONN peer < HELLO local

CONN peer > 'OK (cmd_finished).'
Updating (MOD_DIR) 'peer:<TESTBASE>/test/local' ''
CONN peer < SIG %25test%25 user/group 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'OK (data_follows).'
update_file_sig <TESTBASE>/test/local RC 0
CONN peer > 'v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir'
<TESTBASE>/test/local is different on peer (cktxt char #-1).
>>> peer:	v2:mtime=xxxxxxxxxx:mode=16877:user=dennis:group=schafroth:type=dir
>>> LOCAL:	v2:mtime=xxxxxxxxxx:mode=16877:user=dennis:group=schafroth:type=dir
CONN peer > 'octet-stream 0'
Got octet-stream 0
Content length in buffer: 'octet-stream 0' size: 0 rc: 0 (octet-stream)
rs_check: Receiving signature 0 bytes for <TESTBASE>/test/local
CONN peer > 'OK (cmd_finished).'
?M: peer            <TESTBASE>/test/local
CONN peer < MOD %25test%25 - 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local (0)
Updating (LINK) 'peer:<TESTBASE>/test/local/bad.link' 'missing'
CONN peer < SIG %25test%25/bad.link user/group 1234 1000 dennis schafroth 41471 - 7 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/bad.link RC 32
CONN peer < MKLINK %25test%25/bad.link 
CONN peer > 'OK (cmd_finished).'
CONN peer < SETOWN %25test%25/bad.link user/group 1234 1000 dennis schafroth 41471 - 7 
CONN peer > 'OK (cmd_finished).'
Skipping setmod on link peer:<TESTBASE>/test/local/bad.link
CONN peer < SETTIME %25test%25/bad.link 
CONN peer > 'OK (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/bad.link (0)
CONN peer < SETTIME %25test%25 
CONN peer > 'OK (cmd_finished).'
CONN peer < BYE

CONN peer > 'OK (cu_later).'
