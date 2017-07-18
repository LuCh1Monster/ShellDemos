#!/bin/bash

echo "please choose one of name: "
echo
echo jack
echo mary
echo roland
echo

read name
case "$name" in

    Jack | jack )
        echo "sex: man"
        echo "age: 36"
        echo "E-Mail: jack@123.com"
        echo "phone number: 24657967"
        echo "work: programmer"
        echo
        ;;

    Mary | mary )
        echo "sex: woman"
        echo "age: 28"
        echo "E-Mail: mary@123.com"
        echo "phone number: 33744823"
        echo "work: secretary"
        echo
        ;;

    Roland | roland )
        echo "sex: man"
        echo "age: 40"
        echo "E-Mail: roland@123.com"
        echo "phone number: 82368838"
        echo "work: manager"
        echo
        ;;
        
esac
exit 0
