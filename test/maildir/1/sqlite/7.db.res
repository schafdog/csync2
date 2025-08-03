<TESTBASE>/test/local
<TESTBASE>/test/local/Maildir
<TESTBASE>/test/local/Maildir/.Trash
<TESTBASE>/test/local/Maildir/.Trash/cur
<TESTBASE>/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S
<TESTBASE>/test/local/Maildir/cur
<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
<TESTBASE>/test/local/Maildir/new
<TESTBASE>/test/local/Maildir/tmp
other	<TESTBASE>/test/local	MKDIR	-	1
other	<TESTBASE>/test/local/Maildir	MKDIR	-	1
other	<TESTBASE>/test/local/Maildir/.Trash	MKDIR	-	1
other	<TESTBASE>/test/local/Maildir/.Trash/cur	MKDIR	-	1
other	<TESTBASE>/test/local/Maildir/cur	MKDIR	-	1
other	<TESTBASE>/test/local/Maildir/new	MKDIR	-	1
other	<TESTBASE>/test/local/Maildir/tmp	MKDIR	-	1
other	<TESTBASE>/test/local/Maildir/new/1434.M21,S=6631,W=6764	NEW	-	2
other	<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,	MV	<TESTBASE>/test/local/Maildir/new/1434.M21,S=6631,W=6764	16
other	<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,S	MV	<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,	16
other	<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST	MV	<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,S	16
peer	<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST	MV	<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,S	16
other	<TESTBASE>/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S	HARDLINK	<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST	32
peer	<TESTBASE>/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S	HARDLINK	<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST	32
peer	<TESTBASE>/test/local/Maildir/.Trash/cur	MKDIR	-	129
peer	<TESTBASE>/test/local/Maildir/cur	MKDIR	-	129
