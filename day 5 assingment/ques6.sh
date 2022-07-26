#!/bin/bash -x

read -p "enter a frst number" a
maximum=$a
minimum=$a
read -p "enter a scnd number" b
if [$b -gt $maximum ]
then 
	maximum=$b
fi
if [$b -lt $minimum ]
then
 	minimum=$b
fi
read -p "enter third number " c
if [$c -gt $maximum ]
then
	maximum=$c
fi
read -p "enter fourth number" d
if [ $c -lt $minimum ]
then
	minimum=$c
fi
if [ $d -gt $maximum ]
then
	maximum=$d
fi
if [ $d -lt $minimum ]
then
	minimum=$d
fi
read -p "enter the fifth number " e
if [ $e -gt $maximum ]
then
	maximum=$e
fi
if [ $e -lt $minimum ]
then
	minimum=$e
fi
echo "maximum number is" $maximum
echo " minimum number is" $minimum

