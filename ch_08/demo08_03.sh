#!/bin/bash

array[a]=10
array2[b]=20
array3[c]=30
array4[d]=chen
array5[e]=xl

array36[X]=`expr ${array[a]} + ${array2[b]}`
array40[L]=`expr ${array3[c]} + ${array4[d]}` #  expr only support the
array50[lin]=`expr ${array4[d]} + ${array5[e]}` # operation of two integers
echo "array36[X] is ${array36[X]}."
echo "array40[L] is ${array40[L]}."
echo "array50[xl] is ${array50[xl]}."
echo
exit 0
