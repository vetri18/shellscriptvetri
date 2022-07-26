#!/bin/bash/ -x
echo "enter a base number "
read base 
echo "enter a exponential number "
read exp
power=1
for(( counter=$exp;counter!=o;counter--))
do
  power=$(($power*$base))
done
echo $power

