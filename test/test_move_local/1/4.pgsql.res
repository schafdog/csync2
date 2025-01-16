---------------------------------------------------------------------
 /export/home/dennis/Projects/csync2/csync2/test/test/local
 /export/home/dennis/Projects/csync2/csync2/test/test/local/newdir
 /export/home/dennis/Projects/csync2/csync2/test/test/local/newdir/C
(3 rows)

----------+---------------------------------------------------------------------+-----------+-------+----
 other    | /export/home/dennis/Projects/csync2/csync2/test/test/local          | MKDIR     |       |  1
 peer     | /export/home/dennis/Projects/csync2/csync2/test/test/local          | MKDIR     |       |  1
 other    | /export/home/dennis/Projects/csync2/csync2/test/test/local/newdir   | MKDIR     |       |  1
 peer     | /export/home/dennis/Projects/csync2/csync2/test/test/local/newdir   | MKDIR     |       |  1
 other    | /export/home/dennis/Projects/csync2/csync2/test/test/local/newdir/C | NEW       |       |  2
 peer     | /export/home/dennis/Projects/csync2/csync2/test/test/local/newdir/C | NEW       |       |  2
(6 rows)

