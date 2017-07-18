#!/bin/bash

IN_ANSWER()
{
case $answer in
    y|Y|yes|YES)
    echo "deleting, please wait..."
    return 0
    ;;

    n|N|no|NO)
    echo "you don't delete the filesystem."
    return 1
    ;;

    *) echo "error!"
    return 1
    ;;
esac
}

echo -n "Are you true delete this filesystem?"
read answer

if IN_ANSWER $answer
then
    sleep 1
    echo "delete filesystem succeed!"
else
    echo "quitting..."
    sleep 1
    echo "quit successfully!"
fi
exit 0
