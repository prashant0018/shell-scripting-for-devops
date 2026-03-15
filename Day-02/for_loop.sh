#!/bin/bash
<< content
This is for loops:
for and while loops
content

<<Task
1 argument1 which is folder name
2 start range
3 end range 
Task

for (( i=$2; i<=$3; i++ ));
do
   mkdir "$1$i"
done

