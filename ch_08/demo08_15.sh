#!/bin/bash

arraya[a]=36
arrayb="This is a shell script."
arrayc=()
arrayd=(" ")

echo ">> One-dimensional array"
array2=("${arraya[@]}")
array3=("${arrayb[@]}" "element")
echo "Array2 is: ${array2[@]}"
echo "Array3 is: ${array3[@]}"

echo ">> Empty array"
array4=("${arrayc[@]}")
array5=("${arrayc[@]}" "element")
echo "Array4 is: ${array4[@]}"
echo "Array5 is: ${array5[@]}"


echo ">> Empty element array"
array6=("${arrayd[@]}")
array7=("${arrayd[@]}" "element")
echo "Array6 is: ${array6[@]}"
echo "Array7 is: ${array7[@]}"
exit 0
