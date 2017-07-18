#!/bin/bash

if [ ! -r $1 ]
then
    echo "Can't read from input file!"
    echo "$0 input-file output-file"
    exit
fi

if [ -z $2 ]
then
    echo "Need to specify output file."
    echo "$0 input-file output-file"
    exit
fi

exec 4<&0
exec < $1
exec 7>&1
exec > $2

cat - | tr a-z A-Z
exec 1>&7 7>&-
exec 0<&4 4<&-
echo "File \"$1\" written to \"$2\"."
echo
exit
