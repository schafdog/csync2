cmd u "10 not hardlinked when updated" local peer test
Got dirty files from host peer
Connecting to host peer (PLAIN) ...
Updating (MOD_DIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new' ''
Got octet-stream 0
?M: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local/new
Updating (NEW) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/was_hardlink' ''
Got octet-stream 12
Receiving 12 bytes (octet-stream)..
Sending octet-stream of 10 bytes
Unable to HARDLINK peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_6. File has disappeared since check.
mark other operation: 'RM' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_6' '-'.
mark other operation: 'MARK' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/was_hardlink' '-'.
make other dirty /export/home/dennis/Projects/csync2/csync2/test/test/local/new/was_hardlink
