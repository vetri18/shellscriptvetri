#!/bin/bash -x

#ques 1 1ft=12 in then 42 in =?ft

result=`echo "scale=2;42/12"|bc`
result=`echo "scale=2;42//12"|bc`

#rectangular plot of 60 feet x 40 feet in meters 
result=`echo "40*60*0.3048"|bc`
echo $result "meters"

#calculate area of 25 such plots
result=`echo"((60*40)*0.3048)*25*0.00024711"|bc`
echo $result "acres"
