+---------------------------------------------------------------------+
| filename                                                            |
+---------------------------------------------------------------------+
| /export/home/dennis/Projects/csync2/csync2/test/test/local          |
| /export/home/dennis/Projects/csync2/csync2/test/test/local/newdir   |
| /export/home/dennis/Projects/csync2/csync2/test/test/local/newdir/C |
+---------------------------------------------------------------------+
+----------+---------------------------------------------------------------------+-----------+-------+------+
| peername | filename                                                            | operation | other | op   |
+----------+---------------------------------------------------------------------+-----------+-------+------+
| other    | /export/home/dennis/Projects/csync2/csync2/test/test/local          | MKDIR     | NULL  |    1 |
| peer     | /export/home/dennis/Projects/csync2/csync2/test/test/local          | MKDIR     | NULL  |    1 |
| other    | /export/home/dennis/Projects/csync2/csync2/test/test/local/newdir   | MKDIR     | NULL  |    1 |
| peer     | /export/home/dennis/Projects/csync2/csync2/test/test/local/newdir   | MKDIR     | NULL  |    1 |
| other    | /export/home/dennis/Projects/csync2/csync2/test/test/local/newdir/C | NEW       | NULL  |    2 |
| peer     | /export/home/dennis/Projects/csync2/csync2/test/test/local/newdir/C | NEW       | NULL  |    2 |
+----------+---------------------------------------------------------------------+-----------+-------+------+
