#!/bin/bash

function is_int(){
	echo $i
 if [[ "$i" =~ ^[0-9]+$ ]];
	then 
		return 0
	else 
		return 1	
 fi
}




until [[ ${i,,} = 'khalas' ]];
do

read -p "enter a number: " i

if is_int;
then
	if (( i % 2 == 0 ));
	then
		echo "$i is even"
	else
		echo "$i is odd"
	fi
else
	echo "Enter a valid number not a string"

fi

done
