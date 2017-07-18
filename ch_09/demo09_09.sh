#!/bin/bash

hostname="host_name is cat.super.name"
string=${hostname%.*}
echo $string
echo
string_1=${hostname%%.*}
echo $string_1
echo
exit 0
