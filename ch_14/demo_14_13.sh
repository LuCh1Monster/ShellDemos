#!/bin/bash

ASSERT()
{
if [ ! $1 ]
then
  echo "Assertion failed:\"$1\""
  echo "File \"$0\",line:$lineno"
  exit 0
fi	
}

lineno=$2
declare -i i=3 j=6

if [ $i -lt $j ]
then
	ASSERT $lineno
fi

echo "This statement echoes only if the \"assert\" does not fail."
exit 0

