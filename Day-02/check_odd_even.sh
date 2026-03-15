#!/bin/bash

<< program
check number is even or odd
program

read -p "Enter number: " num

if ((  $num%2==0 ));
then 
	echo "Number is even"
else 
	echo "Number is odd"
fi
