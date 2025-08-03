<TESTBASE>/test/local
<TESTBASE>/test/local/newdir
<TESTBASE>/test/local/newdir/C
other	<TESTBASE>/test/local	MKDIR	-	1
peer	<TESTBASE>/test/local	MKDIR	-	1
other	<TESTBASE>/test/local/newdir	MKDIR	-	1
peer	<TESTBASE>/test/local/newdir	MKDIR	-	1
other	<TESTBASE>/test/local/A	NEW	-	2
peer	<TESTBASE>/test/local/A	NEW	-	2
other	<TESTBASE>/test/local/B	MV	<TESTBASE>/test/local/Z	16
peer	<TESTBASE>/test/local/B	MV	<TESTBASE>/test/local/Z	16
other	<TESTBASE>/test/local/Z	MV	<TESTBASE>/test/local/A	16
peer	<TESTBASE>/test/local/Z	MV	<TESTBASE>/test/local/A	16
other	<TESTBASE>/test/local/newdir/C	MV	<TESTBASE>/test/local/B	16
peer	<TESTBASE>/test/local/newdir/C	MV	<TESTBASE>/test/local/B	16
