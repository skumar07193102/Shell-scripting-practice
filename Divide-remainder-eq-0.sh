#! /bin/bash
echo " Enter the number"
read v1
if [ $(($v1 % 2)) -eq 0 ]; then
    echo "this $v1 a prime number"
else
    echo "this $v1 is odd number"
fi