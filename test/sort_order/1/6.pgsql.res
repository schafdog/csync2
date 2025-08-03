<TESTBASE>/test/local
<TESTBASE>/test/local/usr
<TESTBASE>/test/local/usr/local
<TESTBASE>/test/local/usr/local/abc
<TESTBASE>/test/local/usr/local/def
<TESTBASE>/test/local/usr/local/def/hej
<TESTBASE>/test/local/usr/local/sbin
other	<TESTBASE>/test/local	MKDIR	NULL	1
other	<TESTBASE>/test/local/usr	MKDIR	NULL	1
other	<TESTBASE>/test/local/usr/local	MKDIR	NULL	1
other	<TESTBASE>/test/local/usr/local/abc	MKDIR	NULL	1
other	<TESTBASE>/test/local/usr/local/def	MKDIR	NULL	1
other	<TESTBASE>/test/local/usr/local/sbin	MKDIR	NULL	1
other	<TESTBASE>/test/local/usr/local/def/hej	NEW	../sbin/hej	NULL	2
peer	<TESTBASE>/test/local/usr/local/sbin/hej	RM	NULL	64
peer	<TESTBASE>/test/local/usr/local/sbin	MKDIR	NULL	129
