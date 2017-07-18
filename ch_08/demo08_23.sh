#!/bin/bash

arrange()
{
    local temp=${Cities[$1]}
    Cities[$1]=${Cities[$2]}
    Cities[$2]=$temp
    return
}

declare -i i
declare -a Cities
echo
echo "--- array elements fresh arrange ---"
echo
Cities=(Wanning Qiongshan Haikou Snaya Danzhou)
echo "1: ${Cities[*]}"
array_element=${#Cities[@]}
let "i=$array_element -1"
count=2

while [ "$i" -gt 0 ]
do
    index=0
    while [ "$index" -lt "$i" ]
    do
        if [ ${Cities[$index]} \> ${Cities[`expr $index + 1`]} ]
        then
            arrange $index `expr $index + 1`
        fi
    let "index += 1"
    done

    let "i -= 1"
    echo
    echo "$count: ${Cities[@]}"
    let "count += 1"
done
echo
exit 0
