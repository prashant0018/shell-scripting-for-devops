#!/bin/bash

<< disclaimer
This is just for infotainment purpose.Check loyalty of jethalal.
disclaimer

#This is function definition
function is_loyal(){
read -p "$1 ne mudkr kise dekha: " bandi
read -p "$1 ka pyar percentage: " pyar
if [[ $bandi == "daya bhabhi" ]];
then
	echo "$1 is loyal"
elif [[ $pyar -ge 100 ]];
then
	echo "$1 is loyal"
else
	echo "$1 is not loyal"
fi
}

#This is a function call
is_loyal "tom"
	
