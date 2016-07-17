cmd R "check -R" local

csync2 2.0-rc2 - cluster synchronization tool, 2nd generation
LINBIT Information Technologies GmbH <http://www.linbit.com>
Copyright (C) 2004, 2005  Clifford Wolf <clifford@clifford.at>
Copyright (C) 2010  Dennis Schafroth <dennis@schafroth.com>
Copyright (C) 2010  Johannes Thoma <johannes.thoma@gmx.at>

 3a4bd4a5f55cc9e3253feaa00127d1b2d335e169-dirty

This program is free software under the terms of the GNU GPL.

Usage: ../csync2 [-v..] [-C config-name|-K config-file] \
		[-D database-dir] [-N hostname] [-p port] ..

With file parameters:
	-h [-r] file..		Add (recursive) hints for check to db
	-c [-r] file..		Check files and maybe add to dirty db
	-u [-d] [-r] file..	Updates files if listed in dirty db
	-o [-r] file..		Create list of files in compare-mode
	-f [-r] file..		Force files to win next conflict resolution
	-m file..		Mark files in database as dirty

Simple mode:
	-x [-d] [[-r] file..]	Run checks for all given files and update
				remote hosts.

Without file parameters:
	-c	Check all hints in db and eventually mark files as dirty
	-u [-d]	Update (transfer dirty files to peers and mark as clear)

	-H	List all pending hints from status db
	-L	List all file-entries from status db
	-M	List all dirty files from status db

	-S myname peername	List file-entries from status db for this
				synchronization pair.

	-T  			Test if everything is in sync with all peers.

	-T filename 		Test if this file is in sync with all peers.

	-T myname peername	Test if this synchronization pair is in sync.

	-T myname peer file	Test only this file in this sync pair.

	-TT	As -T, but print the unified diffs.

	The modes -H, -L, -M and -S return 2 if the requested db is empty.
	The mode -T returns 2 if both hosts are in sync.

	-i	Run in inetd server mode.
	-ii	Run in stand-alone server mode.
	-iii	Run in stand-alone server mode (one connect only, no forking).
	-iiii	Run in stand-alone server mode (multi connects, no forking).

	-R	Remove files from database which do not match config entries.

Modifiers:
	-r	Recursive operation over subdirectories
	-d	Dry-run on all remote update operations

	-B	Do not block everything into big SQL transactions. This
		slows down csync2 but allows multiple csync2 processes to
		access the database at the same time. Use e.g. when slow
		lines are used or huge files are transferred.

	-A	Open database in asynchronous mode. This will cause data
		corruption if the operating system crashes or the computer
		loses power.

	-I	Init-run. Use with care and read the documentation first!
		You usually do not need this option unless you are
		initializing groups with really large file lists.

	-X	Also add removals to dirty db when doing a -TI run.
	-U	Don't mark all other peers as dirty when doing a -TI run.

	-G Group1,Group2,Group3,...
		Only use these groups from config-file.

	-P peer1,peer1,...
		Only update these peers (still mark all as dirty).
		Only show files for these peers in -o (compare) mode.

	-F	Add new entries to dirty database with force flag set.

	-t	Print timestamps to debug output (e.g. for profiling).

	-s filename
		Print timestamps also to this file.

	-W fd	Write a list of directories in which relevant files can be
		found to the specified file descriptor (when doing a -c run).
		The directory names in this output are zero-terminated.

       -z peer Force the daemon to accept this peer without verifying.

Database switches:

	-D database-dir
		Use sqlite database in database dir (default: /var/lib/csync2)

	-a mysql-url
		Use mysql database in URL:
		mysql://[<user>:<password>@]<hostname>/<database>

Options:       -l 
              Use syslog local0 facility
       -O logfile
              Use logfile for logging
       -K configfile
              Use this config file

Test Options: NEVER use in production 
       -N myname 
              Override hostname 
       -Z peername
              Allow connections from peername without checking 

Creating key file:
	../csync2 -k filename

Csync2 will refuse to do anything when a /usr/local/etc/csync2/csync2.lock file is found.

