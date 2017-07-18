#!/bin/bash

E_ECHO()
{
  if [ ! -z $debug ]
  then
	echo $1 >&2
  fi
}

debug=on
var1=variable1
E_ECHO $var1

debug=
var2=variable2
E_ECHO $var2

exit 0
