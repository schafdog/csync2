cmd x "New directory and file" local peer test
Running recursive check for <TESTBASE>/test ...
Checking recursive for modified files <TESTBASE>/test 
Checking for deleted files <TESTBASE>/test recursive.
Got dirty files from host peer
Connecting to host peer (PLAIN) ...
Updating (MKDIR) 'peer:<TESTBASE>/test/local' ''
Updating (MKDIR) 'peer:<TESTBASE>/test/local/usr' ''
Updating (MKDIR) 'peer:<TESTBASE>/test/local/usr/local' ''
Updating (MKDIR) 'peer:<TESTBASE>/test/local/usr/local/abc' ''
Updating (MKDIR) 'peer:<TESTBASE>/test/local/usr/local/def' ''
Updating (MKDIR) 'peer:<TESTBASE>/test/local/usr/local/sbin' ''
Updating (LINK) 'peer:<TESTBASE>/test/local/usr/local/def/hej' '../sbin/hej'
Updating (NEW) 'peer:<TESTBASE>/test/local/usr/local/sbin/hej' ''
Got octet-stream 12
Receiving 12 bytes (octet-stream)..
Sending octet-stream of 10 bytes
