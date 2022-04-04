#!/bin/bash
echo " enter file name"
read file
if [ -f $file ]
 then
	 echo "its a file"
	 cat $file
 elif [ -d $file ]
  then 
	  echo "its a directory"
	  cd $file
	  ls
  else
	  echo "its not file or directory"
fi
