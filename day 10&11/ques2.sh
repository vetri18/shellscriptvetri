#!/bin/bash -x


echo "WELCOME TO FLIP-COIN-SIMULATION"

check()
{
head=0
tail=0
while(true)
@@ -13,58 +14,24 @@ do
		head=$(($head+1))
		if [ $head == 21 ]
		then
			echo "HEAD WON 21 TIMES"
			break
		fi
	elif [ $winner -eq 0 ]
	then
		tail=$(($tail+1))
		if [ $tail == 21 ]
		then
			echo "TAIL WON 21 TIMES"
			break
		fi
	fi
done

while(true)
do
        winner=$((RANDOM%2))

        if [ $winner -eq 1 ]
        then
                head=$(($head+1))

        elif [ $winner -eq 0 ]
        then
                tail=$(($tail+1))
	fi

	if [ $head == $tail ]
	then
		echo "ITS A TIE BECAUSE HEAD=$head,TAIL=$tail"
		break
	fi
done

}
 while(true)
 do
	winner=$((RANDOM%2))

        if [ $winner -eq 1 ]
        then
                head=$(($head+1))

        elif [ $winner -eq 0 ]
        then
                tail=$(($tail+1))

        fi


	check
	if [ $(($head-$tail)) -eq 2 -o $(($tail-$head)) -eq 2 ]
	then
	      echo "HEAD AMD TAIL MINIMUM DIFFERENCE 2 REACHED AS HEAD=$head and TAIL=$tail"
	      echo "HEAD AND TAIL MINIMUM DIFFERENCE 2 REACHED AS HEAD=$head and TAIL=$tail"
              break
	fi
done
