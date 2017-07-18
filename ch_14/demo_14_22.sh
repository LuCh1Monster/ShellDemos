#!/bin/bash

umask 177
echo -n "Input a name of file:"
read file_name
echo -n "Input a new name for the file:"
read new_name

if [ -z $file_name ]
then
	echo "No such file."
	echo; exit
else
	cat $file_name |tr 'a-zA-Z' 'n-za-mN-ZA-M' > .$new_name
	echo "Operate succeed."
	echo "And the name of file is .$new_name"
	echo
fi

exit 0

