cmd u "update: Delete email: ln Maildir/cur/1434.M21,S=6631,W=6764:2,S Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S. mv 1434.M21,S=6631,W=6764:2,S 1434.M21,S=6631,W=6764:2,ST" local peer test
Got dirty files from host peer
Connecting to host peer (PLAIN) ...
Updating (MOD_DIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur' ''
Got octet-stream 0
?M: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur
Updating (MOD_DIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur' ''
Got octet-stream 0
?M: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur
Updating (MV) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST' '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,S'
Succes: MV /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,S /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
Got octet-stream 32
Updating (HARDLINK) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S' '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST'
do hardlink check /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST 
Got octet-stream 32
Hardlinking peer /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST -> /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S
clear dirty HARDLINK