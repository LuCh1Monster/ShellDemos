#!/bin/bash

hostname="host_name is cat.super.com"
string=${hostname:6}
echo $string
echo
string_1=${hostname:10}
echo $string_1
echo
exit 0
