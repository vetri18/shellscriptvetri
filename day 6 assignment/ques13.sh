#!/bin/bash -x

 result=1
function prime()
{
  number=$(($1))
for((counter=2;counter<$number;counter++))
do
if [ $(($number%$counter)) -eq 0 ]
then
  result=$(($result+1))
fi
done
if [ $result -eq 1 ]
then 
    echo "prime"
else
    echo "noo"
fi
}
pal 10

#fuctiontoprint plaindrome

 sum=0
 reminder=0
function palindrome()
{
 number=$(($1))
 temp=$number
while [ $number -gt 0 ]
do
 reminder=$(($number%10))
 sum=$((($sum*10)+$reminder))
 number=$(($number/10))
done
if [ $temp -eq $sum ]


then
  echo "palindrome"
else
  echo "noo"
fi
}
plaindrome 12

#checkifthepalindrome

echo "enter a number"
read number
 sum=0
 reminder=0
 temp=$number
 result=1
while [$number -gt 0 ]
do
 remider=$(($number%10))
 sum=$(((sum*10)+$reminder))
done
if [ $temp -eq $sum ]
then
  echo "Integer Palindrome"
else
  echo "not a plaindrome"
fi
for((counter=2;counter<$temp%$counter)) -eq 0 ]
then
   result=$(($result+1))
fi
done
if [ $result -eq 1 ]
then 
   echo "and prime number"
else
    echo "but not a prime number "
fi

