| <TESTBASE>/test/local                           |
| <TESTBASE>/test/local/auto                      |
| <TESTBASE>/test/local/auto/younger              |
| <TESTBASE>/test/local/auto/younger/local_oldest |
| other    | <TESTBASE>/test/local                           | MKDIR     | NULL  |    1 |
| other    | <TESTBASE>/test/local/auto                      | MKDIR     | NULL  |    1 |
| other    | <TESTBASE>/test/local/auto/younger              | MKDIR     | NULL  |    1 |
| other    | <TESTBASE>/test/local/auto/younger/local_oldest | NEW       | NULL  |    2 |
| peer     | <TESTBASE>/test/local/auto/younger/local_oldest | NEW       | NULL  |    2 |
| peer     | <TESTBASE>/test/local                           | MKDIR     | NULL  |  129 |
| peer     | <TESTBASE>/test/local/auto                      | MKDIR     | NULL  |  129 |
| peer     | <TESTBASE>/test/local/auto/younger              | MKDIR     | NULL  |  129 |
