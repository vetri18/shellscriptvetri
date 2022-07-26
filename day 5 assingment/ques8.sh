#!/bin/bash -x

read -p "enter the year " year
if ['expr $year % 100' -eq 0 -a 'expr $year % 400' -eq 0 ]
 then
 echo "$year is a leap year"
elif ['expr $year % 100' -ne 0 -a 'expr $year % 4'  -eq 0 ]
 then
 echo "$year is leap year"
 else
 echo $its "not leap year"
fi 
