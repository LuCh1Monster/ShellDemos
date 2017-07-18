#!/bin/bash

declare -i count=1

for i in 1 2 3 4 5
do
    echo "pass $count in count loop."
    echo "++++++++++++++++++++++++++"
    var=1

    for j in 1 2 3
    do
        echo "pass $var in var loop."
        let var+=1
    done

    let count+=1
    echo
done
exit 0
