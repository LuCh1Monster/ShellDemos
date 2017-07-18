#!/bin/bash

echo -n "Input a name of file: "
read file_name
if [ -f $file_name ]
then
    (sed -e 's/://g' > $file_name)
    echo "Operate already finish..."
    echo "The file is new_file"
else
    echo "No such file."
fi
echo
exit 0
