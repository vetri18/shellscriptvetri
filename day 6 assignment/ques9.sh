#!/bin/bash -x

number=1
while [ $number -le 11 ]
do
  echo "head"
  ((number++))
done
