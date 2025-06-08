cmd x "New directory tree" local peer test
Connecting to redis localhost:6379
Running recursive check for <TESTBASE>/test ...
Checking recursive for modified files <TESTBASE>/test 
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local' '-'.
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local' '-'.
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local/c' '-'.
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local/c' '-'.
mark other operation: 'NEW' 'peer:<TESTBASE>/test/local/c/f1.txt' '-'.
mark other operation: 'NEW' 'other:<TESTBASE>/test/local/c/f1.txt' '-'.
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local/c/3' '-'.
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local/c/3' '-'.
mark other operation: 'NEW' 'peer:<TESTBASE>/test/local/c/3/f1.txt' '-'.
mark other operation: 'NEW' 'other:<TESTBASE>/test/local/c/3/f1.txt' '-'.
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local/c/3/f' '-'.
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local/c/3/f' '-'.
mark other operation: 'NEW' 'peer:<TESTBASE>/test/local/c/3/f/f1.txt' '-'.
mark other operation: 'NEW' 'other:<TESTBASE>/test/local/c/3/f/f1.txt' '-'.
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local/c/3/e' '-'.
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local/c/3/e' '-'.
mark other operation: 'NEW' 'peer:<TESTBASE>/test/local/c/3/e/f1.txt' '-'.
mark other operation: 'NEW' 'other:<TESTBASE>/test/local/c/3/e/f1.txt' '-'.
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local/c/3/d' '-'.
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local/c/3/d' '-'.
mark other operation: 'NEW' 'peer:<TESTBASE>/test/local/c/3/d/f1.txt' '-'.
mark other operation: 'NEW' 'other:<TESTBASE>/test/local/c/3/d/f1.txt' '-'.
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local/c/2' '-'.
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local/c/2' '-'.
mark other operation: 'NEW' 'peer:<TESTBASE>/test/local/c/2/f1.txt' '-'.
mark other operation: 'NEW' 'other:<TESTBASE>/test/local/c/2/f1.txt' '-'.
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local/c/2/f' '-'.
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local/c/2/f' '-'.
mark other operation: 'NEW' 'peer:<TESTBASE>/test/local/c/2/f/f1.txt' '-'.
mark other operation: 'NEW' 'other:<TESTBASE>/test/local/c/2/f/f1.txt' '-'.
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local/c/2/e' '-'.
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local/c/2/e' '-'.
mark other operation: 'NEW' 'peer:<TESTBASE>/test/local/c/2/e/f1.txt' '-'.
mark other operation: 'NEW' 'other:<TESTBASE>/test/local/c/2/e/f1.txt' '-'.
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local/c/2/d' '-'.
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local/c/2/d' '-'.
mark other operation: 'NEW' 'peer:<TESTBASE>/test/local/c/2/d/f1.txt' '-'.
mark other operation: 'NEW' 'other:<TESTBASE>/test/local/c/2/d/f1.txt' '-'.
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local/c/1' '-'.
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local/c/1' '-'.
mark other operation: 'NEW' 'peer:<TESTBASE>/test/local/c/1/f1.txt' '-'.
mark other operation: 'NEW' 'other:<TESTBASE>/test/local/c/1/f1.txt' '-'.
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local/c/1/f' '-'.
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local/c/1/f' '-'.
mark other operation: 'NEW' 'peer:<TESTBASE>/test/local/c/1/f/f1.txt' '-'.
mark other operation: 'NEW' 'other:<TESTBASE>/test/local/c/1/f/f1.txt' '-'.
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local/c/1/e' '-'.
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local/c/1/e' '-'.
mark other operation: 'NEW' 'peer:<TESTBASE>/test/local/c/1/e/f1.txt' '-'.
mark other operation: 'NEW' 'other:<TESTBASE>/test/local/c/1/e/f1.txt' '-'.
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local/c/1/d' '-'.
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local/c/1/d' '-'.
mark other operation: 'NEW' 'peer:<TESTBASE>/test/local/c/1/d/f1.txt' '-'.
mark other operation: 'NEW' 'other:<TESTBASE>/test/local/c/1/d/f1.txt' '-'.
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local/b' '-'.
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local/b' '-'.
mark other operation: 'NEW' 'peer:<TESTBASE>/test/local/b/f1.txt' '-'.
mark other operation: 'NEW' 'other:<TESTBASE>/test/local/b/f1.txt' '-'.
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local/b/3' '-'.
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local/b/3' '-'.
mark other operation: 'NEW' 'peer:<TESTBASE>/test/local/b/3/f1.txt' '-'.
mark other operation: 'NEW' 'other:<TESTBASE>/test/local/b/3/f1.txt' '-'.
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local/b/3/f' '-'.
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local/b/3/f' '-'.
mark other operation: 'NEW' 'peer:<TESTBASE>/test/local/b/3/f/f1.txt' '-'.
mark other operation: 'NEW' 'other:<TESTBASE>/test/local/b/3/f/f1.txt' '-'.
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local/b/3/e' '-'.
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local/b/3/e' '-'.
mark other operation: 'NEW' 'peer:<TESTBASE>/test/local/b/3/e/f1.txt' '-'.
mark other operation: 'NEW' 'other:<TESTBASE>/test/local/b/3/e/f1.txt' '-'.
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local/b/3/d' '-'.
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local/b/3/d' '-'.
mark other operation: 'NEW' 'peer:<TESTBASE>/test/local/b/3/d/f1.txt' '-'.
mark other operation: 'NEW' 'other:<TESTBASE>/test/local/b/3/d/f1.txt' '-'.
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local/b/2' '-'.
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local/b/2' '-'.
mark other operation: 'NEW' 'peer:<TESTBASE>/test/local/b/2/f1.txt' '-'.
mark other operation: 'NEW' 'other:<TESTBASE>/test/local/b/2/f1.txt' '-'.
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local/b/2/f' '-'.
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local/b/2/f' '-'.
mark other operation: 'NEW' 'peer:<TESTBASE>/test/local/b/2/f/f1.txt' '-'.
mark other operation: 'NEW' 'other:<TESTBASE>/test/local/b/2/f/f1.txt' '-'.
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local/b/2/e' '-'.
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local/b/2/e' '-'.
mark other operation: 'NEW' 'peer:<TESTBASE>/test/local/b/2/e/f1.txt' '-'.
mark other operation: 'NEW' 'other:<TESTBASE>/test/local/b/2/e/f1.txt' '-'.
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local/b/2/d' '-'.
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local/b/2/d' '-'.
mark other operation: 'NEW' 'peer:<TESTBASE>/test/local/b/2/d/f1.txt' '-'.
mark other operation: 'NEW' 'other:<TESTBASE>/test/local/b/2/d/f1.txt' '-'.
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local/b/1' '-'.
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local/b/1' '-'.
mark other operation: 'NEW' 'peer:<TESTBASE>/test/local/b/1/f1.txt' '-'.
mark other operation: 'NEW' 'other:<TESTBASE>/test/local/b/1/f1.txt' '-'.
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local/b/1/f' '-'.
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local/b/1/f' '-'.
mark other operation: 'NEW' 'peer:<TESTBASE>/test/local/b/1/f/f1.txt' '-'.
mark other operation: 'NEW' 'other:<TESTBASE>/test/local/b/1/f/f1.txt' '-'.
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local/b/1/e' '-'.
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local/b/1/e' '-'.
mark other operation: 'NEW' 'peer:<TESTBASE>/test/local/b/1/e/f1.txt' '-'.
mark other operation: 'NEW' 'other:<TESTBASE>/test/local/b/1/e/f1.txt' '-'.
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local/b/1/d' '-'.
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local/b/1/d' '-'.
mark other operation: 'NEW' 'peer:<TESTBASE>/test/local/b/1/d/f1.txt' '-'.
mark other operation: 'NEW' 'other:<TESTBASE>/test/local/b/1/d/f1.txt' '-'.
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local/a' '-'.
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local/a' '-'.
mark other operation: 'NEW' 'peer:<TESTBASE>/test/local/a/f1.txt' '-'.
mark other operation: 'NEW' 'other:<TESTBASE>/test/local/a/f1.txt' '-'.
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local/a/3' '-'.
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local/a/3' '-'.
mark other operation: 'NEW' 'peer:<TESTBASE>/test/local/a/3/f1.txt' '-'.
mark other operation: 'NEW' 'other:<TESTBASE>/test/local/a/3/f1.txt' '-'.
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local/a/3/f' '-'.
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local/a/3/f' '-'.
mark other operation: 'NEW' 'peer:<TESTBASE>/test/local/a/3/f/f1.txt' '-'.
mark other operation: 'NEW' 'other:<TESTBASE>/test/local/a/3/f/f1.txt' '-'.
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local/a/3/e' '-'.
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local/a/3/e' '-'.
mark other operation: 'NEW' 'peer:<TESTBASE>/test/local/a/3/e/f1.txt' '-'.
mark other operation: 'NEW' 'other:<TESTBASE>/test/local/a/3/e/f1.txt' '-'.
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local/a/3/d' '-'.
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local/a/3/d' '-'.
mark other operation: 'NEW' 'peer:<TESTBASE>/test/local/a/3/d/f1.txt' '-'.
mark other operation: 'NEW' 'other:<TESTBASE>/test/local/a/3/d/f1.txt' '-'.
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local/a/2' '-'.
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local/a/2' '-'.
mark other operation: 'NEW' 'peer:<TESTBASE>/test/local/a/2/f1.txt' '-'.
mark other operation: 'NEW' 'other:<TESTBASE>/test/local/a/2/f1.txt' '-'.
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local/a/2/f' '-'.
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local/a/2/f' '-'.
mark other operation: 'NEW' 'peer:<TESTBASE>/test/local/a/2/f/f1.txt' '-'.
mark other operation: 'NEW' 'other:<TESTBASE>/test/local/a/2/f/f1.txt' '-'.
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local/a/2/e' '-'.
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local/a/2/e' '-'.
mark other operation: 'NEW' 'peer:<TESTBASE>/test/local/a/2/e/f1.txt' '-'.
mark other operation: 'NEW' 'other:<TESTBASE>/test/local/a/2/e/f1.txt' '-'.
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local/a/2/d' '-'.
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local/a/2/d' '-'.
mark other operation: 'NEW' 'peer:<TESTBASE>/test/local/a/2/d/f1.txt' '-'.
mark other operation: 'NEW' 'other:<TESTBASE>/test/local/a/2/d/f1.txt' '-'.
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local/a/1' '-'.
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local/a/1' '-'.
mark other operation: 'NEW' 'peer:<TESTBASE>/test/local/a/1/f1.txt' '-'.
mark other operation: 'NEW' 'other:<TESTBASE>/test/local/a/1/f1.txt' '-'.
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local/a/1/f' '-'.
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local/a/1/f' '-'.
mark other operation: 'NEW' 'peer:<TESTBASE>/test/local/a/1/f/f1.txt' '-'.
mark other operation: 'NEW' 'other:<TESTBASE>/test/local/a/1/f/f1.txt' '-'.
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local/a/1/e' '-'.
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local/a/1/e' '-'.
mark other operation: 'NEW' 'peer:<TESTBASE>/test/local/a/1/e/f1.txt' '-'.
mark other operation: 'NEW' 'other:<TESTBASE>/test/local/a/1/e/f1.txt' '-'.
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local/a/1/d' '-'.
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local/a/1/d' '-'.
mark other operation: 'NEW' 'peer:<TESTBASE>/test/local/a/1/d/f1.txt' '-'.
mark other operation: 'NEW' 'other:<TESTBASE>/test/local/a/1/d/f1.txt' '-'.
Checking for deleted files <TESTBASE>/test recursive.
Got dirty files from host peer
Connecting to host peer (PLAIN) ...
Locking <TESTBASE>/test/local
Updating (MKDIR) 'peer:<TESTBASE>/test/local' ''
Unlocking file: <TESTBASE>/test/local
Locking <TESTBASE>/test/local/a
Updating (MKDIR) 'peer:<TESTBASE>/test/local/a' ''
Unlocking file: <TESTBASE>/test/local/a
Locking <TESTBASE>/test/local/a/1
Updating (MKDIR) 'peer:<TESTBASE>/test/local/a/1' ''
Unlocking file: <TESTBASE>/test/local/a/1
Locking <TESTBASE>/test/local/a/1/d
Updating (MKDIR) 'peer:<TESTBASE>/test/local/a/1/d' ''
Unlocking file: <TESTBASE>/test/local/a/1/d
Locking <TESTBASE>/test/local/a/1/e
Updating (MKDIR) 'peer:<TESTBASE>/test/local/a/1/e' ''
Unlocking file: <TESTBASE>/test/local/a/1/e
Locking <TESTBASE>/test/local/a/1/f
Updating (MKDIR) 'peer:<TESTBASE>/test/local/a/1/f' ''
Unlocking file: <TESTBASE>/test/local/a/1/f
Locking <TESTBASE>/test/local/a/2
Updating (MKDIR) 'peer:<TESTBASE>/test/local/a/2' ''
Unlocking file: <TESTBASE>/test/local/a/2
Locking <TESTBASE>/test/local/a/2/d
Updating (MKDIR) 'peer:<TESTBASE>/test/local/a/2/d' ''
Unlocking file: <TESTBASE>/test/local/a/2/d
Locking <TESTBASE>/test/local/a/2/e
Updating (MKDIR) 'peer:<TESTBASE>/test/local/a/2/e' ''
Unlocking file: <TESTBASE>/test/local/a/2/e
Locking <TESTBASE>/test/local/a/2/f
Updating (MKDIR) 'peer:<TESTBASE>/test/local/a/2/f' ''
Unlocking file: <TESTBASE>/test/local/a/2/f
Locking <TESTBASE>/test/local/a/3
Updating (MKDIR) 'peer:<TESTBASE>/test/local/a/3' ''
Unlocking file: <TESTBASE>/test/local/a/3
Locking <TESTBASE>/test/local/a/3/d
Updating (MKDIR) 'peer:<TESTBASE>/test/local/a/3/d' ''
Unlocking file: <TESTBASE>/test/local/a/3/d
Locking <TESTBASE>/test/local/a/3/e
Updating (MKDIR) 'peer:<TESTBASE>/test/local/a/3/e' ''
Unlocking file: <TESTBASE>/test/local/a/3/e
Locking <TESTBASE>/test/local/a/3/f
Updating (MKDIR) 'peer:<TESTBASE>/test/local/a/3/f' ''
Unlocking file: <TESTBASE>/test/local/a/3/f
Locking <TESTBASE>/test/local/b
Updating (MKDIR) 'peer:<TESTBASE>/test/local/b' ''
Unlocking file: <TESTBASE>/test/local/b
Locking <TESTBASE>/test/local/b/1
Updating (MKDIR) 'peer:<TESTBASE>/test/local/b/1' ''
Unlocking file: <TESTBASE>/test/local/b/1
Locking <TESTBASE>/test/local/b/1/d
Updating (MKDIR) 'peer:<TESTBASE>/test/local/b/1/d' ''
Unlocking file: <TESTBASE>/test/local/b/1/d
Locking <TESTBASE>/test/local/b/1/e
Updating (MKDIR) 'peer:<TESTBASE>/test/local/b/1/e' ''
Unlocking file: <TESTBASE>/test/local/b/1/e
Locking <TESTBASE>/test/local/b/1/f
Updating (MKDIR) 'peer:<TESTBASE>/test/local/b/1/f' ''
Unlocking file: <TESTBASE>/test/local/b/1/f
Locking <TESTBASE>/test/local/b/2
Updating (MKDIR) 'peer:<TESTBASE>/test/local/b/2' ''
Unlocking file: <TESTBASE>/test/local/b/2
Locking <TESTBASE>/test/local/b/2/d
Updating (MKDIR) 'peer:<TESTBASE>/test/local/b/2/d' ''
Unlocking file: <TESTBASE>/test/local/b/2/d
Locking <TESTBASE>/test/local/b/2/e
Updating (MKDIR) 'peer:<TESTBASE>/test/local/b/2/e' ''
Unlocking file: <TESTBASE>/test/local/b/2/e
Locking <TESTBASE>/test/local/b/2/f
Updating (MKDIR) 'peer:<TESTBASE>/test/local/b/2/f' ''
Unlocking file: <TESTBASE>/test/local/b/2/f
Locking <TESTBASE>/test/local/b/3
Updating (MKDIR) 'peer:<TESTBASE>/test/local/b/3' ''
Unlocking file: <TESTBASE>/test/local/b/3
Locking <TESTBASE>/test/local/b/3/d
Updating (MKDIR) 'peer:<TESTBASE>/test/local/b/3/d' ''
Unlocking file: <TESTBASE>/test/local/b/3/d
Locking <TESTBASE>/test/local/b/3/e
Updating (MKDIR) 'peer:<TESTBASE>/test/local/b/3/e' ''
Unlocking file: <TESTBASE>/test/local/b/3/e
Locking <TESTBASE>/test/local/b/3/f
Updating (MKDIR) 'peer:<TESTBASE>/test/local/b/3/f' ''
Unlocking file: <TESTBASE>/test/local/b/3/f
Locking <TESTBASE>/test/local/c
Updating (MKDIR) 'peer:<TESTBASE>/test/local/c' ''
Unlocking file: <TESTBASE>/test/local/c
Locking <TESTBASE>/test/local/c/1
Updating (MKDIR) 'peer:<TESTBASE>/test/local/c/1' ''
Unlocking file: <TESTBASE>/test/local/c/1
Locking <TESTBASE>/test/local/c/1/d
Updating (MKDIR) 'peer:<TESTBASE>/test/local/c/1/d' ''
Unlocking file: <TESTBASE>/test/local/c/1/d
Locking <TESTBASE>/test/local/c/1/e
Updating (MKDIR) 'peer:<TESTBASE>/test/local/c/1/e' ''
Unlocking file: <TESTBASE>/test/local/c/1/e
Locking <TESTBASE>/test/local/c/1/f
Updating (MKDIR) 'peer:<TESTBASE>/test/local/c/1/f' ''
Unlocking file: <TESTBASE>/test/local/c/1/f
Locking <TESTBASE>/test/local/c/2
Updating (MKDIR) 'peer:<TESTBASE>/test/local/c/2' ''
Unlocking file: <TESTBASE>/test/local/c/2
Locking <TESTBASE>/test/local/c/2/d
Updating (MKDIR) 'peer:<TESTBASE>/test/local/c/2/d' ''
Unlocking file: <TESTBASE>/test/local/c/2/d
Locking <TESTBASE>/test/local/c/2/e
Updating (MKDIR) 'peer:<TESTBASE>/test/local/c/2/e' ''
Unlocking file: <TESTBASE>/test/local/c/2/e
Locking <TESTBASE>/test/local/c/2/f
Updating (MKDIR) 'peer:<TESTBASE>/test/local/c/2/f' ''
Unlocking file: <TESTBASE>/test/local/c/2/f
Locking <TESTBASE>/test/local/c/3
Updating (MKDIR) 'peer:<TESTBASE>/test/local/c/3' ''
Unlocking file: <TESTBASE>/test/local/c/3
Locking <TESTBASE>/test/local/c/3/d
Updating (MKDIR) 'peer:<TESTBASE>/test/local/c/3/d' ''
Unlocking file: <TESTBASE>/test/local/c/3/d
Locking <TESTBASE>/test/local/c/3/e
Updating (MKDIR) 'peer:<TESTBASE>/test/local/c/3/e' ''
Unlocking file: <TESTBASE>/test/local/c/3/e
Locking <TESTBASE>/test/local/c/3/f
Updating (MKDIR) 'peer:<TESTBASE>/test/local/c/3/f' ''
Unlocking file: <TESTBASE>/test/local/c/3/f
Locking <TESTBASE>/test/local/a/1/d/f1.txt
Updating (NEW) 'peer:<TESTBASE>/test/local/a/1/d/f1.txt' ''
Unlocking file: <TESTBASE>/test/local/a/1/d/f1.txt
Locking <TESTBASE>/test/local/a/1/e/f1.txt
Updating (NEW) 'peer:<TESTBASE>/test/local/a/1/e/f1.txt' ''
Unlocking file: <TESTBASE>/test/local/a/1/e/f1.txt
Locking <TESTBASE>/test/local/a/1/f/f1.txt
Updating (NEW) 'peer:<TESTBASE>/test/local/a/1/f/f1.txt' ''
Unlocking file: <TESTBASE>/test/local/a/1/f/f1.txt
Locking <TESTBASE>/test/local/a/1/f1.txt
Updating (NEW) 'peer:<TESTBASE>/test/local/a/1/f1.txt' ''
Unlocking file: <TESTBASE>/test/local/a/1/f1.txt
Locking <TESTBASE>/test/local/a/2/d/f1.txt
Updating (NEW) 'peer:<TESTBASE>/test/local/a/2/d/f1.txt' ''
Unlocking file: <TESTBASE>/test/local/a/2/d/f1.txt
Locking <TESTBASE>/test/local/a/2/e/f1.txt
Updating (NEW) 'peer:<TESTBASE>/test/local/a/2/e/f1.txt' ''
Unlocking file: <TESTBASE>/test/local/a/2/e/f1.txt
Locking <TESTBASE>/test/local/a/2/f/f1.txt
Updating (NEW) 'peer:<TESTBASE>/test/local/a/2/f/f1.txt' ''
Unlocking file: <TESTBASE>/test/local/a/2/f/f1.txt
Locking <TESTBASE>/test/local/a/2/f1.txt
Updating (NEW) 'peer:<TESTBASE>/test/local/a/2/f1.txt' ''
Unlocking file: <TESTBASE>/test/local/a/2/f1.txt
Locking <TESTBASE>/test/local/a/3/d/f1.txt
Updating (NEW) 'peer:<TESTBASE>/test/local/a/3/d/f1.txt' ''
Unlocking file: <TESTBASE>/test/local/a/3/d/f1.txt
Locking <TESTBASE>/test/local/a/3/e/f1.txt
Updating (NEW) 'peer:<TESTBASE>/test/local/a/3/e/f1.txt' ''
Unlocking file: <TESTBASE>/test/local/a/3/e/f1.txt
Locking <TESTBASE>/test/local/a/3/f/f1.txt
Updating (NEW) 'peer:<TESTBASE>/test/local/a/3/f/f1.txt' ''
Unlocking file: <TESTBASE>/test/local/a/3/f/f1.txt
Locking <TESTBASE>/test/local/a/3/f1.txt
Updating (NEW) 'peer:<TESTBASE>/test/local/a/3/f1.txt' ''
Unlocking file: <TESTBASE>/test/local/a/3/f1.txt
Locking <TESTBASE>/test/local/a/f1.txt
Updating (NEW) 'peer:<TESTBASE>/test/local/a/f1.txt' ''
Unlocking file: <TESTBASE>/test/local/a/f1.txt
Locking <TESTBASE>/test/local/b/1/d/f1.txt
Updating (NEW) 'peer:<TESTBASE>/test/local/b/1/d/f1.txt' ''
Unlocking file: <TESTBASE>/test/local/b/1/d/f1.txt
Locking <TESTBASE>/test/local/b/1/e/f1.txt
Updating (NEW) 'peer:<TESTBASE>/test/local/b/1/e/f1.txt' ''
Unlocking file: <TESTBASE>/test/local/b/1/e/f1.txt
Locking <TESTBASE>/test/local/b/1/f/f1.txt
Updating (NEW) 'peer:<TESTBASE>/test/local/b/1/f/f1.txt' ''
Unlocking file: <TESTBASE>/test/local/b/1/f/f1.txt
Locking <TESTBASE>/test/local/b/1/f1.txt
Updating (NEW) 'peer:<TESTBASE>/test/local/b/1/f1.txt' ''
Unlocking file: <TESTBASE>/test/local/b/1/f1.txt
Locking <TESTBASE>/test/local/b/2/d/f1.txt
Updating (NEW) 'peer:<TESTBASE>/test/local/b/2/d/f1.txt' ''
Unlocking file: <TESTBASE>/test/local/b/2/d/f1.txt
Locking <TESTBASE>/test/local/b/2/e/f1.txt
Updating (NEW) 'peer:<TESTBASE>/test/local/b/2/e/f1.txt' ''
Unlocking file: <TESTBASE>/test/local/b/2/e/f1.txt
Locking <TESTBASE>/test/local/b/2/f/f1.txt
Updating (NEW) 'peer:<TESTBASE>/test/local/b/2/f/f1.txt' ''
Unlocking file: <TESTBASE>/test/local/b/2/f/f1.txt
Locking <TESTBASE>/test/local/b/2/f1.txt
Updating (NEW) 'peer:<TESTBASE>/test/local/b/2/f1.txt' ''
Unlocking file: <TESTBASE>/test/local/b/2/f1.txt
Locking <TESTBASE>/test/local/b/3/d/f1.txt
Updating (NEW) 'peer:<TESTBASE>/test/local/b/3/d/f1.txt' ''
Unlocking file: <TESTBASE>/test/local/b/3/d/f1.txt
Locking <TESTBASE>/test/local/b/3/e/f1.txt
Updating (NEW) 'peer:<TESTBASE>/test/local/b/3/e/f1.txt' ''
Unlocking file: <TESTBASE>/test/local/b/3/e/f1.txt
Locking <TESTBASE>/test/local/b/3/f/f1.txt
Updating (NEW) 'peer:<TESTBASE>/test/local/b/3/f/f1.txt' ''
Unlocking file: <TESTBASE>/test/local/b/3/f/f1.txt
Locking <TESTBASE>/test/local/b/3/f1.txt
Updating (NEW) 'peer:<TESTBASE>/test/local/b/3/f1.txt' ''
Unlocking file: <TESTBASE>/test/local/b/3/f1.txt
Locking <TESTBASE>/test/local/b/f1.txt
Updating (NEW) 'peer:<TESTBASE>/test/local/b/f1.txt' ''
Unlocking file: <TESTBASE>/test/local/b/f1.txt
Locking <TESTBASE>/test/local/c/1/d/f1.txt
Updating (NEW) 'peer:<TESTBASE>/test/local/c/1/d/f1.txt' ''
Unlocking file: <TESTBASE>/test/local/c/1/d/f1.txt
Locking <TESTBASE>/test/local/c/1/e/f1.txt
Updating (NEW) 'peer:<TESTBASE>/test/local/c/1/e/f1.txt' ''
Unlocking file: <TESTBASE>/test/local/c/1/e/f1.txt
Locking <TESTBASE>/test/local/c/1/f/f1.txt
Updating (NEW) 'peer:<TESTBASE>/test/local/c/1/f/f1.txt' ''
Unlocking file: <TESTBASE>/test/local/c/1/f/f1.txt
Locking <TESTBASE>/test/local/c/1/f1.txt
Updating (NEW) 'peer:<TESTBASE>/test/local/c/1/f1.txt' ''
Unlocking file: <TESTBASE>/test/local/c/1/f1.txt
Locking <TESTBASE>/test/local/c/2/d/f1.txt
Updating (NEW) 'peer:<TESTBASE>/test/local/c/2/d/f1.txt' ''
Unlocking file: <TESTBASE>/test/local/c/2/d/f1.txt
Locking <TESTBASE>/test/local/c/2/e/f1.txt
Updating (NEW) 'peer:<TESTBASE>/test/local/c/2/e/f1.txt' ''
Unlocking file: <TESTBASE>/test/local/c/2/e/f1.txt
Locking <TESTBASE>/test/local/c/2/f/f1.txt
Updating (NEW) 'peer:<TESTBASE>/test/local/c/2/f/f1.txt' ''
Unlocking file: <TESTBASE>/test/local/c/2/f/f1.txt
Locking <TESTBASE>/test/local/c/2/f1.txt
Updating (NEW) 'peer:<TESTBASE>/test/local/c/2/f1.txt' ''
Unlocking file: <TESTBASE>/test/local/c/2/f1.txt
Locking <TESTBASE>/test/local/c/3/d/f1.txt
Updating (NEW) 'peer:<TESTBASE>/test/local/c/3/d/f1.txt' ''
Unlocking file: <TESTBASE>/test/local/c/3/d/f1.txt
Locking <TESTBASE>/test/local/c/3/e/f1.txt
Updating (NEW) 'peer:<TESTBASE>/test/local/c/3/e/f1.txt' ''
Unlocking file: <TESTBASE>/test/local/c/3/e/f1.txt
Locking <TESTBASE>/test/local/c/3/f/f1.txt
Updating (NEW) 'peer:<TESTBASE>/test/local/c/3/f/f1.txt' ''
Unlocking file: <TESTBASE>/test/local/c/3/f/f1.txt
Locking <TESTBASE>/test/local/c/3/f1.txt
Updating (NEW) 'peer:<TESTBASE>/test/local/c/3/f1.txt' ''
Unlocking file: <TESTBASE>/test/local/c/3/f1.txt
Locking <TESTBASE>/test/local/c/f1.txt
Updating (NEW) 'peer:<TESTBASE>/test/local/c/f1.txt' ''
Unlocking file: <TESTBASE>/test/local/c/f1.txt
