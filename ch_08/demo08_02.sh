#!/bin/bash

value[a]=36
hometown[b]=hainan
MES=(That\'s a beautiful place)
MES1=(Welcome to)

echo "${value[a]}"
echo "My hometown is ${hometown[b]}."
echo "${MES[*]}, ${MES1[@]} my hometown."
echo
exit 0
