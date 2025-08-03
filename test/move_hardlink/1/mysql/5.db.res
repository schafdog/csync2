<TESTBASE>/test/local
<TESTBASE>/test/local/Maildir
<TESTBASE>/test/local/Maildir/.Trash
<TESTBASE>/test/local/Maildir/.Trash/cur
<TESTBASE>/test/local/Maildir/.Trash/cur/123,Sab
<TESTBASE>/test/local/Maildir/cur
<TESTBASE>/test/local/Maildir/cur/123,Sab
<TESTBASE>/test/local/Maildir/tmp
other	<TESTBASE>/test/local	MKDIR	NULL	1
other	<TESTBASE>/test/local/Maildir	MKDIR	NULL	1
other	<TESTBASE>/test/local/Maildir/.Trash	MKDIR	NULL	1
other	<TESTBASE>/test/local/Maildir/.Trash/cur	MKDIR	NULL	1
other	<TESTBASE>/test/local/Maildir/cur	MKDIR	NULL	1
other	<TESTBASE>/test/local/Maildir/tmp	MKDIR	NULL	1
other	<TESTBASE>/test/local/Maildir/cur/123,Sab	NEW	NULL	2
peer	<TESTBASE>/test/local/Maildir/cur/123,Sab	MV	<TESTBASE>/test/local/Maildir/tmp/123	16
other	<TESTBASE>/test/local/Maildir/.Trash/cur/123,Sab	HARDLINK	<TESTBASE>/test/local/Maildir/cur/123,Sab	32
peer	<TESTBASE>/test/local/Maildir/.Trash/cur/123,Sab	HARDLINK	<TESTBASE>/test/local/Maildir/cur/123,Sab	32
peer	<TESTBASE>/test/local/Maildir/.Trash/cur	MKDIR	NULL	129
peer	<TESTBASE>/test/local/Maildir/cur	MKDIR	NULL	129
peer	<TESTBASE>/test/local/Maildir/tmp	MKDIR	NULL	129
