#!/bin/bash
a=$1
b=$2
if [ $a == 0 ] || [ $b == 0 ];
  then    
   echo "a and b should be zero"
   exit 1 
 fi  
  
 if [ $a -lt 0 ] || [ $b -lt 0 ];
   then
     echo " number should not be negative"
     exit 1
fi
if [ $a -gt $b ]
  then
   echo " $(( $a / $b ))is value"
else
    echo " $(( $b / $a ))is value"
  fi	
