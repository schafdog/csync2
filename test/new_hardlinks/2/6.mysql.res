<TESTBASE>/test/local
<TESTBASE>/test/local/new
<TESTBASE>/test/local/new/hardlinked
<TESTBASE>/test/local/new/hardlinked_2
<TESTBASE>/test/local/new/hardlinked_3
<TESTBASE>/test/local/new/hardlinked_4
<TESTBASE>/test/local/new/hardlinked_5
<TESTBASE>/test/local/new/new_file
peer	<TESTBASE>/test/local	MARK	NULL	0
peer	<TESTBASE>/test/local/new	MARK	NULL	0
peer	<TESTBASE>/test/local/new/hardlinked	MARK	NULL	0
peer	<TESTBASE>/test/local/new/hardlinked_2	MARK	NULL	0
peer	<TESTBASE>/test/local/new/hardlinked_3	MARK	NULL	0
peer	<TESTBASE>/test/local/new/hardlinked_4	MARK	NULL	0
peer	<TESTBASE>/test/local/new/hardlinked_5	MARK	NULL	0
peer	<TESTBASE>/test/local/new/new_file	MARK	NULL	0
other	<TESTBASE>/test/local	MKDIR	NULL	1
other	<TESTBASE>/test/local/new	MKDIR	NULL	1
other	<TESTBASE>/test/local/new/new_file	NEW	NULL	2
other	<TESTBASE>/test/local/new/hardlinked	HARDLINK	<TESTBASE>/test/local/new/new_file	32
other	<TESTBASE>/test/local/new/hardlinked_2	HARDLINK	<TESTBASE>/test/local/new/new_file	32
other	<TESTBASE>/test/local/new/hardlinked_3	HARDLINK	<TESTBASE>/test/local/new/new_file	32
