#!/bin/bash

strings=ABCDEFG12345
echo "-- delete characters --"
echo ${strings#A*D}
echo
echo "-- replace characters --"
echo ${strings/A*D/abcd}
echo "-- add characters --"
echo ${strings/%/add}
echo
exit 0
