+----------------------------------------------------------------------------------+
| filename                                                                         |
+----------------------------------------------------------------------------------+
| /export/home/dennis/Projects/csync2/csync2/test/test/local                       |
| /export/home/dennis/Projects/csync2/csync2/test/test/local/bad.link              |
| /export/home/dennis/Projects/csync2/csync2/test/test/local/new_file 'N' all      |
| /export/home/dennis/Projects/csync2/csync2/test/test/local/new_file 'N' all.link |
+----------------------------------------------------------------------------------+
+----------+----------------------------------------------------------------------------------+-----------+------------------+------+
| peername | filename                                                                         | operation | other            | op   |
+----------+----------------------------------------------------------------------------------+-----------+------------------+------+
| other    | /export/home/dennis/Projects/csync2/csync2/test/test/local                       | MKDIR     | NULL             |    1 |
| other    | /export/home/dennis/Projects/csync2/csync2/test/test/local/bad.link              | NEW       | missing          |    2 |
| other    | /export/home/dennis/Projects/csync2/csync2/test/test/local/new_file 'N' all      | NEW       | NULL             |    2 |
| other    | /export/home/dennis/Projects/csync2/csync2/test/test/local/new_file 'N' all.link | NEW       | new_file 'N' all |    2 |
+----------+----------------------------------------------------------------------------------+-----------+------------------+------+
