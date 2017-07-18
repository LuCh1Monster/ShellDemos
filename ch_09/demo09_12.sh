#!/bin/bash

user="root:x:0:0:root:/root:/bin/sh"
string=${user/:/.}
echo $string
echo
string_1=${user//r/s}
echo $string_1
echo 
exit 0 
