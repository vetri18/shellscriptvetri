#!/bin/bash -x

#read 5 random 2 digitvalues and find the sum nd average

read -p "enter the first two digit number" ra1
read -p "enter the second two digit number" ra2
read -p "enter the third two digit number " ra3
read -p "enter the fourth two digit number " ra4
read -p "enter the fifth two digit number " ra5

add=$(($ra1+$ra2+$ra3+$ra4+$ra5))
echo "total sum of five two digit number is" $add

#average
average=$(($add/5))
echo "the average of total five values is " $average
