#!/bin/bash

declare -i x=6
declare -i j

echo $((x-j))
echo $((j-x))
echo $((${i:-8}-3))
echo $((${j:-8}-3))
exit 0
