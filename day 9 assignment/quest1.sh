#!/bin/bash -x

user=$((0+RANDOM%3))
wage_per_hour=20
working_days_month=20
echo $user
if((user==1))
then
        echo "Employee is present with full time"
        full_day_hour=8
        wage=$((wage_per_hour * full_day_hour))
	monthly_wage=$((wage*20))
        echo "full time monthly wage of employee is $monthly_wage"
elif((user==2))
then
	echo "Employee is part time"
	part_time_hour=8
	wage=$((wage_per_hour*part_time_hour))
	monthly_wage=$((wage*20))
	echo "part time monthly wage of employee is $monthly_wage"
else
	echo "Employee is absent"
fi
