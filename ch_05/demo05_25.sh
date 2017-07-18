#!/bin/bash

PS3="choose the number: "
echo

choice_of()
{
    select value
    do
        echo "the value is $value"
    done
}

choice_of 23 44 55 60
exit 0
