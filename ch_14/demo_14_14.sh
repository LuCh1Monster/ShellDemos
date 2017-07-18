#!/bin/bash

trap 'echo Variable listing ---- a=$i b=$j' EXIT
echo "Even though the script sees the \"trap\" first."

echo
declare -i i=36 j=46
exit 0
