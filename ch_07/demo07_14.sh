#!/bin/bash

B_RETURN()
{
    fvar=$1
    r_value=$fvar
    return
}

B_RETURN 1
echo "value=$r_value"

B_RETURN 256
echo "value2=$r_value"

B_RETURN 257
echo "value3=$r_value"

B_RETURN 3636
echo "value4=$r_value"
exit 0
