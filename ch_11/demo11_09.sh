#!/bin/bash

echo
echo -n "Input a name of output file: "
read output_file
echo
if [ ! -r $output ]
then
    echo "Can't read from input file: "
    echo "The output file must exist."
    echo; exit
fi

echo -n "Input a name of input file"
read input_file
echo
if [ -z $input_file ]
then
    echo "Need to specify input file."
    echo "Must give a name for output file."
    echo; exit
fi

exec 6<&0
exec < $output_file
exec 8>&1
exec > $input_file
cat - | tr a-z A-Z

exec 1>&8 8>&-
exec 0<&6 6<&-
echo "Operation comppleted."
echo "And file \"$output_file\" written to \"$input_file\" as uppercase conversion."
echo
exit 0
