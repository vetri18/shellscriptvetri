#!/bin/bash -x

echo "enter number "
read number 
exp=2
result=1
while [ $result -le 256 ]
do
 echo "power table of the" $number "is" $result
 result=$(($result*$exp))
done
