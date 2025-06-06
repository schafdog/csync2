+-------------------------------------------------------------------------------+
| filename                                                                      |
+-------------------------------------------------------------------------------+
| /export/home/dennis/Projects/csync2/csync2/test/test/local                    |
| /export/home/dennis/Projects/csync2/csync2/test/test/local/usr                |
| /export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local          |
| /export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/abc      |
| /export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/def      |
| /export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/def/hej  |
| /export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin     |
| /export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin/hej |
+-------------------------------------------------------------------------------+
+----------+-------------------------------------------------------------------------------+-----------+-------------+------+
| peername | filename                                                                      | operation | other       | op   |
+----------+-------------------------------------------------------------------------------+-----------+-------------+------+
| other    | /export/home/dennis/Projects/csync2/csync2/test/test/local                    | MKDIR     | NULL        |    1 |
| other    | /export/home/dennis/Projects/csync2/csync2/test/test/local/usr                | MKDIR     | NULL        |    1 |
| other    | /export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local          | MKDIR     | NULL        |    1 |
| other    | /export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/abc      | MKDIR     | NULL        |    1 |
| other    | /export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/def      | MKDIR     | NULL        |    1 |
| other    | /export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/def/hej  | ???       | ../sbin/hej |    2 |
| other    | /export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin/hej | NEW       | NULL        |    2 |
| other    | /export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin     | MOD_DIR   | NULL        |  257 |
| peer     | /export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin     | MOD_DIR   | NULL        |  257 |
+----------+-------------------------------------------------------------------------------+-----------+-------------+------+
