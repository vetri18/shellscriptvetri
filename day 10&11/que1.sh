#!/bin/bash -x

  arr[i]=${arr[j]}
              arr[j]=$temp
         fi
     done
      done
   done
   echo ${arr[@]}
}

res="$( sorting_Array_inDecending_order ${arr[@]} )"
echo "decending order is :$res"
echo "decending order is : $res"

function sorting_Array_inAscending_order()
{
   for (( i=0; i<4; i++ ))
   do
      for (( j=$i+1; j<4; j++ ))
      do
         if [[ ${arr[i]} -gt ${arr[j]} ]]
         then                                                                                                                                                                                                                    temp=${arr[i]}
              arr[i]=${arr[j]}
              arr[j]=$temp
         fi
      done
   done
              echo ${arr[@]}
}

res1="$( sorting_Array_inAscending_order ${arr[@]} )"
echo "Ascending order is : $res1"
