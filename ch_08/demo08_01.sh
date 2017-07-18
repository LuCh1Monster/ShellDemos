#!/bin/bash

value[a]=36
province[b]=hainansheng
city[c]=danzhoushi
MES=(This is the first script in this unit.)

echo "${value[a]}"
echo "${province[b]}"
echo "${city[c]}"
echo "My hometown is ${province[b]} ${city[c]}"
echo
echo "explain1: ${MES[*]}"
echo "explain2: ${MES[@]}"
echo
exit 0
