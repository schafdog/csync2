cmd c "New dir timestamp due to file (check)" local
Running recursive check for /export/home/dennis/Projects/csync2/csync2/test/test ...
Checking recursive for modified files /export/home/dennis/Projects/csync2/csync2/test/test 
No mapping for operation: 257 -641
mark other operation: 'MOD_DIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin' '-'.
No mapping for operation: 257 -641
mark other operation: 'MOD_DIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin' '-'.
mark other: Old operation: MKDIR '/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin' '(null)'
No mapping for operation: 257 -641
Database Error: Adding new file entry [1]: Duplicate entry '/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/l' for key 'filename' on executing INSERT INTO file (filename, checktxt, device, inode, digest, mode, size, mtime) values ('/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin', 'v2:mtime=1485975172:mode=16877:user=dennis:group=schafroth:type=dir', 2065, 578343108, NULL, 16877, 6, 1485975172) 
