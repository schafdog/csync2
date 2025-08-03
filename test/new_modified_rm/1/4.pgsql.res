<TESTBASE>/test/local
<TESTBASE>/test/local/newdir
other	<TESTBASE>/test/local	MKDIR	NULL	1
peer	<TESTBASE>/test/local	MKDIR	NULL	1
other	<TESTBASE>/test/local/A	NEW	NULL	2
peer	<TESTBASE>/test/local/A	NEW	NULL	2
other	<TESTBASE>/test/local/newdir	MV	<TESTBASE>/test/local/A	NULL	16
peer	<TESTBASE>/test/local/newdir	MV	<TESTBASE>/test/local/A	NULL	16
