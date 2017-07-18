#!/bin/bash

MESSAGE()
{
    read firstname
    read lastname
    read address
    read city
}

MESSAGE << record
chen
xianglin
hainan
danzhoushi
record

echo
echo "NAME: $firstname $lastname"
echo "ADDRESS: $address"
echo "CITY: $city"
echo
exit 0
