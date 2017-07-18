#!/bin/bash

u_name="a super cat"
h_name="cat.super.com"
size=$(expr length "$u_name")
echo $size
echo
size_1=$(expr "$h_name" : '.*')
echo $size_1
echo
exit 0
