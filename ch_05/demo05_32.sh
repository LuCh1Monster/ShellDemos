#!/bin/bash

declare -i count=1
declare -i var
declare -i limit=5

while [ $count -lt $limit ]
do
    echo
    echo "pass $count in count loop."
    echo ">>>>>>>>>>>>>>>>>>>>>>>>>>"
    var=1

    for j in 1 2 3 4 5
    do
        echo "pass $var in var loop."

        if [ $var -gt 2 ]
        then
            break
        fi

        let var+=1
    done

    let count+=1
    echo
done
exit0
