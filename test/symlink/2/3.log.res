cmd x "Bad link" local peer test
Config-File:   csync2_pgsql_local.cfg
My hostname is local.
Database File: pgsql://csync2:csync238@localhost/csync2_local
DB Version:    2
IP Version:    IPv4
db_schema_version: 2
Running recursive check for /export/home/dennis/Projects/csync2/csync2/test/test ...
Checking recursive for modified files /export/home/dennis/Projects/csync2/csync2/test/test 
Checking /export/home/dennis/Projects/csync2/csync2/test/test/* ..
No match. Don't check at all: /export/home/dennis/Projects/csync2/csync2/test/test/peer
mark other operation: 'MOD_DIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local' '-'.
mark other operation: 'MOD_DIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local' '-'.
mark other: MOD_DIR(129) Old operation: MKDIR(1) '/export/home/dennis/Projects/csync2/csync2/test/test/local' ''
mark operation NEW -> MOD => NEW other:/export/home/dennis/Projects/csync2/csync2/test/test/local (not synced) .
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local rows matched: 0
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/* ..
New file: /export/home/dennis/Projects/csync2/csync2/test/test/local/bad.link
WARN: stat failed. op: 2
mark other operation: 'RM?' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/bad.link' 'missing'.
WARN: stat failed. op: 2
mark other operation: 'RM?' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/bad.link' 'missing'.
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local/bad.link rows matched: 0
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test recursive.
csync_file_args: '/export/home/dennis/Projects/csync2/csync2/test/test' flags 65 
dirty: peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/bad.link v2:mtime=xxxxxxxxxx:mode=41471:user=dennis:group=schafroth:type=lnk:target=missing ''
dirty: peer:/export/home/dennis/Projects/csync2/csync2/test/test/local v2:mtime=xxxxxxxxxx:mode=16877:user=dennis:group=schafroth:type=dir ''
Got dirty files from host peer
Connecting to host peer (PLAIN) ...
Connecting to localhost:30861 
CONN peer < CONFIG 

CONN peer > 'OK (cmd_finished).'
CONN peer < DEBUG 2

CONN peer > 'OK (cmd_finished).'
CONN peer < HELLO local

CONN peer > 'OK (cmd_finished).'
Updating (MOD_DIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local' ''
CONN peer < SIG %25test%25 user/group 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'OK (data_follows).'
update_file_sig /export/home/dennis/Projects/csync2/csync2/test/test/local RC 0
CONN peer > 'v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir'
/export/home/dennis/Projects/csync2/csync2/test/test/local is different on peer (cktxt char #-1).
>>> peer:	v2:mtime=xxxxxxxxxx:mode=16877:user=dennis:group=schafroth:type=dir
>>> LOCAL:	v2:mtime=xxxxxxxxxx:mode=16877:user=dennis:group=schafroth:type=dir
CONN peer > 'octet-stream 0'
Got octet-stream 0
Content length in buffer: 'octet-stream 0' size: 0 rc: 0 (octet-stream)
rs_check: Receiving signature 0 bytes for /export/home/dennis/Projects/csync2/csync2/test/test/local
CONN peer > 'OK (cmd_finished).'
?M: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local
CONN peer < MOD %25test%25 - 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local (0)
Updating (LINK) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/bad.link' 'missing'
CONN peer < SIG %25test%25/bad.link user/group 1234 1000 dennis schafroth 41471 - 7 
CONN peer > 'OK (not_found).'
update_file_sig /export/home/dennis/Projects/csync2/csync2/test/test/local/bad.link RC 32
CONN peer < MKLINK %25test%25/bad.link 
CONN peer > 'OK (cmd_finished).'
CONN peer < SETOWN %25test%25/bad.link user/group 1234 1000 dennis schafroth 41471 - 7 
CONN peer > 'OK (cmd_finished).'
Skipping setmod on link peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/bad.link
CONN peer < SETTIME %25test%25/bad.link 
CONN peer > 'OK (cmd_finished).'
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/bad.link (0)
CONN peer < SETTIME %25test%25 
CONN peer > 'OK (cmd_finished).'
CONN peer < BYE

CONN peer > 'OK (cu_later).'
