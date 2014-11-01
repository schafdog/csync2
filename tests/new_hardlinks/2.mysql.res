+----------------------------------------------------------------------------+
| filename                                                                   |
+----------------------------------------------------------------------------+
| /export/home/dennis/Projects/csync2/csync2/tests/test/local                |
| /export/home/dennis/Projects/csync2/csync2/tests/test/local/new            |
| /export/home/dennis/Projects/csync2/csync2/tests/test/local/new/hardlinked |
| /export/home/dennis/Projects/csync2/csync2/tests/test/local/new/new_file   |
+----------------------------------------------------------------------------+
+----------+----------------------------------------------------------------------------+-----------+-------+
| peername | filename                                                                   | operation | other |
+----------+----------------------------------------------------------------------------+-----------+-------+
| peer     | /export/home/dennis/Projects/csync2/csync2/tests/test/local                | MKDIR     | NULL  |
| other    | /export/home/dennis/Projects/csync2/csync2/tests/test/local                | MKDIR     | NULL  |
| peer     | /export/home/dennis/Projects/csync2/csync2/tests/test/local/new            | MKDIR     | NULL  |
| other    | /export/home/dennis/Projects/csync2/csync2/tests/test/local/new            | MKDIR     | NULL  |
| peer     | /export/home/dennis/Projects/csync2/csync2/tests/test/local/new/new_file   | NEW       | NULL  |
| other    | /export/home/dennis/Projects/csync2/csync2/tests/test/local/new/new_file   | NEW       | NULL  |
| peer     | /export/home/dennis/Projects/csync2/csync2/tests/test/local/new/hardlinked | NEW       | NULL  |
| other    | /export/home/dennis/Projects/csync2/csync2/tests/test/local/new/hardlinked | NEW       | NULL  |
+----------+----------------------------------------------------------------------------+-----------+-------+
