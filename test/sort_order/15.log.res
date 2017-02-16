cmd c "New file deleted (check)" local
Running recursive check for /export/home/dennis/Projects/csync2/csync2/test/test ...
Checking recursive for modified files /export/home/dennis/Projects/csync2/csync2/test/test 
No mapping for operation: 257 -641
mark other operation: 'MOD_DIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local' '-'.
No mapping for operation: 257 -641
ERROR: operation differs: MOD_DIR(128) != ?(257)
mark other: Old operation: MOD_DIR '/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local' '(null)'
No mapping for operation: 257 -641
mark other operation: 'MOD_DIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local' '-'.
No mapping for operation: 257 -641
ERROR: operation differs: MOD_DIR(128) != ?(257)
mark other: Old operation: MOD_DIR '/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local' '(null)'
No mapping for operation: 257 -641
Database Error: Adding new file entry [1]: Duplicate entry '/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/l' for key 'filename' on executing INSERT INTO file (filename, checktxt, device, inode, digest, mode, size, mtime) values ('/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local', 'v2:mtime=1485975173:mode=16877:user=dennis:group=schafroth:type=dir', 2065, 919835717, NULL, 16877, 37, 1485975173) 
