#!/bin/bash

arr=(1 2 3 4 5 8 7 12 11)
len=${#arr[@]}
temp=0

for((i=0;i<$len;i++))
do
	for((i=0;i<$len;j++))
	do
		if [ ${arr[i]} -lt ${arr[j]} ]
		then
			temp=${arr[i]}
			arr[i]=${arr[j]}
			arr[j]=$temp
		fi
	done
done

echo "${arr[@]}"
echo "second largest number is: ${arr[1]}"
echo "second smallest number is: ${arr[7]}"
