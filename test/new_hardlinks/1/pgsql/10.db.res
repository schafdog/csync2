<TESTBASE>/test/local
<TESTBASE>/test/local/new
<TESTBASE>/test/local/new/hardlinked
<TESTBASE>/test/local/new/hardlinked_2
<TESTBASE>/test/local/new/hardlinked_3
<TESTBASE>/test/local/new/hardlinked_4
<TESTBASE>/test/local/new/hardlinked_5
<TESTBASE>/test/local/new/hardlinked_6
<TESTBASE>/test/local/new/new_file
<TESTBASE>/test/local/new/was_hardlink
peer	<TESTBASE>/test/local/new/was_hardlink	MARK	NULL	0
other	<TESTBASE>/test/local	MKDIR	NULL	1
other	<TESTBASE>/test/local/new	MKDIR	NULL	1
other	<TESTBASE>/test/local/new/new_file	NEW	NULL	2
other	<TESTBASE>/test/local/new/was_hardlink	NEW	NULL	2
other	<TESTBASE>/test/local/new/hardlinked	HARDLINK	<TESTBASE>/test/local/new/new_file	NULL	32
other	<TESTBASE>/test/local/new/hardlinked_2	HARDLINK	<TESTBASE>/test/local/new/hardlinked	NULL	32
other	<TESTBASE>/test/local/new/hardlinked_3	HARDLINK	<TESTBASE>/test/local/new/hardlinked	NULL	32
other	<TESTBASE>/test/local/new/hardlinked_6	HARDLINK	<TESTBASE>/test/local/new/was_hardlink	NULL	32
peer	<TESTBASE>/test/local/new/hardlinked_6	RM	NULL	64
