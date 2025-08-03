<TESTBASE>/test/local
<TESTBASE>/test/local/Maildir
<TESTBASE>/test/local/Maildir/.Trash
<TESTBASE>/test/local/Maildir/.Trash/cur
<TESTBASE>/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S
<TESTBASE>/test/local/Maildir/cur
<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
<TESTBASE>/test/local/Maildir/new
<TESTBASE>/test/local/Maildir/tmp
other	<TESTBASE>/test/local	MKDIR	NULL	1
other	<TESTBASE>/test/local/Maildir	MKDIR	NULL	1
other	<TESTBASE>/test/local/Maildir/.Trash	MKDIR	NULL	1
other	<TESTBASE>/test/local/Maildir/.Trash/cur	MKDIR	NULL	1
other	<TESTBASE>/test/local/Maildir/cur	MKDIR	NULL	1
other	<TESTBASE>/test/local/Maildir/new	MKDIR	NULL	1
other	<TESTBASE>/test/local/Maildir/tmp	MKDIR	NULL	1
other	<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST	NEW	NULL	2
peer	<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST	MV	<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,S	NULL	16
other	<TESTBASE>/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S	HARDLINK	<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST	NULL	32
peer	<TESTBASE>/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S	HARDLINK	<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST	NULL	32
peer	<TESTBASE>/test/local/Maildir/.Trash/cur	MKDIR	NULL	129
peer	<TESTBASE>/test/local/Maildir/cur	MKDIR	NULL	129
