#!/bin/bash
echo " enter 2 file names"
read file1
read file2
if [ -f $file1 ]
 then   
  echo " file1 exists "
 fi
 if [ -f $file2 ]
  then   
   echo "file2 exists"
 fi
if [ -f $file1 -a -f $file2 ]
 then
   cat $file1 >> $file2
fi

