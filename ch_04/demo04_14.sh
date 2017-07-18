#!/bin/bash

declare -i x=24
declare -i j

echo $((x*j))
echo $((${x:-6}*3))
echo $((${j:-8}*3))

echo $((${x:-6}/3))
echo $((${j:-9}/3))
exit 0
