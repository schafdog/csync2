+--------------------------------------------------------------------------------------+
| filename                                                                             |
+--------------------------------------------------------------------------------------+
| /export/home/dennis/Projects/csync2/csync2/test/test/local                           |
| /export/home/dennis/Projects/csync2/csync2/test/test/local/auto                      |
| /export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger              |
| /export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger/same_content |
| /export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger/update_both  |
+--------------------------------------------------------------------------------------+
+----------+--------------------------------------------------------------------------------------+-----------+-------+------+
| peername | filename                                                                             | operation | other | op   |
+----------+--------------------------------------------------------------------------------------+-----------+-------+------+
| other    | /export/home/dennis/Projects/csync2/csync2/test/test/local                           | MKDIR     | NULL  |    1 |
| other    | /export/home/dennis/Projects/csync2/csync2/test/test/local/auto                      | MKDIR     | NULL  |    1 |
| other    | /export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger              | MKDIR     | NULL  |    1 |
| other    | /export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger/same_content | NEW       | NULL  |    2 |
| peer     | /export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger/same_content | NEW       | NULL  |    2 |
| other    | /export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger/update_both  | NEW       | NULL  |    2 |
+----------+--------------------------------------------------------------------------------------+-----------+-------+------+
