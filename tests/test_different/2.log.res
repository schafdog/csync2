cmd x "Both updated (peer dirty)" local
Reading symbols from shared library libmysqlclient.so
Running recursive check for /export/home/dennis/Projects/csync2/csync2/tests/test ...
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/tests/test recursive.
mark other operation: MKDIR peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local '-'.
mark other operation: MKDIR other:/export/home/dennis/Projects/csync2/csync2/tests/test/local '-'.
mark other operation: NEW peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/different '-'.
mark other operation: NEW other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/different '-'.
Connecting to host peer (PLAIN) ...
Updating 'peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local' MKDIR ''
?M: peer            /export/home/dennis/Projects/csync2/csync2/tests/test/local
While syncing file: /export/home/dennis/Projects/csync2/csync2/tests/test/local
ERROR from peer: File is also marked dirty here! (/export/home/dennis/Projects/csync2/csync2/tests/test/peer)
Updating 'peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/different' NEW ''
?M: peer            /export/home/dennis/Projects/csync2/csync2/tests/test/local/different
While syncing file: /export/home/dennis/Projects/csync2/csync2/tests/test/local/different
ERROR from peer: File is also marked dirty here! (/export/home/dennis/Projects/csync2/csync2/tests/test/peer/different)
Finished with 2 errors.
