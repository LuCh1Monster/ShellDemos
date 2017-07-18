#!/bin/bash

declare -a array2=(first2 second2 third2)
declare -a array3=([0]=first3 [2]=third3 [3]=fourthly3)
declare -a dest
declare -a SubArray=${dest[1]}
declare -a SubArray=(${dest[1]})

echo
echo ">> array subscript <<"
echo "Number of element: 4"
for ((i=0;i<4;i++))
do
    echo "Element[$i]: ${array3[$i]}"
done
echo

dest=(${array2[@]} ${array3[@]})
echo ">> Testing Array Append <<"
cnt=${#dest[@]}
echo "Number of elements: $cnt"

for ((i=0;i<cnt;i++))
do
    echo "Element[$i]: ${dest[$i]}"
done
dest[0]=${array2[@]}
dest[1]=${array3[@]}
echo
echo ">> Testing modified array <<"
cnt=${#dest[@]}
echo "Number of elements: $cnt"

for ((i=0;i<cnt;i++))
do
    echo "Element[$i]: ${dest[$i]}"
done
echo
echo ">> Reassign and list second element <<"
cnt=${#SubArray[@]}
echo "Number of elements: $cnt"

for ((i=0;i<cnt;i++))
do
    echo "Element[$i]: ${SubArray[@]}"
done
echo
echo ">> Listing restored element <<"
cnt=${#SubArray[@]}
echo "Number of elements: $cnt"

for ((i=0;i<cnt;i++))
do
    echo "Element[$i]: ${SubArray[$i]}"
done
echo "Do not depend on this behavior,"
echo "And this behavior is subject to change."
echo 
exit 0
