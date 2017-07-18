#!/bin/bash

(cat file1 file2 file3 |sort | uniq > filea) &
(cat file5 file6 |sort | uniq > fileb) &

wait
diff filea fileb
exit 0



