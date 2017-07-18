#/bin/bash

echo "The operation is Binding an IP adderss."
Directory=/etc/sysconfig/network-scripts
cd $Directory
echo "New the position is:"
pwd; echo
wait

echo "Input a device name of network card."
echo -n "The name of example(eth0):"
read c_name
wait
echo

if [ -e ifcfg-$c_name ]
then
    echo "Bound by the network card name."
    echo -n "For example(eth0:2):"
    read d_name
    echo

    source_ip=192.168.121
    if [ ! -e ifcfg-$d_name ]
    then
        cp ifcfg-$c_name ifcfg-$d_name
        sed s/DEVICE=$c_name/DEVICE=$d_name/ ifcfg-$d_name > ifcfg
        wait
        echo "Set a IP address, Just enter a number."
        echo -n "And for example(30):"
        read IP_addre
        sed s/IPADDR=$surce_ip.0/IPADDR=$source_ip.$IP_addre/ ifcfg > ifcfg-$d_name
    else
        echo"The name of device is exist."
        echo "Please give another name."
        exit
    fi
else
    echo "No such the name of network card."
    echo "Please give a device name for network card."
    exit
fi

echo "The network card alreadyed configuration complete."
cd; echo
wait
echo "Do you want to reboot the network card?"
echo -n "Choose(yes|no):"
read Choose
answer=yes
echo

if [ $Choose = $answer ]
then
    echo "Reboot network card..."
    echo "Please wait..."
    ifdown $c_name
    wait
    echo "All the work is done."
else
    echo "Give up reboot network card."
    exit
fi

echo
exit 0
