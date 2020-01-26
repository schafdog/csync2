cmd u "10 Same content (younger)" local peer test
Got dirty files from host peer
Connecting to host peer (PLAIN) ...
Updating (MOD_DIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger' ''
Auto resolve method YOUNGER 2 for peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger 
File peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger: Won autoresolve YOUNGER (2)
Sould send FLUSH peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger (won auto resolved)
?M: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger
Updating (NEW) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger/local_oldest' ''
Auto resolve method YOUNGER 2 for peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger/local_oldest 
File peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger/local_oldest: Lost autoresolve YOUNGER (2)
?B: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger/local_oldest
While syncing file: /export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger/local_oldest
ERROR from peer: File is also marked dirty here! (/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest) rc: -11 
Do not auto-resolve conflict: Lost 'younger/older' test.
File stays in dirty state after autoresolve. Try again later...
Updating (NEW) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger/same_content' ''
Auto resolve method YOUNGER 2 for peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger/same_content 
File peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger/same_content: Won autoresolve YOUNGER (2)
Sould send FLUSH peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger/same_content (won auto resolved)
?M: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger/same_content
While syncing file: /export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger/same_content
ERROR from peer: File is also marked dirty here! (/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/same_content) rc: -11 
