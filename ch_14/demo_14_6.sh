#!/bin/bash

outer_variable=outer
echo "outer_variable=$outer_variable"
(
	inner_variable=inner
	echo "inner_variable=$inner_variable"
	outer_variable=inner
	echo "outer_variable=$outer_variable"
)

echo "Inner_variable=$inner_variable"
echo "Outer_variable=$outer_variable"

echo
exit 0
