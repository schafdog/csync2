cmd M "New directories and files (Dirty)" local peer test
  MKDIR	local	peer	<TESTBASE>/test/local	1	1
  MKDIR	local	peer	<TESTBASE>/test/local/usr	1	1
  MKDIR	local	peer	<TESTBASE>/test/local/usr/local	1	1
  MKDIR	local	peer	<TESTBASE>/test/local/usr/local/abc	1	1
  MKDIR	local	peer	<TESTBASE>/test/local/usr/local/def	1	1
  MKDIR	local	peer	<TESTBASE>/test/local/usr/local/sbin	1	1
  NEW	local	peer	<TESTBASE>/test/local/usr/local/def/hej	2	2
  NEW	local	peer	<TESTBASE>/test/local/usr/local/sbin/hej	2	2
