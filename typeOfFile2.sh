#!/bin/bash
if [ -f $1 ]
  then
   echo " $1 is regular file"
   cat $1
   elif [ -d $1 ]
    then  
     echo " $1 is directory"
     exit 1
    elif [ -a $1 ]
      then
	echo " $1 is hidden file"
	exit 2
fi
