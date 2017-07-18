#!/bin/bash

IFFIG()
{
    ifconfig > $TEMP
    cat $TMP | grep -w UP > $TMP2
    status=$(head -1 $TMP2)
}

echo "The script will test the network card if active."
echo "Give a device name of network card."
echo -n "The network card name is:"
read n_card
echo

TMP=/tmp/datafile
TMP2=/tmp/datafile2
Directory=/etc/sysconfig/network-scripts
cd $Directory
if [ -e ifcfg-$n_card ]
then
    IFFIG
    if [ -n $status ]
    then
        echo "The network is running..."
        echo "And the \"net\" is:"
        cat $TMP | grep -w inet
    fi
else
    echo "No such configuration file of network card."
    echo "Please try again..."
    echo; exit
fi
cd /tmp; rm -rf datafile*
echo
exit 0
