#!/bin/bash

user="root:x:0:0:root:/root:/bin/sh"
string=${user/:/.}
echo $string
echo
string=${user/0/,}
echo $string > string
string_1=${user//:/,}
echo $string_1 >> string
echo
exit 0
