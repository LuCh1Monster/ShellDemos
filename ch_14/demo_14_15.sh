#!/bin/bash

trap 'echo "Variable-trace-> \$variable=\"$variable\""' DEBUG
variable=36
echo "Initialized \"\$variable\" to $variable"

let "variable+=3"
echo "Multiplied \"\$variable\" by 3."
exit $?
exit 0

