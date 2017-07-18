#!/bin/bash

just_a_second=1

funky()
{
    echo "This is the first function."
    echo "Now existing funky function"
    echo
}

funky2()
{
    x=0
    repeats=3
    echo "Now, the funky2 really begins."
    sleep $just_a_second
    while [ $x -lt $repeats  ]
    do
        echo "---funky--->"
        echo "<---funky2---"
        echo
        sleep 1
        let x+=1
    done    
}

funky
funky2
exit 0
