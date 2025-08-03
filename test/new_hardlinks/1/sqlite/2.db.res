<TESTBASE>/test/local
<TESTBASE>/test/local/new
<TESTBASE>/test/local/new/hardlinked
<TESTBASE>/test/local/new/new_file
other	<TESTBASE>/test/local	MKDIR	-	1
peer	<TESTBASE>/test/local	MKDIR	-	1
other	<TESTBASE>/test/local/new	MKDIR	-	1
peer	<TESTBASE>/test/local/new	MKDIR	-	1
other	<TESTBASE>/test/local/new/new_file	NEW	-	2
peer	<TESTBASE>/test/local/new/new_file	NEW	-	2
other	<TESTBASE>/test/local/new/hardlinked	HARDLINK	<TESTBASE>/test/local/new/new_file	32
peer	<TESTBASE>/test/local/new/hardlinked	HARDLINK	<TESTBASE>/test/local/new/new_file	32
