cmd c "Removed dir recursive (check)" local peer test
Connecting to redis localhost:6379
Running recursive check for <TESTBASE>/test ...
Checking recursive for modified files <TESTBASE>/test 
Checking for deleted files <TESTBASE>/test recursive.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/c/f1.txt' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/c/f1.txt' '-'.
mark operation NEW -> RM other:<TESTBASE>/test/local/c/f1.txt deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/c/3/f1.txt' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/c/3/f1.txt' '-'.
mark operation NEW -> RM other:<TESTBASE>/test/local/c/3/f1.txt deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/c/3/f/f1.txt' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/c/3/f/f1.txt' '-'.
mark operation NEW -> RM other:<TESTBASE>/test/local/c/3/f/f1.txt deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/c/3/f' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/c/3/f' '-'.
mark operation MKDIR -> RM other:<TESTBASE>/test/local/c/3/f deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/c/3/e/f1.txt' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/c/3/e/f1.txt' '-'.
mark operation NEW -> RM other:<TESTBASE>/test/local/c/3/e/f1.txt deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/c/3/e' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/c/3/e' '-'.
mark operation MKDIR -> RM other:<TESTBASE>/test/local/c/3/e deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/c/3/d/f1.txt' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/c/3/d/f1.txt' '-'.
mark operation NEW -> RM other:<TESTBASE>/test/local/c/3/d/f1.txt deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/c/3/d' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/c/3/d' '-'.
mark operation MKDIR -> RM other:<TESTBASE>/test/local/c/3/d deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/c/3' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/c/3' '-'.
mark operation MKDIR -> RM other:<TESTBASE>/test/local/c/3 deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/c/2/f1.txt' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/c/2/f1.txt' '-'.
mark operation NEW -> RM other:<TESTBASE>/test/local/c/2/f1.txt deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/c/2/f/f1.txt' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/c/2/f/f1.txt' '-'.
mark operation NEW -> RM other:<TESTBASE>/test/local/c/2/f/f1.txt deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/c/2/f' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/c/2/f' '-'.
mark operation MKDIR -> RM other:<TESTBASE>/test/local/c/2/f deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/c/2/e/f1.txt' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/c/2/e/f1.txt' '-'.
mark operation NEW -> RM other:<TESTBASE>/test/local/c/2/e/f1.txt deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/c/2/e' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/c/2/e' '-'.
mark operation MKDIR -> RM other:<TESTBASE>/test/local/c/2/e deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/c/2/d/f1.txt' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/c/2/d/f1.txt' '-'.
mark operation NEW -> RM other:<TESTBASE>/test/local/c/2/d/f1.txt deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/c/2/d' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/c/2/d' '-'.
mark operation MKDIR -> RM other:<TESTBASE>/test/local/c/2/d deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/c/2' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/c/2' '-'.
mark operation MKDIR -> RM other:<TESTBASE>/test/local/c/2 deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/c/1/f1.txt' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/c/1/f1.txt' '-'.
mark operation NEW -> RM other:<TESTBASE>/test/local/c/1/f1.txt deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/c/1/f/f1.txt' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/c/1/f/f1.txt' '-'.
mark operation NEW -> RM other:<TESTBASE>/test/local/c/1/f/f1.txt deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/c/1/f' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/c/1/f' '-'.
mark operation MKDIR -> RM other:<TESTBASE>/test/local/c/1/f deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/c/1/e/f1.txt' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/c/1/e/f1.txt' '-'.
mark operation NEW -> RM other:<TESTBASE>/test/local/c/1/e/f1.txt deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/c/1/e' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/c/1/e' '-'.
mark operation MKDIR -> RM other:<TESTBASE>/test/local/c/1/e deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/c/1/d/f1.txt' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/c/1/d/f1.txt' '-'.
mark operation NEW -> RM other:<TESTBASE>/test/local/c/1/d/f1.txt deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/c/1/d' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/c/1/d' '-'.
mark operation MKDIR -> RM other:<TESTBASE>/test/local/c/1/d deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/c/1' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/c/1' '-'.
mark operation MKDIR -> RM other:<TESTBASE>/test/local/c/1 deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/c' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/c' '-'.
mark operation MKDIR -> RM other:<TESTBASE>/test/local/c deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/b/f1.txt' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/b/f1.txt' '-'.
mark operation NEW -> RM other:<TESTBASE>/test/local/b/f1.txt deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/b/3/f1.txt' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/b/3/f1.txt' '-'.
mark operation NEW -> RM other:<TESTBASE>/test/local/b/3/f1.txt deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/b/3/f/f1.txt' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/b/3/f/f1.txt' '-'.
mark operation NEW -> RM other:<TESTBASE>/test/local/b/3/f/f1.txt deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/b/3/f' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/b/3/f' '-'.
mark operation MKDIR -> RM other:<TESTBASE>/test/local/b/3/f deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/b/3/e/f1.txt' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/b/3/e/f1.txt' '-'.
mark operation NEW -> RM other:<TESTBASE>/test/local/b/3/e/f1.txt deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/b/3/e' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/b/3/e' '-'.
mark operation MKDIR -> RM other:<TESTBASE>/test/local/b/3/e deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/b/3/d/f1.txt' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/b/3/d/f1.txt' '-'.
mark operation NEW -> RM other:<TESTBASE>/test/local/b/3/d/f1.txt deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/b/3/d' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/b/3/d' '-'.
mark operation MKDIR -> RM other:<TESTBASE>/test/local/b/3/d deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/b/3' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/b/3' '-'.
mark operation MKDIR -> RM other:<TESTBASE>/test/local/b/3 deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/b/2/f1.txt' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/b/2/f1.txt' '-'.
mark operation NEW -> RM other:<TESTBASE>/test/local/b/2/f1.txt deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/b/2/f/f1.txt' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/b/2/f/f1.txt' '-'.
mark operation NEW -> RM other:<TESTBASE>/test/local/b/2/f/f1.txt deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/b/2/f' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/b/2/f' '-'.
mark operation MKDIR -> RM other:<TESTBASE>/test/local/b/2/f deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/b/2/e/f1.txt' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/b/2/e/f1.txt' '-'.
mark operation NEW -> RM other:<TESTBASE>/test/local/b/2/e/f1.txt deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/b/2/e' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/b/2/e' '-'.
mark operation MKDIR -> RM other:<TESTBASE>/test/local/b/2/e deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/b/2/d/f1.txt' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/b/2/d/f1.txt' '-'.
mark operation NEW -> RM other:<TESTBASE>/test/local/b/2/d/f1.txt deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/b/2/d' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/b/2/d' '-'.
mark operation MKDIR -> RM other:<TESTBASE>/test/local/b/2/d deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/b/2' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/b/2' '-'.
mark operation MKDIR -> RM other:<TESTBASE>/test/local/b/2 deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/b/1/f1.txt' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/b/1/f1.txt' '-'.
mark operation NEW -> RM other:<TESTBASE>/test/local/b/1/f1.txt deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/b/1/f/f1.txt' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/b/1/f/f1.txt' '-'.
mark operation NEW -> RM other:<TESTBASE>/test/local/b/1/f/f1.txt deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/b/1/f' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/b/1/f' '-'.
mark operation MKDIR -> RM other:<TESTBASE>/test/local/b/1/f deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/b/1/e/f1.txt' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/b/1/e/f1.txt' '-'.
mark operation NEW -> RM other:<TESTBASE>/test/local/b/1/e/f1.txt deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/b/1/e' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/b/1/e' '-'.
mark operation MKDIR -> RM other:<TESTBASE>/test/local/b/1/e deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/b/1/d/f1.txt' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/b/1/d/f1.txt' '-'.
mark operation NEW -> RM other:<TESTBASE>/test/local/b/1/d/f1.txt deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/b/1/d' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/b/1/d' '-'.
mark operation MKDIR -> RM other:<TESTBASE>/test/local/b/1/d deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/b/1' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/b/1' '-'.
mark operation MKDIR -> RM other:<TESTBASE>/test/local/b/1 deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/b' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/b' '-'.
mark operation MKDIR -> RM other:<TESTBASE>/test/local/b deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/a/f1.txt' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/a/f1.txt' '-'.
mark operation NEW -> RM other:<TESTBASE>/test/local/a/f1.txt deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/a/3/f1.txt' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/a/3/f1.txt' '-'.
mark operation NEW -> RM other:<TESTBASE>/test/local/a/3/f1.txt deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/a/3/f/f1.txt' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/a/3/f/f1.txt' '-'.
mark operation NEW -> RM other:<TESTBASE>/test/local/a/3/f/f1.txt deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/a/3/f' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/a/3/f' '-'.
mark operation MKDIR -> RM other:<TESTBASE>/test/local/a/3/f deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/a/3/e/f1.txt' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/a/3/e/f1.txt' '-'.
mark operation NEW -> RM other:<TESTBASE>/test/local/a/3/e/f1.txt deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/a/3/e' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/a/3/e' '-'.
mark operation MKDIR -> RM other:<TESTBASE>/test/local/a/3/e deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/a/3/d/f1.txt' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/a/3/d/f1.txt' '-'.
mark operation NEW -> RM other:<TESTBASE>/test/local/a/3/d/f1.txt deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/a/3/d' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/a/3/d' '-'.
mark operation MKDIR -> RM other:<TESTBASE>/test/local/a/3/d deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/a/3' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/a/3' '-'.
mark operation MKDIR -> RM other:<TESTBASE>/test/local/a/3 deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/a/2/f1.txt' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/a/2/f1.txt' '-'.
mark operation NEW -> RM other:<TESTBASE>/test/local/a/2/f1.txt deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/a/2/f/f1.txt' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/a/2/f/f1.txt' '-'.
mark operation NEW -> RM other:<TESTBASE>/test/local/a/2/f/f1.txt deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/a/2/f' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/a/2/f' '-'.
mark operation MKDIR -> RM other:<TESTBASE>/test/local/a/2/f deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/a/2/e/f1.txt' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/a/2/e/f1.txt' '-'.
mark operation NEW -> RM other:<TESTBASE>/test/local/a/2/e/f1.txt deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/a/2/e' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/a/2/e' '-'.
mark operation MKDIR -> RM other:<TESTBASE>/test/local/a/2/e deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/a/2/d/f1.txt' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/a/2/d/f1.txt' '-'.
mark operation NEW -> RM other:<TESTBASE>/test/local/a/2/d/f1.txt deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/a/2/d' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/a/2/d' '-'.
mark operation MKDIR -> RM other:<TESTBASE>/test/local/a/2/d deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/a/2' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/a/2' '-'.
mark operation MKDIR -> RM other:<TESTBASE>/test/local/a/2 deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/a/1/f1.txt' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/a/1/f1.txt' '-'.
mark operation NEW -> RM other:<TESTBASE>/test/local/a/1/f1.txt deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/a/1/f/f1.txt' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/a/1/f/f1.txt' '-'.
mark operation NEW -> RM other:<TESTBASE>/test/local/a/1/f/f1.txt deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/a/1/f' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/a/1/f' '-'.
mark operation MKDIR -> RM other:<TESTBASE>/test/local/a/1/f deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/a/1/e/f1.txt' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/a/1/e/f1.txt' '-'.
mark operation NEW -> RM other:<TESTBASE>/test/local/a/1/e/f1.txt deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/a/1/e' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/a/1/e' '-'.
mark operation MKDIR -> RM other:<TESTBASE>/test/local/a/1/e deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/a/1/d/f1.txt' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/a/1/d/f1.txt' '-'.
mark operation NEW -> RM other:<TESTBASE>/test/local/a/1/d/f1.txt deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/a/1/d' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/a/1/d' '-'.
mark operation MKDIR -> RM other:<TESTBASE>/test/local/a/1/d deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/a/1' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/a/1' '-'.
mark operation MKDIR -> RM other:<TESTBASE>/test/local/a/1 deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/a' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/a' '-'.
mark operation MKDIR -> RM other:<TESTBASE>/test/local/a deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local' '-'.
mark operation MKDIR -> RM other:<TESTBASE>/test/local deleted before syncing. Removing from dirty.
