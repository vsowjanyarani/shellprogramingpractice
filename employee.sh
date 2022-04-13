#!/bin/bash
#touch employee.txt
#find /home/ubuntu/shellprogram1/employee.txt -empty -name employee.txt 
#if [ "$?" -eq 0 ]
 #then
  echo " name age phonenumber department" >> employee.txt
 #fi
echo "type to do operation "
read x
 if [ $x == "new" ]
 then
	 echo "enter name is" 
   read name
  a=$name
  echo " enter age is "
  read age
  b=$age
  echo " enter ph num"
  read ph
  c=$ph
  echo " enter dept"
  read dept
  d=$dept
  echo "$a $b $c $d" >> employee.txt
 fi
if [ $x == "list" ]
then
 cat employee.txt | sort
fi
if [ $x == "remove" ]
then	
	echo " enter name of record to delete"
	read name
	 sed -i /$name/d employee.txt
fi
if [ $x == "clear" ]
then
	#sed employee.txt
	truncate -s 0 employee.txt
fi
if [ $x == "lookup" ]
then
  echo " please enter name to lookup"
  read name
  grep $name employee.txt 
fi
