#!/bin/bash

C_NAME()
{
    _USER_NAME=$name
    _USER_NAME=`echo $name | awk '{if ($0~/[^a-zA-Z]/) print "1"}'`

    if [ "$_USER_NAME" != "" ]
    then
        return 1
    else
        return 0
    fi
}

C_PASSWD()
{
    _USER_PASSWD=$passwd
    _USER_PASSWD=`echo $passwd | awk '{if (/[0-9]/) print "0"}'`

    if [ "$_USER_PASSWD" = "" ]
    then
        return 1
    else
        return 0
    fi
}

E_NAME()
{
    echo "it must contain only letters."
}

E_PASSWD()
{
    echo "it must contain letters or letters and numbers."
}

clear
while :
do
    echo -n "Input the user name: "
    read name

    if C_NAME 
    then
        echo "TRUE"
        break 2
    else
        E_NAME
        break 2
    fi
done

while :
do
    echo -n "Input the user passwd: "
    read passwd

    if C_PASSWD
    then
        echo "TRUE"
        break
    else
        E_PASSWD
        break
    fi
done
exit 0
