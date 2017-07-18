#!/bin/bash

outer_variable=outer
(
	inner_variable=inner
	echo "subshell,\"inner_variable\"=$inner_variable"
	echo "subshell,\"outer_variable\"=$outer_variable"
	echo
)

if [ -z "$inner_variable" ]
then
	echo "inner_variable undefined in main body of shell."
else
	echo "inner_variable defined in main body of shell."
fi

echo "Main body of shell,\"inner_variable\"=$inner_variable"

echo
exit 0
