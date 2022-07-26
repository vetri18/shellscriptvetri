#!/bin/bash -x

for((i=0;i<=9;i==))
do
random_numbers[$i]=$((100+RANDOM%100))
done
for((i=1;i<=((${#random_numbers[@]}-1));i++))
do
if [ $random_numbers [i] -gt $biggest ]
then
    biggest=$random_numbers[i]
elif [$random_number[i] -lt $smallest ]
then
smallest=$random_numbers[i]
fi
done
second_biggest=${random_numbers[0]}
second_smallest=${random_number[1]}
for((i=1;i<=((${#random_numbers[@]}-1));i++))
do
if[[${random_numbers[i]} -lt $biggest && ${random_numbers[i]}
then
    second_biggest=${random_numbers[i]}
elif [[${random[i]} -gt $smallest && ${random_numbers[i]}
  then
      second_smallest=${random_numbers[i]}
fi
done
