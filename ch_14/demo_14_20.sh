#!/bin/bash

echo "Find the coincident file from the disk."
echo -n "The name of directive(as \"/etc\"):"
read DIRE

if [[ $DIRE==/* ]]
then
	DIRE=/$DIRE
else
	echo "No input any information."
	echo
	exit
fi

SIZE=2
while read size dir
do
	if [ $size -gt $SIZE ]
	then
		echo -e "$size\t\t$dir"
	fi
done < <(find $DIRE -mindepth 1 -type d -exec du -sm {} \;)

echo 
exit 0
