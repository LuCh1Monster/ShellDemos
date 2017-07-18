#!/bin/bash

sed -e 'N;s/.*/[&]/' << EOF
First_line
Second_line
EOF
echo
awk '{$0=$1 "\n" $2; if (/.line/) {print}}' << EOF
Third_line
Fourthly_line
EOF
exit 0
