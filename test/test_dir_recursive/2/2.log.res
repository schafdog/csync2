cmd x "New directory tree" local peer test
Config-File:   csync2_<DB>_<PEER>.cfg
My hostname is local.
Database File: <CONN_STR>
DB Version:    2
IP Version:    IPv4
csync_file_args: '<TESTBASE>/test' flags 65 
Running recursive check for <TESTBASE>/test ...
Checking recursive for modified files <TESTBASE>/test 
Checking <TESTBASE>/test/* ..
Calling check_mod on <TESTBASE>/test/local from <TESTBASE>/test
New file: <TESTBASE>/test/local
csync_check_file_same_dev_inode <TESTBASE>/test/local <TESTBASE>/test/local
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local' '-'.
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local' '-'.
Inserted/updated <TESTBASE>/test/local rows matched: 1
Checking <TESTBASE>/test/local/* ..
Calling check_mod on <TESTBASE>/test/local/c from <TESTBASE>/test/local
New file: <TESTBASE>/test/local/c
csync_check_file_same_dev_inode <TESTBASE>/test/local/c <TESTBASE>/test/local/c
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local/c' '-'.
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local/c' '-'.
Inserted/updated <TESTBASE>/test/local/c rows matched: 1
Checking <TESTBASE>/test/local/c/* ..
Calling check_mod on <TESTBASE>/test/local/c/f1.txt from <TESTBASE>/test/local/c
New file: <TESTBASE>/test/local/c/f1.txt
csync_check_file_same_dev_inode <TESTBASE>/test/local/c/f1.txt <TESTBASE>/test/local/c/f1.txt
mark other operation: 'NEW' 'peer:<TESTBASE>/test/local/c/f1.txt' '-'.
mark other operation: 'NEW' 'other:<TESTBASE>/test/local/c/f1.txt' '-'.
Inserted/updated <TESTBASE>/test/local/c/f1.txt rows matched: 1
Calling check_mod on <TESTBASE>/test/local/c/3 from <TESTBASE>/test/local/c
New file: <TESTBASE>/test/local/c/3
csync_check_file_same_dev_inode <TESTBASE>/test/local/c/3 <TESTBASE>/test/local/c/3
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local/c/3' '-'.
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local/c/3' '-'.
Inserted/updated <TESTBASE>/test/local/c/3 rows matched: 1
Checking <TESTBASE>/test/local/c/3/* ..
Calling check_mod on <TESTBASE>/test/local/c/3/ignored~ from <TESTBASE>/test/local/c/3
No match. Don't check at all: <TESTBASE>/test/local/c/3/ignored~
Calling check_mod on <TESTBASE>/test/local/c/3/f1.txt from <TESTBASE>/test/local/c/3
New file: <TESTBASE>/test/local/c/3/f1.txt
csync_check_file_same_dev_inode <TESTBASE>/test/local/c/3/f1.txt <TESTBASE>/test/local/c/3/f1.txt
mark other operation: 'NEW' 'peer:<TESTBASE>/test/local/c/3/f1.txt' '-'.
mark other operation: 'NEW' 'other:<TESTBASE>/test/local/c/3/f1.txt' '-'.
Inserted/updated <TESTBASE>/test/local/c/3/f1.txt rows matched: 1
Calling check_mod on <TESTBASE>/test/local/c/3/f from <TESTBASE>/test/local/c/3
New file: <TESTBASE>/test/local/c/3/f
csync_check_file_same_dev_inode <TESTBASE>/test/local/c/3/f <TESTBASE>/test/local/c/3/f
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local/c/3/f' '-'.
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local/c/3/f' '-'.
Inserted/updated <TESTBASE>/test/local/c/3/f rows matched: 1
Checking <TESTBASE>/test/local/c/3/f/* ..
Calling check_mod on <TESTBASE>/test/local/c/3/f/ignored.o from <TESTBASE>/test/local/c/3/f
No match. Don't check at all: <TESTBASE>/test/local/c/3/f/ignored.o
Calling check_mod on <TESTBASE>/test/local/c/3/f/f1.txt from <TESTBASE>/test/local/c/3/f
New file: <TESTBASE>/test/local/c/3/f/f1.txt
csync_check_file_same_dev_inode <TESTBASE>/test/local/c/3/f/f1.txt <TESTBASE>/test/local/c/3/f/f1.txt
mark other operation: 'NEW' 'peer:<TESTBASE>/test/local/c/3/f/f1.txt' '-'.
mark other operation: 'NEW' 'other:<TESTBASE>/test/local/c/3/f/f1.txt' '-'.
Inserted/updated <TESTBASE>/test/local/c/3/f/f1.txt rows matched: 1
Calling check_mod on <TESTBASE>/test/local/c/3/e from <TESTBASE>/test/local/c/3
New file: <TESTBASE>/test/local/c/3/e
csync_check_file_same_dev_inode <TESTBASE>/test/local/c/3/e <TESTBASE>/test/local/c/3/e
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local/c/3/e' '-'.
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local/c/3/e' '-'.
Inserted/updated <TESTBASE>/test/local/c/3/e rows matched: 1
Checking <TESTBASE>/test/local/c/3/e/* ..
Calling check_mod on <TESTBASE>/test/local/c/3/e/ignored.o from <TESTBASE>/test/local/c/3/e
No match. Don't check at all: <TESTBASE>/test/local/c/3/e/ignored.o
Calling check_mod on <TESTBASE>/test/local/c/3/e/f1.txt from <TESTBASE>/test/local/c/3/e
New file: <TESTBASE>/test/local/c/3/e/f1.txt
csync_check_file_same_dev_inode <TESTBASE>/test/local/c/3/e/f1.txt <TESTBASE>/test/local/c/3/e/f1.txt
mark other operation: 'NEW' 'peer:<TESTBASE>/test/local/c/3/e/f1.txt' '-'.
mark other operation: 'NEW' 'other:<TESTBASE>/test/local/c/3/e/f1.txt' '-'.
Inserted/updated <TESTBASE>/test/local/c/3/e/f1.txt rows matched: 1
Calling check_mod on <TESTBASE>/test/local/c/3/d from <TESTBASE>/test/local/c/3
New file: <TESTBASE>/test/local/c/3/d
csync_check_file_same_dev_inode <TESTBASE>/test/local/c/3/d <TESTBASE>/test/local/c/3/d
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local/c/3/d' '-'.
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local/c/3/d' '-'.
Inserted/updated <TESTBASE>/test/local/c/3/d rows matched: 1
Checking <TESTBASE>/test/local/c/3/d/* ..
Calling check_mod on <TESTBASE>/test/local/c/3/d/ignored.o from <TESTBASE>/test/local/c/3/d
No match. Don't check at all: <TESTBASE>/test/local/c/3/d/ignored.o
Calling check_mod on <TESTBASE>/test/local/c/3/d/f1.txt from <TESTBASE>/test/local/c/3/d
New file: <TESTBASE>/test/local/c/3/d/f1.txt
csync_check_file_same_dev_inode <TESTBASE>/test/local/c/3/d/f1.txt <TESTBASE>/test/local/c/3/d/f1.txt
mark other operation: 'NEW' 'peer:<TESTBASE>/test/local/c/3/d/f1.txt' '-'.
mark other operation: 'NEW' 'other:<TESTBASE>/test/local/c/3/d/f1.txt' '-'.
Inserted/updated <TESTBASE>/test/local/c/3/d/f1.txt rows matched: 1
Calling check_mod on <TESTBASE>/test/local/c/2 from <TESTBASE>/test/local/c
New file: <TESTBASE>/test/local/c/2
csync_check_file_same_dev_inode <TESTBASE>/test/local/c/2 <TESTBASE>/test/local/c/2
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local/c/2' '-'.
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local/c/2' '-'.
Inserted/updated <TESTBASE>/test/local/c/2 rows matched: 1
Checking <TESTBASE>/test/local/c/2/* ..
Calling check_mod on <TESTBASE>/test/local/c/2/ignored~ from <TESTBASE>/test/local/c/2
No match. Don't check at all: <TESTBASE>/test/local/c/2/ignored~
Calling check_mod on <TESTBASE>/test/local/c/2/f1.txt from <TESTBASE>/test/local/c/2
New file: <TESTBASE>/test/local/c/2/f1.txt
csync_check_file_same_dev_inode <TESTBASE>/test/local/c/2/f1.txt <TESTBASE>/test/local/c/2/f1.txt
mark other operation: 'NEW' 'peer:<TESTBASE>/test/local/c/2/f1.txt' '-'.
mark other operation: 'NEW' 'other:<TESTBASE>/test/local/c/2/f1.txt' '-'.
Inserted/updated <TESTBASE>/test/local/c/2/f1.txt rows matched: 1
Calling check_mod on <TESTBASE>/test/local/c/2/f from <TESTBASE>/test/local/c/2
New file: <TESTBASE>/test/local/c/2/f
csync_check_file_same_dev_inode <TESTBASE>/test/local/c/2/f <TESTBASE>/test/local/c/2/f
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local/c/2/f' '-'.
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local/c/2/f' '-'.
Inserted/updated <TESTBASE>/test/local/c/2/f rows matched: 1
Checking <TESTBASE>/test/local/c/2/f/* ..
Calling check_mod on <TESTBASE>/test/local/c/2/f/ignored.o from <TESTBASE>/test/local/c/2/f
No match. Don't check at all: <TESTBASE>/test/local/c/2/f/ignored.o
Calling check_mod on <TESTBASE>/test/local/c/2/f/f1.txt from <TESTBASE>/test/local/c/2/f
New file: <TESTBASE>/test/local/c/2/f/f1.txt
csync_check_file_same_dev_inode <TESTBASE>/test/local/c/2/f/f1.txt <TESTBASE>/test/local/c/2/f/f1.txt
mark other operation: 'NEW' 'peer:<TESTBASE>/test/local/c/2/f/f1.txt' '-'.
mark other operation: 'NEW' 'other:<TESTBASE>/test/local/c/2/f/f1.txt' '-'.
Inserted/updated <TESTBASE>/test/local/c/2/f/f1.txt rows matched: 1
Calling check_mod on <TESTBASE>/test/local/c/2/e from <TESTBASE>/test/local/c/2
New file: <TESTBASE>/test/local/c/2/e
csync_check_file_same_dev_inode <TESTBASE>/test/local/c/2/e <TESTBASE>/test/local/c/2/e
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local/c/2/e' '-'.
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local/c/2/e' '-'.
Inserted/updated <TESTBASE>/test/local/c/2/e rows matched: 1
Checking <TESTBASE>/test/local/c/2/e/* ..
Calling check_mod on <TESTBASE>/test/local/c/2/e/ignored.o from <TESTBASE>/test/local/c/2/e
No match. Don't check at all: <TESTBASE>/test/local/c/2/e/ignored.o
Calling check_mod on <TESTBASE>/test/local/c/2/e/f1.txt from <TESTBASE>/test/local/c/2/e
New file: <TESTBASE>/test/local/c/2/e/f1.txt
csync_check_file_same_dev_inode <TESTBASE>/test/local/c/2/e/f1.txt <TESTBASE>/test/local/c/2/e/f1.txt
mark other operation: 'NEW' 'peer:<TESTBASE>/test/local/c/2/e/f1.txt' '-'.
mark other operation: 'NEW' 'other:<TESTBASE>/test/local/c/2/e/f1.txt' '-'.
Inserted/updated <TESTBASE>/test/local/c/2/e/f1.txt rows matched: 1
Calling check_mod on <TESTBASE>/test/local/c/2/d from <TESTBASE>/test/local/c/2
New file: <TESTBASE>/test/local/c/2/d
csync_check_file_same_dev_inode <TESTBASE>/test/local/c/2/d <TESTBASE>/test/local/c/2/d
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local/c/2/d' '-'.
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local/c/2/d' '-'.
Inserted/updated <TESTBASE>/test/local/c/2/d rows matched: 1
Checking <TESTBASE>/test/local/c/2/d/* ..
Calling check_mod on <TESTBASE>/test/local/c/2/d/ignored.o from <TESTBASE>/test/local/c/2/d
No match. Don't check at all: <TESTBASE>/test/local/c/2/d/ignored.o
Calling check_mod on <TESTBASE>/test/local/c/2/d/f1.txt from <TESTBASE>/test/local/c/2/d
New file: <TESTBASE>/test/local/c/2/d/f1.txt
csync_check_file_same_dev_inode <TESTBASE>/test/local/c/2/d/f1.txt <TESTBASE>/test/local/c/2/d/f1.txt
mark other operation: 'NEW' 'peer:<TESTBASE>/test/local/c/2/d/f1.txt' '-'.
mark other operation: 'NEW' 'other:<TESTBASE>/test/local/c/2/d/f1.txt' '-'.
Inserted/updated <TESTBASE>/test/local/c/2/d/f1.txt rows matched: 1
Calling check_mod on <TESTBASE>/test/local/c/1 from <TESTBASE>/test/local/c
New file: <TESTBASE>/test/local/c/1
csync_check_file_same_dev_inode <TESTBASE>/test/local/c/1 <TESTBASE>/test/local/c/1
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local/c/1' '-'.
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local/c/1' '-'.
Inserted/updated <TESTBASE>/test/local/c/1 rows matched: 1
Checking <TESTBASE>/test/local/c/1/* ..
Calling check_mod on <TESTBASE>/test/local/c/1/ignored~ from <TESTBASE>/test/local/c/1
No match. Don't check at all: <TESTBASE>/test/local/c/1/ignored~
Calling check_mod on <TESTBASE>/test/local/c/1/f1.txt from <TESTBASE>/test/local/c/1
New file: <TESTBASE>/test/local/c/1/f1.txt
csync_check_file_same_dev_inode <TESTBASE>/test/local/c/1/f1.txt <TESTBASE>/test/local/c/1/f1.txt
mark other operation: 'NEW' 'peer:<TESTBASE>/test/local/c/1/f1.txt' '-'.
mark other operation: 'NEW' 'other:<TESTBASE>/test/local/c/1/f1.txt' '-'.
Inserted/updated <TESTBASE>/test/local/c/1/f1.txt rows matched: 1
Calling check_mod on <TESTBASE>/test/local/c/1/f from <TESTBASE>/test/local/c/1
New file: <TESTBASE>/test/local/c/1/f
csync_check_file_same_dev_inode <TESTBASE>/test/local/c/1/f <TESTBASE>/test/local/c/1/f
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local/c/1/f' '-'.
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local/c/1/f' '-'.
Inserted/updated <TESTBASE>/test/local/c/1/f rows matched: 1
Checking <TESTBASE>/test/local/c/1/f/* ..
Calling check_mod on <TESTBASE>/test/local/c/1/f/ignored.o from <TESTBASE>/test/local/c/1/f
No match. Don't check at all: <TESTBASE>/test/local/c/1/f/ignored.o
Calling check_mod on <TESTBASE>/test/local/c/1/f/f1.txt from <TESTBASE>/test/local/c/1/f
New file: <TESTBASE>/test/local/c/1/f/f1.txt
csync_check_file_same_dev_inode <TESTBASE>/test/local/c/1/f/f1.txt <TESTBASE>/test/local/c/1/f/f1.txt
mark other operation: 'NEW' 'peer:<TESTBASE>/test/local/c/1/f/f1.txt' '-'.
mark other operation: 'NEW' 'other:<TESTBASE>/test/local/c/1/f/f1.txt' '-'.
Inserted/updated <TESTBASE>/test/local/c/1/f/f1.txt rows matched: 1
Calling check_mod on <TESTBASE>/test/local/c/1/e from <TESTBASE>/test/local/c/1
New file: <TESTBASE>/test/local/c/1/e
csync_check_file_same_dev_inode <TESTBASE>/test/local/c/1/e <TESTBASE>/test/local/c/1/e
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local/c/1/e' '-'.
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local/c/1/e' '-'.
Inserted/updated <TESTBASE>/test/local/c/1/e rows matched: 1
Checking <TESTBASE>/test/local/c/1/e/* ..
Calling check_mod on <TESTBASE>/test/local/c/1/e/ignored.o from <TESTBASE>/test/local/c/1/e
No match. Don't check at all: <TESTBASE>/test/local/c/1/e/ignored.o
Calling check_mod on <TESTBASE>/test/local/c/1/e/f1.txt from <TESTBASE>/test/local/c/1/e
New file: <TESTBASE>/test/local/c/1/e/f1.txt
csync_check_file_same_dev_inode <TESTBASE>/test/local/c/1/e/f1.txt <TESTBASE>/test/local/c/1/e/f1.txt
mark other operation: 'NEW' 'peer:<TESTBASE>/test/local/c/1/e/f1.txt' '-'.
mark other operation: 'NEW' 'other:<TESTBASE>/test/local/c/1/e/f1.txt' '-'.
Inserted/updated <TESTBASE>/test/local/c/1/e/f1.txt rows matched: 1
Calling check_mod on <TESTBASE>/test/local/c/1/d from <TESTBASE>/test/local/c/1
New file: <TESTBASE>/test/local/c/1/d
csync_check_file_same_dev_inode <TESTBASE>/test/local/c/1/d <TESTBASE>/test/local/c/1/d
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local/c/1/d' '-'.
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local/c/1/d' '-'.
Inserted/updated <TESTBASE>/test/local/c/1/d rows matched: 1
Checking <TESTBASE>/test/local/c/1/d/* ..
Calling check_mod on <TESTBASE>/test/local/c/1/d/ignored.o from <TESTBASE>/test/local/c/1/d
No match. Don't check at all: <TESTBASE>/test/local/c/1/d/ignored.o
Calling check_mod on <TESTBASE>/test/local/c/1/d/f1.txt from <TESTBASE>/test/local/c/1/d
New file: <TESTBASE>/test/local/c/1/d/f1.txt
csync_check_file_same_dev_inode <TESTBASE>/test/local/c/1/d/f1.txt <TESTBASE>/test/local/c/1/d/f1.txt
mark other operation: 'NEW' 'peer:<TESTBASE>/test/local/c/1/d/f1.txt' '-'.
mark other operation: 'NEW' 'other:<TESTBASE>/test/local/c/1/d/f1.txt' '-'.
Inserted/updated <TESTBASE>/test/local/c/1/d/f1.txt rows matched: 1
Calling check_mod on <TESTBASE>/test/local/b from <TESTBASE>/test/local
New file: <TESTBASE>/test/local/b
csync_check_file_same_dev_inode <TESTBASE>/test/local/b <TESTBASE>/test/local/b
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local/b' '-'.
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local/b' '-'.
Inserted/updated <TESTBASE>/test/local/b rows matched: 1
Checking <TESTBASE>/test/local/b/* ..
Calling check_mod on <TESTBASE>/test/local/b/f1.txt from <TESTBASE>/test/local/b
New file: <TESTBASE>/test/local/b/f1.txt
csync_check_file_same_dev_inode <TESTBASE>/test/local/b/f1.txt <TESTBASE>/test/local/b/f1.txt
mark other operation: 'NEW' 'peer:<TESTBASE>/test/local/b/f1.txt' '-'.
mark other operation: 'NEW' 'other:<TESTBASE>/test/local/b/f1.txt' '-'.
Inserted/updated <TESTBASE>/test/local/b/f1.txt rows matched: 1
Calling check_mod on <TESTBASE>/test/local/b/3 from <TESTBASE>/test/local/b
New file: <TESTBASE>/test/local/b/3
csync_check_file_same_dev_inode <TESTBASE>/test/local/b/3 <TESTBASE>/test/local/b/3
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local/b/3' '-'.
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local/b/3' '-'.
Inserted/updated <TESTBASE>/test/local/b/3 rows matched: 1
Checking <TESTBASE>/test/local/b/3/* ..
Calling check_mod on <TESTBASE>/test/local/b/3/ignored~ from <TESTBASE>/test/local/b/3
No match. Don't check at all: <TESTBASE>/test/local/b/3/ignored~
Calling check_mod on <TESTBASE>/test/local/b/3/f1.txt from <TESTBASE>/test/local/b/3
New file: <TESTBASE>/test/local/b/3/f1.txt
csync_check_file_same_dev_inode <TESTBASE>/test/local/b/3/f1.txt <TESTBASE>/test/local/b/3/f1.txt
mark other operation: 'NEW' 'peer:<TESTBASE>/test/local/b/3/f1.txt' '-'.
mark other operation: 'NEW' 'other:<TESTBASE>/test/local/b/3/f1.txt' '-'.
Inserted/updated <TESTBASE>/test/local/b/3/f1.txt rows matched: 1
Calling check_mod on <TESTBASE>/test/local/b/3/f from <TESTBASE>/test/local/b/3
New file: <TESTBASE>/test/local/b/3/f
csync_check_file_same_dev_inode <TESTBASE>/test/local/b/3/f <TESTBASE>/test/local/b/3/f
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local/b/3/f' '-'.
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local/b/3/f' '-'.
Inserted/updated <TESTBASE>/test/local/b/3/f rows matched: 1
Checking <TESTBASE>/test/local/b/3/f/* ..
Calling check_mod on <TESTBASE>/test/local/b/3/f/ignored.o from <TESTBASE>/test/local/b/3/f
No match. Don't check at all: <TESTBASE>/test/local/b/3/f/ignored.o
Calling check_mod on <TESTBASE>/test/local/b/3/f/f1.txt from <TESTBASE>/test/local/b/3/f
New file: <TESTBASE>/test/local/b/3/f/f1.txt
csync_check_file_same_dev_inode <TESTBASE>/test/local/b/3/f/f1.txt <TESTBASE>/test/local/b/3/f/f1.txt
mark other operation: 'NEW' 'peer:<TESTBASE>/test/local/b/3/f/f1.txt' '-'.
mark other operation: 'NEW' 'other:<TESTBASE>/test/local/b/3/f/f1.txt' '-'.
Inserted/updated <TESTBASE>/test/local/b/3/f/f1.txt rows matched: 1
Calling check_mod on <TESTBASE>/test/local/b/3/e from <TESTBASE>/test/local/b/3
New file: <TESTBASE>/test/local/b/3/e
csync_check_file_same_dev_inode <TESTBASE>/test/local/b/3/e <TESTBASE>/test/local/b/3/e
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local/b/3/e' '-'.
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local/b/3/e' '-'.
Inserted/updated <TESTBASE>/test/local/b/3/e rows matched: 1
Checking <TESTBASE>/test/local/b/3/e/* ..
Calling check_mod on <TESTBASE>/test/local/b/3/e/ignored.o from <TESTBASE>/test/local/b/3/e
No match. Don't check at all: <TESTBASE>/test/local/b/3/e/ignored.o
Calling check_mod on <TESTBASE>/test/local/b/3/e/f1.txt from <TESTBASE>/test/local/b/3/e
New file: <TESTBASE>/test/local/b/3/e/f1.txt
csync_check_file_same_dev_inode <TESTBASE>/test/local/b/3/e/f1.txt <TESTBASE>/test/local/b/3/e/f1.txt
mark other operation: 'NEW' 'peer:<TESTBASE>/test/local/b/3/e/f1.txt' '-'.
mark other operation: 'NEW' 'other:<TESTBASE>/test/local/b/3/e/f1.txt' '-'.
Inserted/updated <TESTBASE>/test/local/b/3/e/f1.txt rows matched: 1
Calling check_mod on <TESTBASE>/test/local/b/3/d from <TESTBASE>/test/local/b/3
New file: <TESTBASE>/test/local/b/3/d
csync_check_file_same_dev_inode <TESTBASE>/test/local/b/3/d <TESTBASE>/test/local/b/3/d
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local/b/3/d' '-'.
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local/b/3/d' '-'.
Inserted/updated <TESTBASE>/test/local/b/3/d rows matched: 1
Checking <TESTBASE>/test/local/b/3/d/* ..
Calling check_mod on <TESTBASE>/test/local/b/3/d/ignored.o from <TESTBASE>/test/local/b/3/d
No match. Don't check at all: <TESTBASE>/test/local/b/3/d/ignored.o
Calling check_mod on <TESTBASE>/test/local/b/3/d/f1.txt from <TESTBASE>/test/local/b/3/d
New file: <TESTBASE>/test/local/b/3/d/f1.txt
csync_check_file_same_dev_inode <TESTBASE>/test/local/b/3/d/f1.txt <TESTBASE>/test/local/b/3/d/f1.txt
mark other operation: 'NEW' 'peer:<TESTBASE>/test/local/b/3/d/f1.txt' '-'.
mark other operation: 'NEW' 'other:<TESTBASE>/test/local/b/3/d/f1.txt' '-'.
Inserted/updated <TESTBASE>/test/local/b/3/d/f1.txt rows matched: 1
Calling check_mod on <TESTBASE>/test/local/b/2 from <TESTBASE>/test/local/b
New file: <TESTBASE>/test/local/b/2
csync_check_file_same_dev_inode <TESTBASE>/test/local/b/2 <TESTBASE>/test/local/b/2
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local/b/2' '-'.
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local/b/2' '-'.
Inserted/updated <TESTBASE>/test/local/b/2 rows matched: 1
Checking <TESTBASE>/test/local/b/2/* ..
Calling check_mod on <TESTBASE>/test/local/b/2/ignored~ from <TESTBASE>/test/local/b/2
No match. Don't check at all: <TESTBASE>/test/local/b/2/ignored~
Calling check_mod on <TESTBASE>/test/local/b/2/f1.txt from <TESTBASE>/test/local/b/2
New file: <TESTBASE>/test/local/b/2/f1.txt
csync_check_file_same_dev_inode <TESTBASE>/test/local/b/2/f1.txt <TESTBASE>/test/local/b/2/f1.txt
mark other operation: 'NEW' 'peer:<TESTBASE>/test/local/b/2/f1.txt' '-'.
mark other operation: 'NEW' 'other:<TESTBASE>/test/local/b/2/f1.txt' '-'.
Inserted/updated <TESTBASE>/test/local/b/2/f1.txt rows matched: 1
Calling check_mod on <TESTBASE>/test/local/b/2/f from <TESTBASE>/test/local/b/2
New file: <TESTBASE>/test/local/b/2/f
csync_check_file_same_dev_inode <TESTBASE>/test/local/b/2/f <TESTBASE>/test/local/b/2/f
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local/b/2/f' '-'.
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local/b/2/f' '-'.
Inserted/updated <TESTBASE>/test/local/b/2/f rows matched: 1
Checking <TESTBASE>/test/local/b/2/f/* ..
Calling check_mod on <TESTBASE>/test/local/b/2/f/ignored.o from <TESTBASE>/test/local/b/2/f
No match. Don't check at all: <TESTBASE>/test/local/b/2/f/ignored.o
Calling check_mod on <TESTBASE>/test/local/b/2/f/f1.txt from <TESTBASE>/test/local/b/2/f
New file: <TESTBASE>/test/local/b/2/f/f1.txt
csync_check_file_same_dev_inode <TESTBASE>/test/local/b/2/f/f1.txt <TESTBASE>/test/local/b/2/f/f1.txt
mark other operation: 'NEW' 'peer:<TESTBASE>/test/local/b/2/f/f1.txt' '-'.
mark other operation: 'NEW' 'other:<TESTBASE>/test/local/b/2/f/f1.txt' '-'.
Inserted/updated <TESTBASE>/test/local/b/2/f/f1.txt rows matched: 1
Calling check_mod on <TESTBASE>/test/local/b/2/e from <TESTBASE>/test/local/b/2
New file: <TESTBASE>/test/local/b/2/e
csync_check_file_same_dev_inode <TESTBASE>/test/local/b/2/e <TESTBASE>/test/local/b/2/e
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local/b/2/e' '-'.
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local/b/2/e' '-'.
Inserted/updated <TESTBASE>/test/local/b/2/e rows matched: 1
Checking <TESTBASE>/test/local/b/2/e/* ..
Calling check_mod on <TESTBASE>/test/local/b/2/e/ignored.o from <TESTBASE>/test/local/b/2/e
No match. Don't check at all: <TESTBASE>/test/local/b/2/e/ignored.o
Calling check_mod on <TESTBASE>/test/local/b/2/e/f1.txt from <TESTBASE>/test/local/b/2/e
New file: <TESTBASE>/test/local/b/2/e/f1.txt
csync_check_file_same_dev_inode <TESTBASE>/test/local/b/2/e/f1.txt <TESTBASE>/test/local/b/2/e/f1.txt
mark other operation: 'NEW' 'peer:<TESTBASE>/test/local/b/2/e/f1.txt' '-'.
mark other operation: 'NEW' 'other:<TESTBASE>/test/local/b/2/e/f1.txt' '-'.
Inserted/updated <TESTBASE>/test/local/b/2/e/f1.txt rows matched: 1
Calling check_mod on <TESTBASE>/test/local/b/2/d from <TESTBASE>/test/local/b/2
New file: <TESTBASE>/test/local/b/2/d
csync_check_file_same_dev_inode <TESTBASE>/test/local/b/2/d <TESTBASE>/test/local/b/2/d
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local/b/2/d' '-'.
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local/b/2/d' '-'.
Inserted/updated <TESTBASE>/test/local/b/2/d rows matched: 1
Checking <TESTBASE>/test/local/b/2/d/* ..
Calling check_mod on <TESTBASE>/test/local/b/2/d/ignored.o from <TESTBASE>/test/local/b/2/d
No match. Don't check at all: <TESTBASE>/test/local/b/2/d/ignored.o
Calling check_mod on <TESTBASE>/test/local/b/2/d/f1.txt from <TESTBASE>/test/local/b/2/d
New file: <TESTBASE>/test/local/b/2/d/f1.txt
csync_check_file_same_dev_inode <TESTBASE>/test/local/b/2/d/f1.txt <TESTBASE>/test/local/b/2/d/f1.txt
mark other operation: 'NEW' 'peer:<TESTBASE>/test/local/b/2/d/f1.txt' '-'.
mark other operation: 'NEW' 'other:<TESTBASE>/test/local/b/2/d/f1.txt' '-'.
Inserted/updated <TESTBASE>/test/local/b/2/d/f1.txt rows matched: 1
Calling check_mod on <TESTBASE>/test/local/b/1 from <TESTBASE>/test/local/b
New file: <TESTBASE>/test/local/b/1
csync_check_file_same_dev_inode <TESTBASE>/test/local/b/1 <TESTBASE>/test/local/b/1
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local/b/1' '-'.
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local/b/1' '-'.
Inserted/updated <TESTBASE>/test/local/b/1 rows matched: 1
Checking <TESTBASE>/test/local/b/1/* ..
Calling check_mod on <TESTBASE>/test/local/b/1/ignored~ from <TESTBASE>/test/local/b/1
No match. Don't check at all: <TESTBASE>/test/local/b/1/ignored~
Calling check_mod on <TESTBASE>/test/local/b/1/f1.txt from <TESTBASE>/test/local/b/1
New file: <TESTBASE>/test/local/b/1/f1.txt
csync_check_file_same_dev_inode <TESTBASE>/test/local/b/1/f1.txt <TESTBASE>/test/local/b/1/f1.txt
mark other operation: 'NEW' 'peer:<TESTBASE>/test/local/b/1/f1.txt' '-'.
mark other operation: 'NEW' 'other:<TESTBASE>/test/local/b/1/f1.txt' '-'.
Inserted/updated <TESTBASE>/test/local/b/1/f1.txt rows matched: 1
Calling check_mod on <TESTBASE>/test/local/b/1/f from <TESTBASE>/test/local/b/1
New file: <TESTBASE>/test/local/b/1/f
csync_check_file_same_dev_inode <TESTBASE>/test/local/b/1/f <TESTBASE>/test/local/b/1/f
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local/b/1/f' '-'.
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local/b/1/f' '-'.
Inserted/updated <TESTBASE>/test/local/b/1/f rows matched: 1
Checking <TESTBASE>/test/local/b/1/f/* ..
Calling check_mod on <TESTBASE>/test/local/b/1/f/ignored.o from <TESTBASE>/test/local/b/1/f
No match. Don't check at all: <TESTBASE>/test/local/b/1/f/ignored.o
Calling check_mod on <TESTBASE>/test/local/b/1/f/f1.txt from <TESTBASE>/test/local/b/1/f
New file: <TESTBASE>/test/local/b/1/f/f1.txt
csync_check_file_same_dev_inode <TESTBASE>/test/local/b/1/f/f1.txt <TESTBASE>/test/local/b/1/f/f1.txt
mark other operation: 'NEW' 'peer:<TESTBASE>/test/local/b/1/f/f1.txt' '-'.
mark other operation: 'NEW' 'other:<TESTBASE>/test/local/b/1/f/f1.txt' '-'.
Inserted/updated <TESTBASE>/test/local/b/1/f/f1.txt rows matched: 1
Calling check_mod on <TESTBASE>/test/local/b/1/e from <TESTBASE>/test/local/b/1
New file: <TESTBASE>/test/local/b/1/e
csync_check_file_same_dev_inode <TESTBASE>/test/local/b/1/e <TESTBASE>/test/local/b/1/e
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local/b/1/e' '-'.
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local/b/1/e' '-'.
Inserted/updated <TESTBASE>/test/local/b/1/e rows matched: 1
Checking <TESTBASE>/test/local/b/1/e/* ..
Calling check_mod on <TESTBASE>/test/local/b/1/e/ignored.o from <TESTBASE>/test/local/b/1/e
No match. Don't check at all: <TESTBASE>/test/local/b/1/e/ignored.o
Calling check_mod on <TESTBASE>/test/local/b/1/e/f1.txt from <TESTBASE>/test/local/b/1/e
New file: <TESTBASE>/test/local/b/1/e/f1.txt
csync_check_file_same_dev_inode <TESTBASE>/test/local/b/1/e/f1.txt <TESTBASE>/test/local/b/1/e/f1.txt
mark other operation: 'NEW' 'peer:<TESTBASE>/test/local/b/1/e/f1.txt' '-'.
mark other operation: 'NEW' 'other:<TESTBASE>/test/local/b/1/e/f1.txt' '-'.
Inserted/updated <TESTBASE>/test/local/b/1/e/f1.txt rows matched: 1
Calling check_mod on <TESTBASE>/test/local/b/1/d from <TESTBASE>/test/local/b/1
New file: <TESTBASE>/test/local/b/1/d
csync_check_file_same_dev_inode <TESTBASE>/test/local/b/1/d <TESTBASE>/test/local/b/1/d
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local/b/1/d' '-'.
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local/b/1/d' '-'.
Inserted/updated <TESTBASE>/test/local/b/1/d rows matched: 1
Checking <TESTBASE>/test/local/b/1/d/* ..
Calling check_mod on <TESTBASE>/test/local/b/1/d/ignored.o from <TESTBASE>/test/local/b/1/d
No match. Don't check at all: <TESTBASE>/test/local/b/1/d/ignored.o
Calling check_mod on <TESTBASE>/test/local/b/1/d/f1.txt from <TESTBASE>/test/local/b/1/d
New file: <TESTBASE>/test/local/b/1/d/f1.txt
csync_check_file_same_dev_inode <TESTBASE>/test/local/b/1/d/f1.txt <TESTBASE>/test/local/b/1/d/f1.txt
mark other operation: 'NEW' 'peer:<TESTBASE>/test/local/b/1/d/f1.txt' '-'.
mark other operation: 'NEW' 'other:<TESTBASE>/test/local/b/1/d/f1.txt' '-'.
Inserted/updated <TESTBASE>/test/local/b/1/d/f1.txt rows matched: 1
Calling check_mod on <TESTBASE>/test/local/a from <TESTBASE>/test/local
New file: <TESTBASE>/test/local/a
csync_check_file_same_dev_inode <TESTBASE>/test/local/a <TESTBASE>/test/local/a
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local/a' '-'.
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local/a' '-'.
Inserted/updated <TESTBASE>/test/local/a rows matched: 1
Checking <TESTBASE>/test/local/a/* ..
Calling check_mod on <TESTBASE>/test/local/a/f1.txt from <TESTBASE>/test/local/a
New file: <TESTBASE>/test/local/a/f1.txt
csync_check_file_same_dev_inode <TESTBASE>/test/local/a/f1.txt <TESTBASE>/test/local/a/f1.txt
mark other operation: 'NEW' 'peer:<TESTBASE>/test/local/a/f1.txt' '-'.
mark other operation: 'NEW' 'other:<TESTBASE>/test/local/a/f1.txt' '-'.
Inserted/updated <TESTBASE>/test/local/a/f1.txt rows matched: 1
Calling check_mod on <TESTBASE>/test/local/a/3 from <TESTBASE>/test/local/a
New file: <TESTBASE>/test/local/a/3
csync_check_file_same_dev_inode <TESTBASE>/test/local/a/3 <TESTBASE>/test/local/a/3
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local/a/3' '-'.
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local/a/3' '-'.
Inserted/updated <TESTBASE>/test/local/a/3 rows matched: 1
Checking <TESTBASE>/test/local/a/3/* ..
Calling check_mod on <TESTBASE>/test/local/a/3/ignored~ from <TESTBASE>/test/local/a/3
No match. Don't check at all: <TESTBASE>/test/local/a/3/ignored~
Calling check_mod on <TESTBASE>/test/local/a/3/f1.txt from <TESTBASE>/test/local/a/3
New file: <TESTBASE>/test/local/a/3/f1.txt
csync_check_file_same_dev_inode <TESTBASE>/test/local/a/3/f1.txt <TESTBASE>/test/local/a/3/f1.txt
mark other operation: 'NEW' 'peer:<TESTBASE>/test/local/a/3/f1.txt' '-'.
mark other operation: 'NEW' 'other:<TESTBASE>/test/local/a/3/f1.txt' '-'.
Inserted/updated <TESTBASE>/test/local/a/3/f1.txt rows matched: 1
Calling check_mod on <TESTBASE>/test/local/a/3/f from <TESTBASE>/test/local/a/3
New file: <TESTBASE>/test/local/a/3/f
csync_check_file_same_dev_inode <TESTBASE>/test/local/a/3/f <TESTBASE>/test/local/a/3/f
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local/a/3/f' '-'.
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local/a/3/f' '-'.
Inserted/updated <TESTBASE>/test/local/a/3/f rows matched: 1
Checking <TESTBASE>/test/local/a/3/f/* ..
Calling check_mod on <TESTBASE>/test/local/a/3/f/ignored.o from <TESTBASE>/test/local/a/3/f
No match. Don't check at all: <TESTBASE>/test/local/a/3/f/ignored.o
Calling check_mod on <TESTBASE>/test/local/a/3/f/f1.txt from <TESTBASE>/test/local/a/3/f
New file: <TESTBASE>/test/local/a/3/f/f1.txt
csync_check_file_same_dev_inode <TESTBASE>/test/local/a/3/f/f1.txt <TESTBASE>/test/local/a/3/f/f1.txt
mark other operation: 'NEW' 'peer:<TESTBASE>/test/local/a/3/f/f1.txt' '-'.
mark other operation: 'NEW' 'other:<TESTBASE>/test/local/a/3/f/f1.txt' '-'.
Inserted/updated <TESTBASE>/test/local/a/3/f/f1.txt rows matched: 1
Calling check_mod on <TESTBASE>/test/local/a/3/e from <TESTBASE>/test/local/a/3
New file: <TESTBASE>/test/local/a/3/e
csync_check_file_same_dev_inode <TESTBASE>/test/local/a/3/e <TESTBASE>/test/local/a/3/e
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local/a/3/e' '-'.
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local/a/3/e' '-'.
Inserted/updated <TESTBASE>/test/local/a/3/e rows matched: 1
Checking <TESTBASE>/test/local/a/3/e/* ..
Calling check_mod on <TESTBASE>/test/local/a/3/e/ignored.o from <TESTBASE>/test/local/a/3/e
No match. Don't check at all: <TESTBASE>/test/local/a/3/e/ignored.o
Calling check_mod on <TESTBASE>/test/local/a/3/e/f1.txt from <TESTBASE>/test/local/a/3/e
New file: <TESTBASE>/test/local/a/3/e/f1.txt
csync_check_file_same_dev_inode <TESTBASE>/test/local/a/3/e/f1.txt <TESTBASE>/test/local/a/3/e/f1.txt
mark other operation: 'NEW' 'peer:<TESTBASE>/test/local/a/3/e/f1.txt' '-'.
mark other operation: 'NEW' 'other:<TESTBASE>/test/local/a/3/e/f1.txt' '-'.
Inserted/updated <TESTBASE>/test/local/a/3/e/f1.txt rows matched: 1
Calling check_mod on <TESTBASE>/test/local/a/3/d from <TESTBASE>/test/local/a/3
New file: <TESTBASE>/test/local/a/3/d
csync_check_file_same_dev_inode <TESTBASE>/test/local/a/3/d <TESTBASE>/test/local/a/3/d
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local/a/3/d' '-'.
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local/a/3/d' '-'.
Inserted/updated <TESTBASE>/test/local/a/3/d rows matched: 1
Checking <TESTBASE>/test/local/a/3/d/* ..
Calling check_mod on <TESTBASE>/test/local/a/3/d/ignored.o from <TESTBASE>/test/local/a/3/d
No match. Don't check at all: <TESTBASE>/test/local/a/3/d/ignored.o
Calling check_mod on <TESTBASE>/test/local/a/3/d/f1.txt from <TESTBASE>/test/local/a/3/d
New file: <TESTBASE>/test/local/a/3/d/f1.txt
csync_check_file_same_dev_inode <TESTBASE>/test/local/a/3/d/f1.txt <TESTBASE>/test/local/a/3/d/f1.txt
mark other operation: 'NEW' 'peer:<TESTBASE>/test/local/a/3/d/f1.txt' '-'.
mark other operation: 'NEW' 'other:<TESTBASE>/test/local/a/3/d/f1.txt' '-'.
Inserted/updated <TESTBASE>/test/local/a/3/d/f1.txt rows matched: 1
Calling check_mod on <TESTBASE>/test/local/a/2 from <TESTBASE>/test/local/a
New file: <TESTBASE>/test/local/a/2
csync_check_file_same_dev_inode <TESTBASE>/test/local/a/2 <TESTBASE>/test/local/a/2
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local/a/2' '-'.
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local/a/2' '-'.
Inserted/updated <TESTBASE>/test/local/a/2 rows matched: 1
Checking <TESTBASE>/test/local/a/2/* ..
Calling check_mod on <TESTBASE>/test/local/a/2/ignored~ from <TESTBASE>/test/local/a/2
No match. Don't check at all: <TESTBASE>/test/local/a/2/ignored~
Calling check_mod on <TESTBASE>/test/local/a/2/f1.txt from <TESTBASE>/test/local/a/2
New file: <TESTBASE>/test/local/a/2/f1.txt
csync_check_file_same_dev_inode <TESTBASE>/test/local/a/2/f1.txt <TESTBASE>/test/local/a/2/f1.txt
mark other operation: 'NEW' 'peer:<TESTBASE>/test/local/a/2/f1.txt' '-'.
mark other operation: 'NEW' 'other:<TESTBASE>/test/local/a/2/f1.txt' '-'.
Inserted/updated <TESTBASE>/test/local/a/2/f1.txt rows matched: 1
Calling check_mod on <TESTBASE>/test/local/a/2/f from <TESTBASE>/test/local/a/2
New file: <TESTBASE>/test/local/a/2/f
csync_check_file_same_dev_inode <TESTBASE>/test/local/a/2/f <TESTBASE>/test/local/a/2/f
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local/a/2/f' '-'.
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local/a/2/f' '-'.
Inserted/updated <TESTBASE>/test/local/a/2/f rows matched: 1
Checking <TESTBASE>/test/local/a/2/f/* ..
Calling check_mod on <TESTBASE>/test/local/a/2/f/ignored.o from <TESTBASE>/test/local/a/2/f
No match. Don't check at all: <TESTBASE>/test/local/a/2/f/ignored.o
Calling check_mod on <TESTBASE>/test/local/a/2/f/f1.txt from <TESTBASE>/test/local/a/2/f
New file: <TESTBASE>/test/local/a/2/f/f1.txt
csync_check_file_same_dev_inode <TESTBASE>/test/local/a/2/f/f1.txt <TESTBASE>/test/local/a/2/f/f1.txt
mark other operation: 'NEW' 'peer:<TESTBASE>/test/local/a/2/f/f1.txt' '-'.
mark other operation: 'NEW' 'other:<TESTBASE>/test/local/a/2/f/f1.txt' '-'.
Inserted/updated <TESTBASE>/test/local/a/2/f/f1.txt rows matched: 1
Calling check_mod on <TESTBASE>/test/local/a/2/e from <TESTBASE>/test/local/a/2
New file: <TESTBASE>/test/local/a/2/e
csync_check_file_same_dev_inode <TESTBASE>/test/local/a/2/e <TESTBASE>/test/local/a/2/e
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local/a/2/e' '-'.
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local/a/2/e' '-'.
Inserted/updated <TESTBASE>/test/local/a/2/e rows matched: 1
Checking <TESTBASE>/test/local/a/2/e/* ..
Calling check_mod on <TESTBASE>/test/local/a/2/e/ignored.o from <TESTBASE>/test/local/a/2/e
No match. Don't check at all: <TESTBASE>/test/local/a/2/e/ignored.o
Calling check_mod on <TESTBASE>/test/local/a/2/e/f1.txt from <TESTBASE>/test/local/a/2/e
New file: <TESTBASE>/test/local/a/2/e/f1.txt
csync_check_file_same_dev_inode <TESTBASE>/test/local/a/2/e/f1.txt <TESTBASE>/test/local/a/2/e/f1.txt
mark other operation: 'NEW' 'peer:<TESTBASE>/test/local/a/2/e/f1.txt' '-'.
mark other operation: 'NEW' 'other:<TESTBASE>/test/local/a/2/e/f1.txt' '-'.
Inserted/updated <TESTBASE>/test/local/a/2/e/f1.txt rows matched: 1
Calling check_mod on <TESTBASE>/test/local/a/2/d from <TESTBASE>/test/local/a/2
New file: <TESTBASE>/test/local/a/2/d
csync_check_file_same_dev_inode <TESTBASE>/test/local/a/2/d <TESTBASE>/test/local/a/2/d
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local/a/2/d' '-'.
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local/a/2/d' '-'.
Inserted/updated <TESTBASE>/test/local/a/2/d rows matched: 1
Checking <TESTBASE>/test/local/a/2/d/* ..
Calling check_mod on <TESTBASE>/test/local/a/2/d/ignored.o from <TESTBASE>/test/local/a/2/d
No match. Don't check at all: <TESTBASE>/test/local/a/2/d/ignored.o
Calling check_mod on <TESTBASE>/test/local/a/2/d/f1.txt from <TESTBASE>/test/local/a/2/d
New file: <TESTBASE>/test/local/a/2/d/f1.txt
csync_check_file_same_dev_inode <TESTBASE>/test/local/a/2/d/f1.txt <TESTBASE>/test/local/a/2/d/f1.txt
mark other operation: 'NEW' 'peer:<TESTBASE>/test/local/a/2/d/f1.txt' '-'.
mark other operation: 'NEW' 'other:<TESTBASE>/test/local/a/2/d/f1.txt' '-'.
Inserted/updated <TESTBASE>/test/local/a/2/d/f1.txt rows matched: 1
Calling check_mod on <TESTBASE>/test/local/a/1 from <TESTBASE>/test/local/a
New file: <TESTBASE>/test/local/a/1
csync_check_file_same_dev_inode <TESTBASE>/test/local/a/1 <TESTBASE>/test/local/a/1
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local/a/1' '-'.
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local/a/1' '-'.
Inserted/updated <TESTBASE>/test/local/a/1 rows matched: 1
Checking <TESTBASE>/test/local/a/1/* ..
Calling check_mod on <TESTBASE>/test/local/a/1/ignored~ from <TESTBASE>/test/local/a/1
No match. Don't check at all: <TESTBASE>/test/local/a/1/ignored~
Calling check_mod on <TESTBASE>/test/local/a/1/f1.txt from <TESTBASE>/test/local/a/1
New file: <TESTBASE>/test/local/a/1/f1.txt
csync_check_file_same_dev_inode <TESTBASE>/test/local/a/1/f1.txt <TESTBASE>/test/local/a/1/f1.txt
mark other operation: 'NEW' 'peer:<TESTBASE>/test/local/a/1/f1.txt' '-'.
mark other operation: 'NEW' 'other:<TESTBASE>/test/local/a/1/f1.txt' '-'.
Inserted/updated <TESTBASE>/test/local/a/1/f1.txt rows matched: 1
Calling check_mod on <TESTBASE>/test/local/a/1/f from <TESTBASE>/test/local/a/1
New file: <TESTBASE>/test/local/a/1/f
csync_check_file_same_dev_inode <TESTBASE>/test/local/a/1/f <TESTBASE>/test/local/a/1/f
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local/a/1/f' '-'.
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local/a/1/f' '-'.
Inserted/updated <TESTBASE>/test/local/a/1/f rows matched: 1
Checking <TESTBASE>/test/local/a/1/f/* ..
Calling check_mod on <TESTBASE>/test/local/a/1/f/ignored.o from <TESTBASE>/test/local/a/1/f
No match. Don't check at all: <TESTBASE>/test/local/a/1/f/ignored.o
Calling check_mod on <TESTBASE>/test/local/a/1/f/f1.txt from <TESTBASE>/test/local/a/1/f
New file: <TESTBASE>/test/local/a/1/f/f1.txt
csync_check_file_same_dev_inode <TESTBASE>/test/local/a/1/f/f1.txt <TESTBASE>/test/local/a/1/f/f1.txt
mark other operation: 'NEW' 'peer:<TESTBASE>/test/local/a/1/f/f1.txt' '-'.
mark other operation: 'NEW' 'other:<TESTBASE>/test/local/a/1/f/f1.txt' '-'.
Inserted/updated <TESTBASE>/test/local/a/1/f/f1.txt rows matched: 1
Calling check_mod on <TESTBASE>/test/local/a/1/e from <TESTBASE>/test/local/a/1
New file: <TESTBASE>/test/local/a/1/e
csync_check_file_same_dev_inode <TESTBASE>/test/local/a/1/e <TESTBASE>/test/local/a/1/e
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local/a/1/e' '-'.
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local/a/1/e' '-'.
Inserted/updated <TESTBASE>/test/local/a/1/e rows matched: 1
Checking <TESTBASE>/test/local/a/1/e/* ..
Calling check_mod on <TESTBASE>/test/local/a/1/e/ignored.o from <TESTBASE>/test/local/a/1/e
No match. Don't check at all: <TESTBASE>/test/local/a/1/e/ignored.o
Calling check_mod on <TESTBASE>/test/local/a/1/e/f1.txt from <TESTBASE>/test/local/a/1/e
New file: <TESTBASE>/test/local/a/1/e/f1.txt
csync_check_file_same_dev_inode <TESTBASE>/test/local/a/1/e/f1.txt <TESTBASE>/test/local/a/1/e/f1.txt
mark other operation: 'NEW' 'peer:<TESTBASE>/test/local/a/1/e/f1.txt' '-'.
mark other operation: 'NEW' 'other:<TESTBASE>/test/local/a/1/e/f1.txt' '-'.
Inserted/updated <TESTBASE>/test/local/a/1/e/f1.txt rows matched: 1
Calling check_mod on <TESTBASE>/test/local/a/1/d from <TESTBASE>/test/local/a/1
New file: <TESTBASE>/test/local/a/1/d
csync_check_file_same_dev_inode <TESTBASE>/test/local/a/1/d <TESTBASE>/test/local/a/1/d
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local/a/1/d' '-'.
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local/a/1/d' '-'.
Inserted/updated <TESTBASE>/test/local/a/1/d rows matched: 1
Checking <TESTBASE>/test/local/a/1/d/* ..
Calling check_mod on <TESTBASE>/test/local/a/1/d/ignored.o from <TESTBASE>/test/local/a/1/d
No match. Don't check at all: <TESTBASE>/test/local/a/1/d/ignored.o
Calling check_mod on <TESTBASE>/test/local/a/1/d/f1.txt from <TESTBASE>/test/local/a/1/d
New file: <TESTBASE>/test/local/a/1/d/f1.txt
csync_check_file_same_dev_inode <TESTBASE>/test/local/a/1/d/f1.txt <TESTBASE>/test/local/a/1/d/f1.txt
mark other operation: 'NEW' 'peer:<TESTBASE>/test/local/a/1/d/f1.txt' '-'.
mark other operation: 'NEW' 'other:<TESTBASE>/test/local/a/1/d/f1.txt' '-'.
Inserted/updated <TESTBASE>/test/local/a/1/d/f1.txt rows matched: 1
Checking for deleted files <TESTBASE>/test recursive.
dirty: peer:<TESTBASE>/test/local/c/f1.txt v2:mtime=xxxxxxxxxx:mode=33188:user=<USER>:group=<GROUP>:type=reg:size=20 ''
dirty: peer:<TESTBASE>/test/local/c/3/f1.txt v2:mtime=xxxxxxxxxx:mode=33188:user=<USER>:group=<GROUP>:type=reg:size=22 ''
dirty: peer:<TESTBASE>/test/local/c/3/f/f1.txt v2:mtime=xxxxxxxxxx:mode=33188:user=<USER>:group=<GROUP>:type=reg:size=24 ''
dirty: peer:<TESTBASE>/test/local/c/3/e/f1.txt v2:mtime=xxxxxxxxxx:mode=33188:user=<USER>:group=<GROUP>:type=reg:size=24 ''
dirty: peer:<TESTBASE>/test/local/c/3/d/f1.txt v2:mtime=xxxxxxxxxx:mode=33188:user=<USER>:group=<GROUP>:type=reg:size=24 ''
dirty: peer:<TESTBASE>/test/local/c/2/f1.txt v2:mtime=xxxxxxxxxx:mode=33188:user=<USER>:group=<GROUP>:type=reg:size=22 ''
dirty: peer:<TESTBASE>/test/local/c/2/f/f1.txt v2:mtime=xxxxxxxxxx:mode=33188:user=<USER>:group=<GROUP>:type=reg:size=24 ''
dirty: peer:<TESTBASE>/test/local/c/2/e/f1.txt v2:mtime=xxxxxxxxxx:mode=33188:user=<USER>:group=<GROUP>:type=reg:size=24 ''
dirty: peer:<TESTBASE>/test/local/c/2/d/f1.txt v2:mtime=xxxxxxxxxx:mode=33188:user=<USER>:group=<GROUP>:type=reg:size=24 ''
dirty: peer:<TESTBASE>/test/local/c/1/f1.txt v2:mtime=xxxxxxxxxx:mode=33188:user=<USER>:group=<GROUP>:type=reg:size=22 ''
dirty: peer:<TESTBASE>/test/local/c/1/f/f1.txt v2:mtime=xxxxxxxxxx:mode=33188:user=<USER>:group=<GROUP>:type=reg:size=24 ''
dirty: peer:<TESTBASE>/test/local/c/1/e/f1.txt v2:mtime=xxxxxxxxxx:mode=33188:user=<USER>:group=<GROUP>:type=reg:size=24 ''
dirty: peer:<TESTBASE>/test/local/c/1/d/f1.txt v2:mtime=xxxxxxxxxx:mode=33188:user=<USER>:group=<GROUP>:type=reg:size=24 ''
dirty: peer:<TESTBASE>/test/local/b/f1.txt v2:mtime=xxxxxxxxxx:mode=33188:user=<USER>:group=<GROUP>:type=reg:size=20 ''
dirty: peer:<TESTBASE>/test/local/b/3/f1.txt v2:mtime=xxxxxxxxxx:mode=33188:user=<USER>:group=<GROUP>:type=reg:size=22 ''
dirty: peer:<TESTBASE>/test/local/b/3/f/f1.txt v2:mtime=xxxxxxxxxx:mode=33188:user=<USER>:group=<GROUP>:type=reg:size=24 ''
dirty: peer:<TESTBASE>/test/local/b/3/e/f1.txt v2:mtime=xxxxxxxxxx:mode=33188:user=<USER>:group=<GROUP>:type=reg:size=24 ''
dirty: peer:<TESTBASE>/test/local/b/3/d/f1.txt v2:mtime=xxxxxxxxxx:mode=33188:user=<USER>:group=<GROUP>:type=reg:size=24 ''
dirty: peer:<TESTBASE>/test/local/b/2/f1.txt v2:mtime=xxxxxxxxxx:mode=33188:user=<USER>:group=<GROUP>:type=reg:size=22 ''
dirty: peer:<TESTBASE>/test/local/b/2/f/f1.txt v2:mtime=xxxxxxxxxx:mode=33188:user=<USER>:group=<GROUP>:type=reg:size=24 ''
dirty: peer:<TESTBASE>/test/local/b/2/e/f1.txt v2:mtime=xxxxxxxxxx:mode=33188:user=<USER>:group=<GROUP>:type=reg:size=24 ''
dirty: peer:<TESTBASE>/test/local/b/2/d/f1.txt v2:mtime=xxxxxxxxxx:mode=33188:user=<USER>:group=<GROUP>:type=reg:size=24 ''
dirty: peer:<TESTBASE>/test/local/b/1/f1.txt v2:mtime=xxxxxxxxxx:mode=33188:user=<USER>:group=<GROUP>:type=reg:size=22 ''
dirty: peer:<TESTBASE>/test/local/b/1/f/f1.txt v2:mtime=xxxxxxxxxx:mode=33188:user=<USER>:group=<GROUP>:type=reg:size=24 ''
dirty: peer:<TESTBASE>/test/local/b/1/e/f1.txt v2:mtime=xxxxxxxxxx:mode=33188:user=<USER>:group=<GROUP>:type=reg:size=24 ''
dirty: peer:<TESTBASE>/test/local/b/1/d/f1.txt v2:mtime=xxxxxxxxxx:mode=33188:user=<USER>:group=<GROUP>:type=reg:size=24 ''
dirty: peer:<TESTBASE>/test/local/a/f1.txt v2:mtime=xxxxxxxxxx:mode=33188:user=<USER>:group=<GROUP>:type=reg:size=20 ''
dirty: peer:<TESTBASE>/test/local/a/3/f1.txt v2:mtime=xxxxxxxxxx:mode=33188:user=<USER>:group=<GROUP>:type=reg:size=22 ''
dirty: peer:<TESTBASE>/test/local/a/3/f/f1.txt v2:mtime=xxxxxxxxxx:mode=33188:user=<USER>:group=<GROUP>:type=reg:size=24 ''
dirty: peer:<TESTBASE>/test/local/a/3/e/f1.txt v2:mtime=xxxxxxxxxx:mode=33188:user=<USER>:group=<GROUP>:type=reg:size=24 ''
dirty: peer:<TESTBASE>/test/local/a/3/d/f1.txt v2:mtime=xxxxxxxxxx:mode=33188:user=<USER>:group=<GROUP>:type=reg:size=24 ''
dirty: peer:<TESTBASE>/test/local/a/2/f1.txt v2:mtime=xxxxxxxxxx:mode=33188:user=<USER>:group=<GROUP>:type=reg:size=22 ''
dirty: peer:<TESTBASE>/test/local/a/2/f/f1.txt v2:mtime=xxxxxxxxxx:mode=33188:user=<USER>:group=<GROUP>:type=reg:size=24 ''
dirty: peer:<TESTBASE>/test/local/a/2/e/f1.txt v2:mtime=xxxxxxxxxx:mode=33188:user=<USER>:group=<GROUP>:type=reg:size=24 ''
dirty: peer:<TESTBASE>/test/local/a/2/d/f1.txt v2:mtime=xxxxxxxxxx:mode=33188:user=<USER>:group=<GROUP>:type=reg:size=24 ''
dirty: peer:<TESTBASE>/test/local/a/1/f1.txt v2:mtime=xxxxxxxxxx:mode=33188:user=<USER>:group=<GROUP>:type=reg:size=22 ''
dirty: peer:<TESTBASE>/test/local/a/1/f/f1.txt v2:mtime=xxxxxxxxxx:mode=33188:user=<USER>:group=<GROUP>:type=reg:size=24 ''
dirty: peer:<TESTBASE>/test/local/a/1/e/f1.txt v2:mtime=xxxxxxxxxx:mode=33188:user=<USER>:group=<GROUP>:type=reg:size=24 ''
dirty: peer:<TESTBASE>/test/local/a/1/d/f1.txt v2:mtime=xxxxxxxxxx:mode=33188:user=<USER>:group=<GROUP>:type=reg:size=24 ''
dirty: peer:<TESTBASE>/test/local/c/3/f v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
dirty: peer:<TESTBASE>/test/local/c/3/e v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
dirty: peer:<TESTBASE>/test/local/c/3/d v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
dirty: peer:<TESTBASE>/test/local/c/3 v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
dirty: peer:<TESTBASE>/test/local/c/2/f v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
dirty: peer:<TESTBASE>/test/local/c/2/e v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
dirty: peer:<TESTBASE>/test/local/c/2/d v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
dirty: peer:<TESTBASE>/test/local/c/2 v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
dirty: peer:<TESTBASE>/test/local/c/1/f v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
dirty: peer:<TESTBASE>/test/local/c/1/e v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
dirty: peer:<TESTBASE>/test/local/c/1/d v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
dirty: peer:<TESTBASE>/test/local/c/1 v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
dirty: peer:<TESTBASE>/test/local/c v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
dirty: peer:<TESTBASE>/test/local/b/3/f v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
dirty: peer:<TESTBASE>/test/local/b/3/e v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
dirty: peer:<TESTBASE>/test/local/b/3/d v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
dirty: peer:<TESTBASE>/test/local/b/3 v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
dirty: peer:<TESTBASE>/test/local/b/2/f v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
dirty: peer:<TESTBASE>/test/local/b/2/e v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
dirty: peer:<TESTBASE>/test/local/b/2/d v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
dirty: peer:<TESTBASE>/test/local/b/2 v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
dirty: peer:<TESTBASE>/test/local/b/1/f v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
dirty: peer:<TESTBASE>/test/local/b/1/e v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
dirty: peer:<TESTBASE>/test/local/b/1/d v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
dirty: peer:<TESTBASE>/test/local/b/1 v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
dirty: peer:<TESTBASE>/test/local/b v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
dirty: peer:<TESTBASE>/test/local/a/3/f v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
dirty: peer:<TESTBASE>/test/local/a/3/e v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
dirty: peer:<TESTBASE>/test/local/a/3/d v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
dirty: peer:<TESTBASE>/test/local/a/3 v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
dirty: peer:<TESTBASE>/test/local/a/2/f v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
dirty: peer:<TESTBASE>/test/local/a/2/e v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
dirty: peer:<TESTBASE>/test/local/a/2/d v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
dirty: peer:<TESTBASE>/test/local/a/2 v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
dirty: peer:<TESTBASE>/test/local/a/1/f v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
dirty: peer:<TESTBASE>/test/local/a/1/e v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
dirty: peer:<TESTBASE>/test/local/a/1/d v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
dirty: peer:<TESTBASE>/test/local/a/1 v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
dirty: peer:<TESTBASE>/test/local/a v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
dirty: peer:<TESTBASE>/test/local v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
Got dirty files from host peer
Connecting to host peer (PLAIN) ...
Looking for alternative host:port for peer
Using alternative port to localhost:30861 
Connecting to localhost:30861 from local
Using specific address 127.x.x.x
Connected to localhost:30861 
CONN peer < CONFIG 

CONN peer > 'OK (cmd_finished).'
CONN peer < DEBUG 2

CONN peer > 'OK (cmd_finished).'
CONN peer < HELLO local

CONN peer > 'OK (cmd_finished).'
Updating (MKDIR) 'peer:<TESTBASE>/test/local' ''
CONN peer < SIG %25test%25 user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local RC 32
CONN peer < MKDIR %25test%25 - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local (0)
Directory time <TESTBASE>/test <TESTBASE>/test/local
Updating (MKDIR) 'peer:<TESTBASE>/test/local/a' ''
CONN peer < SIG %25test%25/a user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/a RC 32
CONN peer < MKDIR %25test%25/a - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/a (0)
Directory time <TESTBASE>/test/local <TESTBASE>/test/local/a
Updating (MKDIR) 'peer:<TESTBASE>/test/local/a/1' ''
CONN peer < SIG %25test%25/a/1 user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/a/1 RC 32
CONN peer < MKDIR %25test%25/a/1 - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/a/1 (0)
Directory time <TESTBASE>/test/local/a <TESTBASE>/test/local/a/1
Updating (MKDIR) 'peer:<TESTBASE>/test/local/a/1/d' ''
CONN peer < SIG %25test%25/a/1/d user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/a/1/d RC 32
CONN peer < MKDIR %25test%25/a/1/d - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/a/1/d (0)
Directory time <TESTBASE>/test/local/a/1 <TESTBASE>/test/local/a/1/d
Updating (MKDIR) 'peer:<TESTBASE>/test/local/a/1/e' ''
CONN peer < SIG %25test%25/a/1/e user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/a/1/e RC 32
CONN peer < MKDIR %25test%25/a/1/e - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/a/1/e (0)
Updating (MKDIR) 'peer:<TESTBASE>/test/local/a/1/f' ''
CONN peer < SIG %25test%25/a/1/f user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/a/1/f RC 32
CONN peer < MKDIR %25test%25/a/1/f - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/a/1/f (0)
Updating (MKDIR) 'peer:<TESTBASE>/test/local/a/2' ''
CONN peer < SIG %25test%25/a/2 user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/a/2 RC 32
CONN peer < MKDIR %25test%25/a/2 - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/a/2 (0)
Updating (MKDIR) 'peer:<TESTBASE>/test/local/a/2/d' ''
CONN peer < SIG %25test%25/a/2/d user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/a/2/d RC 32
CONN peer < MKDIR %25test%25/a/2/d - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/a/2/d (0)
Directory time <TESTBASE>/test/local/a/2 <TESTBASE>/test/local/a/2/d
Updating (MKDIR) 'peer:<TESTBASE>/test/local/a/2/e' ''
CONN peer < SIG %25test%25/a/2/e user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/a/2/e RC 32
CONN peer < MKDIR %25test%25/a/2/e - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/a/2/e (0)
Updating (MKDIR) 'peer:<TESTBASE>/test/local/a/2/f' ''
CONN peer < SIG %25test%25/a/2/f user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/a/2/f RC 32
CONN peer < MKDIR %25test%25/a/2/f - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/a/2/f (0)
Updating (MKDIR) 'peer:<TESTBASE>/test/local/a/3' ''
CONN peer < SIG %25test%25/a/3 user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/a/3 RC 32
CONN peer < MKDIR %25test%25/a/3 - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/a/3 (0)
Updating (MKDIR) 'peer:<TESTBASE>/test/local/a/3/d' ''
CONN peer < SIG %25test%25/a/3/d user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/a/3/d RC 32
CONN peer < MKDIR %25test%25/a/3/d - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/a/3/d (0)
Directory time <TESTBASE>/test/local/a/3 <TESTBASE>/test/local/a/3/d
Updating (MKDIR) 'peer:<TESTBASE>/test/local/a/3/e' ''
CONN peer < SIG %25test%25/a/3/e user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/a/3/e RC 32
CONN peer < MKDIR %25test%25/a/3/e - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/a/3/e (0)
Updating (MKDIR) 'peer:<TESTBASE>/test/local/a/3/f' ''
CONN peer < SIG %25test%25/a/3/f user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/a/3/f RC 32
CONN peer < MKDIR %25test%25/a/3/f - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/a/3/f (0)
Updating (MKDIR) 'peer:<TESTBASE>/test/local/b' ''
CONN peer < SIG %25test%25/b user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/b RC 32
CONN peer < MKDIR %25test%25/b - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/b (0)
Updating (MKDIR) 'peer:<TESTBASE>/test/local/b/1' ''
CONN peer < SIG %25test%25/b/1 user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/b/1 RC 32
CONN peer < MKDIR %25test%25/b/1 - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/b/1 (0)
Directory time <TESTBASE>/test/local/b <TESTBASE>/test/local/b/1
Updating (MKDIR) 'peer:<TESTBASE>/test/local/b/1/d' ''
CONN peer < SIG %25test%25/b/1/d user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/b/1/d RC 32
CONN peer < MKDIR %25test%25/b/1/d - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/b/1/d (0)
Directory time <TESTBASE>/test/local/b/1 <TESTBASE>/test/local/b/1/d
Updating (MKDIR) 'peer:<TESTBASE>/test/local/b/1/e' ''
CONN peer < SIG %25test%25/b/1/e user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/b/1/e RC 32
CONN peer < MKDIR %25test%25/b/1/e - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/b/1/e (0)
Updating (MKDIR) 'peer:<TESTBASE>/test/local/b/1/f' ''
CONN peer < SIG %25test%25/b/1/f user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/b/1/f RC 32
CONN peer < MKDIR %25test%25/b/1/f - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/b/1/f (0)
Updating (MKDIR) 'peer:<TESTBASE>/test/local/b/2' ''
CONN peer < SIG %25test%25/b/2 user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/b/2 RC 32
CONN peer < MKDIR %25test%25/b/2 - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/b/2 (0)
Updating (MKDIR) 'peer:<TESTBASE>/test/local/b/2/d' ''
CONN peer < SIG %25test%25/b/2/d user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/b/2/d RC 32
CONN peer < MKDIR %25test%25/b/2/d - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/b/2/d (0)
Directory time <TESTBASE>/test/local/b/2 <TESTBASE>/test/local/b/2/d
Updating (MKDIR) 'peer:<TESTBASE>/test/local/b/2/e' ''
CONN peer < SIG %25test%25/b/2/e user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/b/2/e RC 32
CONN peer < MKDIR %25test%25/b/2/e - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/b/2/e (0)
Updating (MKDIR) 'peer:<TESTBASE>/test/local/b/2/f' ''
CONN peer < SIG %25test%25/b/2/f user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/b/2/f RC 32
CONN peer < MKDIR %25test%25/b/2/f - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/b/2/f (0)
Updating (MKDIR) 'peer:<TESTBASE>/test/local/b/3' ''
CONN peer < SIG %25test%25/b/3 user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/b/3 RC 32
CONN peer < MKDIR %25test%25/b/3 - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/b/3 (0)
Updating (MKDIR) 'peer:<TESTBASE>/test/local/b/3/d' ''
CONN peer < SIG %25test%25/b/3/d user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/b/3/d RC 32
CONN peer < MKDIR %25test%25/b/3/d - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/b/3/d (0)
Directory time <TESTBASE>/test/local/b/3 <TESTBASE>/test/local/b/3/d
Updating (MKDIR) 'peer:<TESTBASE>/test/local/b/3/e' ''
CONN peer < SIG %25test%25/b/3/e user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/b/3/e RC 32
CONN peer < MKDIR %25test%25/b/3/e - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/b/3/e (0)
Updating (MKDIR) 'peer:<TESTBASE>/test/local/b/3/f' ''
CONN peer < SIG %25test%25/b/3/f user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/b/3/f RC 32
CONN peer < MKDIR %25test%25/b/3/f - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/b/3/f (0)
Updating (MKDIR) 'peer:<TESTBASE>/test/local/c' ''
CONN peer < SIG %25test%25/c user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/c RC 32
CONN peer < MKDIR %25test%25/c - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/c (0)
Updating (MKDIR) 'peer:<TESTBASE>/test/local/c/1' ''
CONN peer < SIG %25test%25/c/1 user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/c/1 RC 32
CONN peer < MKDIR %25test%25/c/1 - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/c/1 (0)
Directory time <TESTBASE>/test/local/c <TESTBASE>/test/local/c/1
Updating (MKDIR) 'peer:<TESTBASE>/test/local/c/1/d' ''
CONN peer < SIG %25test%25/c/1/d user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/c/1/d RC 32
CONN peer < MKDIR %25test%25/c/1/d - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/c/1/d (0)
Directory time <TESTBASE>/test/local/c/1 <TESTBASE>/test/local/c/1/d
Updating (MKDIR) 'peer:<TESTBASE>/test/local/c/1/e' ''
CONN peer < SIG %25test%25/c/1/e user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/c/1/e RC 32
CONN peer < MKDIR %25test%25/c/1/e - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/c/1/e (0)
Updating (MKDIR) 'peer:<TESTBASE>/test/local/c/1/f' ''
CONN peer < SIG %25test%25/c/1/f user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/c/1/f RC 32
CONN peer < MKDIR %25test%25/c/1/f - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/c/1/f (0)
Updating (MKDIR) 'peer:<TESTBASE>/test/local/c/2' ''
CONN peer < SIG %25test%25/c/2 user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/c/2 RC 32
CONN peer < MKDIR %25test%25/c/2 - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/c/2 (0)
Updating (MKDIR) 'peer:<TESTBASE>/test/local/c/2/d' ''
CONN peer < SIG %25test%25/c/2/d user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/c/2/d RC 32
CONN peer < MKDIR %25test%25/c/2/d - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/c/2/d (0)
Directory time <TESTBASE>/test/local/c/2 <TESTBASE>/test/local/c/2/d
Updating (MKDIR) 'peer:<TESTBASE>/test/local/c/2/e' ''
CONN peer < SIG %25test%25/c/2/e user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/c/2/e RC 32
CONN peer < MKDIR %25test%25/c/2/e - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/c/2/e (0)
Updating (MKDIR) 'peer:<TESTBASE>/test/local/c/2/f' ''
CONN peer < SIG %25test%25/c/2/f user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/c/2/f RC 32
CONN peer < MKDIR %25test%25/c/2/f - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/c/2/f (0)
Updating (MKDIR) 'peer:<TESTBASE>/test/local/c/3' ''
CONN peer < SIG %25test%25/c/3 user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/c/3 RC 32
CONN peer < MKDIR %25test%25/c/3 - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/c/3 (0)
Updating (MKDIR) 'peer:<TESTBASE>/test/local/c/3/d' ''
CONN peer < SIG %25test%25/c/3/d user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/c/3/d RC 32
CONN peer < MKDIR %25test%25/c/3/d - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/c/3/d (0)
Directory time <TESTBASE>/test/local/c/3 <TESTBASE>/test/local/c/3/d
Updating (MKDIR) 'peer:<TESTBASE>/test/local/c/3/e' ''
CONN peer < SIG %25test%25/c/3/e user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/c/3/e RC 32
CONN peer < MKDIR %25test%25/c/3/e - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/c/3/e (0)
Updating (MKDIR) 'peer:<TESTBASE>/test/local/c/3/f' ''
CONN peer < SIG %25test%25/c/3/f user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/c/3/f RC 32
CONN peer < MKDIR %25test%25/c/3/f - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/c/3/f (0)
Updating (NEW) 'peer:<TESTBASE>/test/local/a/1/d/f1.txt' ''
CONN peer < SIG %25test%25/a/1/d/f1.txt user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/a/1/d/f1.txt RC 32
CONN peer < CREATE %25test%25/a/1/d/f1.txt - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (send data).'
CREATE <TESTBASE>/test/local/a/1/d/f1.txt 24
CONN peer < octet-stream 24

CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/a/1/d/f1.txt (0)
Directory time <TESTBASE>/test/local/a/1/d <TESTBASE>/test/local/a/1/d/f1.txt
Updating (NEW) 'peer:<TESTBASE>/test/local/a/1/e/f1.txt' ''
CONN peer < SIG %25test%25/a/1/e/f1.txt user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/a/1/e/f1.txt RC 32
CONN peer < CREATE %25test%25/a/1/e/f1.txt - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (send data).'
CREATE <TESTBASE>/test/local/a/1/e/f1.txt 24
CONN peer < octet-stream 24

CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/a/1/e/f1.txt (0)
Directory time <TESTBASE>/test/local/a/1/e <TESTBASE>/test/local/a/1/e/f1.txt
Updating (NEW) 'peer:<TESTBASE>/test/local/a/1/f/f1.txt' ''
CONN peer < SIG %25test%25/a/1/f/f1.txt user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/a/1/f/f1.txt RC 32
CONN peer < CREATE %25test%25/a/1/f/f1.txt - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (send data).'
CREATE <TESTBASE>/test/local/a/1/f/f1.txt 24
CONN peer < octet-stream 24

CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/a/1/f/f1.txt (0)
Directory time <TESTBASE>/test/local/a/1/f <TESTBASE>/test/local/a/1/f/f1.txt
Updating (NEW) 'peer:<TESTBASE>/test/local/a/1/f1.txt' ''
CONN peer < SIG %25test%25/a/1/f1.txt user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/a/1/f1.txt RC 32
CONN peer < CREATE %25test%25/a/1/f1.txt - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (send data).'
CREATE <TESTBASE>/test/local/a/1/f1.txt 22
CONN peer < octet-stream 22

CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/a/1/f1.txt (0)
Updating (NEW) 'peer:<TESTBASE>/test/local/a/2/d/f1.txt' ''
CONN peer < SIG %25test%25/a/2/d/f1.txt user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/a/2/d/f1.txt RC 32
CONN peer < CREATE %25test%25/a/2/d/f1.txt - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (send data).'
CREATE <TESTBASE>/test/local/a/2/d/f1.txt 24
CONN peer < octet-stream 24

CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/a/2/d/f1.txt (0)
Directory time <TESTBASE>/test/local/a/2/d <TESTBASE>/test/local/a/2/d/f1.txt
Updating (NEW) 'peer:<TESTBASE>/test/local/a/2/e/f1.txt' ''
CONN peer < SIG %25test%25/a/2/e/f1.txt user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/a/2/e/f1.txt RC 32
CONN peer < CREATE %25test%25/a/2/e/f1.txt - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (send data).'
CREATE <TESTBASE>/test/local/a/2/e/f1.txt 24
CONN peer < octet-stream 24

CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/a/2/e/f1.txt (0)
Directory time <TESTBASE>/test/local/a/2/e <TESTBASE>/test/local/a/2/e/f1.txt
Updating (NEW) 'peer:<TESTBASE>/test/local/a/2/f/f1.txt' ''
CONN peer < SIG %25test%25/a/2/f/f1.txt user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/a/2/f/f1.txt RC 32
CONN peer < CREATE %25test%25/a/2/f/f1.txt - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (send data).'
CREATE <TESTBASE>/test/local/a/2/f/f1.txt 24
CONN peer < octet-stream 24

CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/a/2/f/f1.txt (0)
Directory time <TESTBASE>/test/local/a/2/f <TESTBASE>/test/local/a/2/f/f1.txt
Updating (NEW) 'peer:<TESTBASE>/test/local/a/2/f1.txt' ''
CONN peer < SIG %25test%25/a/2/f1.txt user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/a/2/f1.txt RC 32
CONN peer < CREATE %25test%25/a/2/f1.txt - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (send data).'
CREATE <TESTBASE>/test/local/a/2/f1.txt 22
CONN peer < octet-stream 22

CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/a/2/f1.txt (0)
Updating (NEW) 'peer:<TESTBASE>/test/local/a/3/d/f1.txt' ''
CONN peer < SIG %25test%25/a/3/d/f1.txt user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/a/3/d/f1.txt RC 32
CONN peer < CREATE %25test%25/a/3/d/f1.txt - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (send data).'
CREATE <TESTBASE>/test/local/a/3/d/f1.txt 24
CONN peer < octet-stream 24

CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/a/3/d/f1.txt (0)
Directory time <TESTBASE>/test/local/a/3/d <TESTBASE>/test/local/a/3/d/f1.txt
Updating (NEW) 'peer:<TESTBASE>/test/local/a/3/e/f1.txt' ''
CONN peer < SIG %25test%25/a/3/e/f1.txt user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/a/3/e/f1.txt RC 32
CONN peer < CREATE %25test%25/a/3/e/f1.txt - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (send data).'
CREATE <TESTBASE>/test/local/a/3/e/f1.txt 24
CONN peer < octet-stream 24

CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/a/3/e/f1.txt (0)
Directory time <TESTBASE>/test/local/a/3/e <TESTBASE>/test/local/a/3/e/f1.txt
Updating (NEW) 'peer:<TESTBASE>/test/local/a/3/f/f1.txt' ''
CONN peer < SIG %25test%25/a/3/f/f1.txt user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/a/3/f/f1.txt RC 32
CONN peer < CREATE %25test%25/a/3/f/f1.txt - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (send data).'
CREATE <TESTBASE>/test/local/a/3/f/f1.txt 24
CONN peer < octet-stream 24

CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/a/3/f/f1.txt (0)
Directory time <TESTBASE>/test/local/a/3/f <TESTBASE>/test/local/a/3/f/f1.txt
Updating (NEW) 'peer:<TESTBASE>/test/local/a/3/f1.txt' ''
CONN peer < SIG %25test%25/a/3/f1.txt user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/a/3/f1.txt RC 32
CONN peer < CREATE %25test%25/a/3/f1.txt - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (send data).'
CREATE <TESTBASE>/test/local/a/3/f1.txt 22
CONN peer < octet-stream 22

CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/a/3/f1.txt (0)
Updating (NEW) 'peer:<TESTBASE>/test/local/a/f1.txt' ''
CONN peer < SIG %25test%25/a/f1.txt user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/a/f1.txt RC 32
CONN peer < CREATE %25test%25/a/f1.txt - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (send data).'
CREATE <TESTBASE>/test/local/a/f1.txt 20
CONN peer < octet-stream 20

CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/a/f1.txt (0)
Updating (NEW) 'peer:<TESTBASE>/test/local/b/1/d/f1.txt' ''
CONN peer < SIG %25test%25/b/1/d/f1.txt user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/b/1/d/f1.txt RC 32
CONN peer < CREATE %25test%25/b/1/d/f1.txt - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (send data).'
CREATE <TESTBASE>/test/local/b/1/d/f1.txt 24
CONN peer < octet-stream 24

CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/b/1/d/f1.txt (0)
Directory time <TESTBASE>/test/local/b/1/d <TESTBASE>/test/local/b/1/d/f1.txt
Updating (NEW) 'peer:<TESTBASE>/test/local/b/1/e/f1.txt' ''
CONN peer < SIG %25test%25/b/1/e/f1.txt user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/b/1/e/f1.txt RC 32
CONN peer < CREATE %25test%25/b/1/e/f1.txt - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (send data).'
CREATE <TESTBASE>/test/local/b/1/e/f1.txt 24
CONN peer < octet-stream 24

CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/b/1/e/f1.txt (0)
Directory time <TESTBASE>/test/local/b/1/e <TESTBASE>/test/local/b/1/e/f1.txt
Updating (NEW) 'peer:<TESTBASE>/test/local/b/1/f/f1.txt' ''
CONN peer < SIG %25test%25/b/1/f/f1.txt user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/b/1/f/f1.txt RC 32
CONN peer < CREATE %25test%25/b/1/f/f1.txt - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (send data).'
CREATE <TESTBASE>/test/local/b/1/f/f1.txt 24
CONN peer < octet-stream 24

CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/b/1/f/f1.txt (0)
Directory time <TESTBASE>/test/local/b/1/f <TESTBASE>/test/local/b/1/f/f1.txt
Updating (NEW) 'peer:<TESTBASE>/test/local/b/1/f1.txt' ''
CONN peer < SIG %25test%25/b/1/f1.txt user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/b/1/f1.txt RC 32
CONN peer < CREATE %25test%25/b/1/f1.txt - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (send data).'
CREATE <TESTBASE>/test/local/b/1/f1.txt 22
CONN peer < octet-stream 22

CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/b/1/f1.txt (0)
Updating (NEW) 'peer:<TESTBASE>/test/local/b/2/d/f1.txt' ''
CONN peer < SIG %25test%25/b/2/d/f1.txt user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/b/2/d/f1.txt RC 32
CONN peer < CREATE %25test%25/b/2/d/f1.txt - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (send data).'
CREATE <TESTBASE>/test/local/b/2/d/f1.txt 24
CONN peer < octet-stream 24

CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/b/2/d/f1.txt (0)
Directory time <TESTBASE>/test/local/b/2/d <TESTBASE>/test/local/b/2/d/f1.txt
Updating (NEW) 'peer:<TESTBASE>/test/local/b/2/e/f1.txt' ''
CONN peer < SIG %25test%25/b/2/e/f1.txt user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/b/2/e/f1.txt RC 32
CONN peer < CREATE %25test%25/b/2/e/f1.txt - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (send data).'
CREATE <TESTBASE>/test/local/b/2/e/f1.txt 24
CONN peer < octet-stream 24

CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/b/2/e/f1.txt (0)
Directory time <TESTBASE>/test/local/b/2/e <TESTBASE>/test/local/b/2/e/f1.txt
Updating (NEW) 'peer:<TESTBASE>/test/local/b/2/f/f1.txt' ''
CONN peer < SIG %25test%25/b/2/f/f1.txt user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/b/2/f/f1.txt RC 32
CONN peer < CREATE %25test%25/b/2/f/f1.txt - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (send data).'
CREATE <TESTBASE>/test/local/b/2/f/f1.txt 24
CONN peer < octet-stream 24

CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/b/2/f/f1.txt (0)
Directory time <TESTBASE>/test/local/b/2/f <TESTBASE>/test/local/b/2/f/f1.txt
Updating (NEW) 'peer:<TESTBASE>/test/local/b/2/f1.txt' ''
CONN peer < SIG %25test%25/b/2/f1.txt user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/b/2/f1.txt RC 32
CONN peer < CREATE %25test%25/b/2/f1.txt - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (send data).'
CREATE <TESTBASE>/test/local/b/2/f1.txt 22
CONN peer < octet-stream 22

CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/b/2/f1.txt (0)
Updating (NEW) 'peer:<TESTBASE>/test/local/b/3/d/f1.txt' ''
CONN peer < SIG %25test%25/b/3/d/f1.txt user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/b/3/d/f1.txt RC 32
CONN peer < CREATE %25test%25/b/3/d/f1.txt - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (send data).'
CREATE <TESTBASE>/test/local/b/3/d/f1.txt 24
CONN peer < octet-stream 24

CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/b/3/d/f1.txt (0)
Directory time <TESTBASE>/test/local/b/3/d <TESTBASE>/test/local/b/3/d/f1.txt
Updating (NEW) 'peer:<TESTBASE>/test/local/b/3/e/f1.txt' ''
CONN peer < SIG %25test%25/b/3/e/f1.txt user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/b/3/e/f1.txt RC 32
CONN peer < CREATE %25test%25/b/3/e/f1.txt - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (send data).'
CREATE <TESTBASE>/test/local/b/3/e/f1.txt 24
CONN peer < octet-stream 24

CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/b/3/e/f1.txt (0)
Directory time <TESTBASE>/test/local/b/3/e <TESTBASE>/test/local/b/3/e/f1.txt
Updating (NEW) 'peer:<TESTBASE>/test/local/b/3/f/f1.txt' ''
CONN peer < SIG %25test%25/b/3/f/f1.txt user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/b/3/f/f1.txt RC 32
CONN peer < CREATE %25test%25/b/3/f/f1.txt - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (send data).'
CREATE <TESTBASE>/test/local/b/3/f/f1.txt 24
CONN peer < octet-stream 24

CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/b/3/f/f1.txt (0)
Directory time <TESTBASE>/test/local/b/3/f <TESTBASE>/test/local/b/3/f/f1.txt
Updating (NEW) 'peer:<TESTBASE>/test/local/b/3/f1.txt' ''
CONN peer < SIG %25test%25/b/3/f1.txt user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/b/3/f1.txt RC 32
CONN peer < CREATE %25test%25/b/3/f1.txt - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (send data).'
CREATE <TESTBASE>/test/local/b/3/f1.txt 22
CONN peer < octet-stream 22

CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/b/3/f1.txt (0)
Updating (NEW) 'peer:<TESTBASE>/test/local/b/f1.txt' ''
CONN peer < SIG %25test%25/b/f1.txt user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/b/f1.txt RC 32
CONN peer < CREATE %25test%25/b/f1.txt - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (send data).'
CREATE <TESTBASE>/test/local/b/f1.txt 20
CONN peer < octet-stream 20

CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/b/f1.txt (0)
Updating (NEW) 'peer:<TESTBASE>/test/local/c/1/d/f1.txt' ''
CONN peer < SIG %25test%25/c/1/d/f1.txt user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/c/1/d/f1.txt RC 32
CONN peer < CREATE %25test%25/c/1/d/f1.txt - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (send data).'
CREATE <TESTBASE>/test/local/c/1/d/f1.txt 24
CONN peer < octet-stream 24

CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/c/1/d/f1.txt (0)
Directory time <TESTBASE>/test/local/c/1/d <TESTBASE>/test/local/c/1/d/f1.txt
Updating (NEW) 'peer:<TESTBASE>/test/local/c/1/e/f1.txt' ''
CONN peer < SIG %25test%25/c/1/e/f1.txt user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/c/1/e/f1.txt RC 32
CONN peer < CREATE %25test%25/c/1/e/f1.txt - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (send data).'
CREATE <TESTBASE>/test/local/c/1/e/f1.txt 24
CONN peer < octet-stream 24

CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/c/1/e/f1.txt (0)
Directory time <TESTBASE>/test/local/c/1/e <TESTBASE>/test/local/c/1/e/f1.txt
Updating (NEW) 'peer:<TESTBASE>/test/local/c/1/f/f1.txt' ''
CONN peer < SIG %25test%25/c/1/f/f1.txt user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/c/1/f/f1.txt RC 32
CONN peer < CREATE %25test%25/c/1/f/f1.txt - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (send data).'
CREATE <TESTBASE>/test/local/c/1/f/f1.txt 24
CONN peer < octet-stream 24

CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/c/1/f/f1.txt (0)
Directory time <TESTBASE>/test/local/c/1/f <TESTBASE>/test/local/c/1/f/f1.txt
Updating (NEW) 'peer:<TESTBASE>/test/local/c/1/f1.txt' ''
CONN peer < SIG %25test%25/c/1/f1.txt user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/c/1/f1.txt RC 32
CONN peer < CREATE %25test%25/c/1/f1.txt - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (send data).'
CREATE <TESTBASE>/test/local/c/1/f1.txt 22
CONN peer < octet-stream 22

CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/c/1/f1.txt (0)
Updating (NEW) 'peer:<TESTBASE>/test/local/c/2/d/f1.txt' ''
CONN peer < SIG %25test%25/c/2/d/f1.txt user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/c/2/d/f1.txt RC 32
CONN peer < CREATE %25test%25/c/2/d/f1.txt - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (send data).'
CREATE <TESTBASE>/test/local/c/2/d/f1.txt 24
CONN peer < octet-stream 24

CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/c/2/d/f1.txt (0)
Directory time <TESTBASE>/test/local/c/2/d <TESTBASE>/test/local/c/2/d/f1.txt
Updating (NEW) 'peer:<TESTBASE>/test/local/c/2/e/f1.txt' ''
CONN peer < SIG %25test%25/c/2/e/f1.txt user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/c/2/e/f1.txt RC 32
CONN peer < CREATE %25test%25/c/2/e/f1.txt - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (send data).'
CREATE <TESTBASE>/test/local/c/2/e/f1.txt 24
CONN peer < octet-stream 24

CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/c/2/e/f1.txt (0)
Directory time <TESTBASE>/test/local/c/2/e <TESTBASE>/test/local/c/2/e/f1.txt
Updating (NEW) 'peer:<TESTBASE>/test/local/c/2/f/f1.txt' ''
CONN peer < SIG %25test%25/c/2/f/f1.txt user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/c/2/f/f1.txt RC 32
CONN peer < CREATE %25test%25/c/2/f/f1.txt - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (send data).'
CREATE <TESTBASE>/test/local/c/2/f/f1.txt 24
CONN peer < octet-stream 24

CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/c/2/f/f1.txt (0)
Directory time <TESTBASE>/test/local/c/2/f <TESTBASE>/test/local/c/2/f/f1.txt
Updating (NEW) 'peer:<TESTBASE>/test/local/c/2/f1.txt' ''
CONN peer < SIG %25test%25/c/2/f1.txt user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/c/2/f1.txt RC 32
CONN peer < CREATE %25test%25/c/2/f1.txt - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (send data).'
CREATE <TESTBASE>/test/local/c/2/f1.txt 22
CONN peer < octet-stream 22

CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/c/2/f1.txt (0)
Updating (NEW) 'peer:<TESTBASE>/test/local/c/3/d/f1.txt' ''
CONN peer < SIG %25test%25/c/3/d/f1.txt user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/c/3/d/f1.txt RC 32
CONN peer < CREATE %25test%25/c/3/d/f1.txt - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (send data).'
CREATE <TESTBASE>/test/local/c/3/d/f1.txt 24
CONN peer < octet-stream 24

CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/c/3/d/f1.txt (0)
Directory time <TESTBASE>/test/local/c/3/d <TESTBASE>/test/local/c/3/d/f1.txt
Updating (NEW) 'peer:<TESTBASE>/test/local/c/3/e/f1.txt' ''
CONN peer < SIG %25test%25/c/3/e/f1.txt user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/c/3/e/f1.txt RC 32
CONN peer < CREATE %25test%25/c/3/e/f1.txt - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (send data).'
CREATE <TESTBASE>/test/local/c/3/e/f1.txt 24
CONN peer < octet-stream 24

CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/c/3/e/f1.txt (0)
Directory time <TESTBASE>/test/local/c/3/e <TESTBASE>/test/local/c/3/e/f1.txt
Updating (NEW) 'peer:<TESTBASE>/test/local/c/3/f/f1.txt' ''
CONN peer < SIG %25test%25/c/3/f/f1.txt user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/c/3/f/f1.txt RC 32
CONN peer < CREATE %25test%25/c/3/f/f1.txt - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (send data).'
CREATE <TESTBASE>/test/local/c/3/f/f1.txt 24
CONN peer < octet-stream 24

CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/c/3/f/f1.txt (0)
Directory time <TESTBASE>/test/local/c/3/f <TESTBASE>/test/local/c/3/f/f1.txt
Updating (NEW) 'peer:<TESTBASE>/test/local/c/3/f1.txt' ''
CONN peer < SIG %25test%25/c/3/f1.txt user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/c/3/f1.txt RC 32
CONN peer < CREATE %25test%25/c/3/f1.txt - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (send data).'
CREATE <TESTBASE>/test/local/c/3/f1.txt 22
CONN peer < octet-stream 22

CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/c/3/f1.txt (0)
Updating (NEW) 'peer:<TESTBASE>/test/local/c/f1.txt' ''
CONN peer < SIG %25test%25/c/f1.txt user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/c/f1.txt RC 32
CONN peer < CREATE %25test%25/c/f1.txt - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (send data).'
CREATE <TESTBASE>/test/local/c/f1.txt 20
CONN peer < octet-stream 20

CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/c/f1.txt (0)
SETTIME peer:<TESTBASE>/test/local/c/3/f
update_directory: Setting directory time <TESTBASE>/test/local/c/3/f 0.
CONN peer < SETTIME %25test%25/c/3/f 
CONN peer > 'OK (cmd_finished).'
SETTIME peer:<TESTBASE>/test/local/c/3/e
update_directory: Setting directory time <TESTBASE>/test/local/c/3/e 0.
CONN peer < SETTIME %25test%25/c/3/e 
CONN peer > 'OK (cmd_finished).'
SETTIME peer:<TESTBASE>/test/local/c/3/d
update_directory: Setting directory time <TESTBASE>/test/local/c/3/d 0.
CONN peer < SETTIME %25test%25/c/3/d 
CONN peer > 'OK (cmd_finished).'
SETTIME peer:<TESTBASE>/test/local/c/2/f
update_directory: Setting directory time <TESTBASE>/test/local/c/2/f 0.
CONN peer < SETTIME %25test%25/c/2/f 
CONN peer > 'OK (cmd_finished).'
SETTIME peer:<TESTBASE>/test/local/c/2/e
update_directory: Setting directory time <TESTBASE>/test/local/c/2/e 0.
CONN peer < SETTIME %25test%25/c/2/e 
CONN peer > 'OK (cmd_finished).'
SETTIME peer:<TESTBASE>/test/local/c/2/d
update_directory: Setting directory time <TESTBASE>/test/local/c/2/d 0.
CONN peer < SETTIME %25test%25/c/2/d 
CONN peer > 'OK (cmd_finished).'
SETTIME peer:<TESTBASE>/test/local/c/1/f
update_directory: Setting directory time <TESTBASE>/test/local/c/1/f 0.
CONN peer < SETTIME %25test%25/c/1/f 
CONN peer > 'OK (cmd_finished).'
SETTIME peer:<TESTBASE>/test/local/c/1/e
update_directory: Setting directory time <TESTBASE>/test/local/c/1/e 0.
CONN peer < SETTIME %25test%25/c/1/e 
CONN peer > 'OK (cmd_finished).'
SETTIME peer:<TESTBASE>/test/local/c/1/d
update_directory: Setting directory time <TESTBASE>/test/local/c/1/d 0.
CONN peer < SETTIME %25test%25/c/1/d 
CONN peer > 'OK (cmd_finished).'
SETTIME peer:<TESTBASE>/test/local/b/3/f
update_directory: Setting directory time <TESTBASE>/test/local/b/3/f 0.
CONN peer < SETTIME %25test%25/b/3/f 
CONN peer > 'OK (cmd_finished).'
SETTIME peer:<TESTBASE>/test/local/b/3/e
update_directory: Setting directory time <TESTBASE>/test/local/b/3/e 0.
CONN peer < SETTIME %25test%25/b/3/e 
CONN peer > 'OK (cmd_finished).'
SETTIME peer:<TESTBASE>/test/local/b/3/d
update_directory: Setting directory time <TESTBASE>/test/local/b/3/d 0.
CONN peer < SETTIME %25test%25/b/3/d 
CONN peer > 'OK (cmd_finished).'
SETTIME peer:<TESTBASE>/test/local/b/2/f
update_directory: Setting directory time <TESTBASE>/test/local/b/2/f 0.
CONN peer < SETTIME %25test%25/b/2/f 
CONN peer > 'OK (cmd_finished).'
SETTIME peer:<TESTBASE>/test/local/b/2/e
update_directory: Setting directory time <TESTBASE>/test/local/b/2/e 0.
CONN peer < SETTIME %25test%25/b/2/e 
CONN peer > 'OK (cmd_finished).'
SETTIME peer:<TESTBASE>/test/local/b/2/d
update_directory: Setting directory time <TESTBASE>/test/local/b/2/d 0.
CONN peer < SETTIME %25test%25/b/2/d 
CONN peer > 'OK (cmd_finished).'
SETTIME peer:<TESTBASE>/test/local/b/1/f
update_directory: Setting directory time <TESTBASE>/test/local/b/1/f 0.
CONN peer < SETTIME %25test%25/b/1/f 
CONN peer > 'OK (cmd_finished).'
SETTIME peer:<TESTBASE>/test/local/b/1/e
update_directory: Setting directory time <TESTBASE>/test/local/b/1/e 0.
CONN peer < SETTIME %25test%25/b/1/e 
CONN peer > 'OK (cmd_finished).'
SETTIME peer:<TESTBASE>/test/local/b/1/d
update_directory: Setting directory time <TESTBASE>/test/local/b/1/d 0.
CONN peer < SETTIME %25test%25/b/1/d 
CONN peer > 'OK (cmd_finished).'
SETTIME peer:<TESTBASE>/test/local/a/3/f
update_directory: Setting directory time <TESTBASE>/test/local/a/3/f 0.
CONN peer < SETTIME %25test%25/a/3/f 
CONN peer > 'OK (cmd_finished).'
SETTIME peer:<TESTBASE>/test/local/a/3/e
update_directory: Setting directory time <TESTBASE>/test/local/a/3/e 0.
CONN peer < SETTIME %25test%25/a/3/e 
CONN peer > 'OK (cmd_finished).'
SETTIME peer:<TESTBASE>/test/local/a/3/d
update_directory: Setting directory time <TESTBASE>/test/local/a/3/d 0.
CONN peer < SETTIME %25test%25/a/3/d 
CONN peer > 'OK (cmd_finished).'
SETTIME peer:<TESTBASE>/test/local/a/2/f
update_directory: Setting directory time <TESTBASE>/test/local/a/2/f 0.
CONN peer < SETTIME %25test%25/a/2/f 
CONN peer > 'OK (cmd_finished).'
SETTIME peer:<TESTBASE>/test/local/a/2/e
update_directory: Setting directory time <TESTBASE>/test/local/a/2/e 0.
CONN peer < SETTIME %25test%25/a/2/e 
CONN peer > 'OK (cmd_finished).'
SETTIME peer:<TESTBASE>/test/local/a/2/d
update_directory: Setting directory time <TESTBASE>/test/local/a/2/d 0.
CONN peer < SETTIME %25test%25/a/2/d 
CONN peer > 'OK (cmd_finished).'
SETTIME peer:<TESTBASE>/test/local/a/1/f
update_directory: Setting directory time <TESTBASE>/test/local/a/1/f 0.
CONN peer < SETTIME %25test%25/a/1/f 
CONN peer > 'OK (cmd_finished).'
SETTIME peer:<TESTBASE>/test/local/a/1/e
update_directory: Setting directory time <TESTBASE>/test/local/a/1/e 0.
CONN peer < SETTIME %25test%25/a/1/e 
CONN peer > 'OK (cmd_finished).'
SETTIME peer:<TESTBASE>/test/local/a/1/d
update_directory: Setting directory time <TESTBASE>/test/local/a/1/d 0.
CONN peer < SETTIME %25test%25/a/1/d 
CONN peer > 'OK (cmd_finished).'
SETTIME peer:<TESTBASE>/test/local/c/3
update_directory: Setting directory time <TESTBASE>/test/local/c/3 0.
CONN peer < SETTIME %25test%25/c/3 
CONN peer > 'OK (cmd_finished).'
SETTIME peer:<TESTBASE>/test/local/c/2
update_directory: Setting directory time <TESTBASE>/test/local/c/2 0.
CONN peer < SETTIME %25test%25/c/2 
CONN peer > 'OK (cmd_finished).'
SETTIME peer:<TESTBASE>/test/local/c/1
update_directory: Setting directory time <TESTBASE>/test/local/c/1 0.
CONN peer < SETTIME %25test%25/c/1 
CONN peer > 'OK (cmd_finished).'
SETTIME peer:<TESTBASE>/test/local/c
update_directory: Setting directory time <TESTBASE>/test/local/c 0.
CONN peer < SETTIME %25test%25/c 
CONN peer > 'OK (cmd_finished).'
SETTIME peer:<TESTBASE>/test/local/b/3
update_directory: Setting directory time <TESTBASE>/test/local/b/3 0.
CONN peer < SETTIME %25test%25/b/3 
CONN peer > 'OK (cmd_finished).'
SETTIME peer:<TESTBASE>/test/local/b/2
update_directory: Setting directory time <TESTBASE>/test/local/b/2 0.
CONN peer < SETTIME %25test%25/b/2 
CONN peer > 'OK (cmd_finished).'
SETTIME peer:<TESTBASE>/test/local/b/1
update_directory: Setting directory time <TESTBASE>/test/local/b/1 0.
CONN peer < SETTIME %25test%25/b/1 
CONN peer > 'OK (cmd_finished).'
SETTIME peer:<TESTBASE>/test/local/b
update_directory: Setting directory time <TESTBASE>/test/local/b 0.
CONN peer < SETTIME %25test%25/b 
CONN peer > 'OK (cmd_finished).'
SETTIME peer:<TESTBASE>/test/local/a/3
update_directory: Setting directory time <TESTBASE>/test/local/a/3 0.
CONN peer < SETTIME %25test%25/a/3 
CONN peer > 'OK (cmd_finished).'
SETTIME peer:<TESTBASE>/test/local/a/2
update_directory: Setting directory time <TESTBASE>/test/local/a/2 0.
CONN peer < SETTIME %25test%25/a/2 
CONN peer > 'OK (cmd_finished).'
SETTIME peer:<TESTBASE>/test/local/a/1
update_directory: Setting directory time <TESTBASE>/test/local/a/1 0.
CONN peer < SETTIME %25test%25/a/1 
CONN peer > 'OK (cmd_finished).'
SETTIME peer:<TESTBASE>/test/local/a
update_directory: Setting directory time <TESTBASE>/test/local/a 0.
CONN peer < SETTIME %25test%25/a 
CONN peer > 'OK (cmd_finished).'
SETTIME peer:<TESTBASE>/test/local
update_directory: Setting directory time <TESTBASE>/test/local 0.
CONN peer < SETTIME %25test%25 
CONN peer > 'OK (cmd_finished).'
SETTIME peer:<TESTBASE>/test
CONN peer < BYE

CONN peer > 'OK (cu_later).'
