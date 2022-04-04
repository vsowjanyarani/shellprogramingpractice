#!\bin\bash
echo -n " enter file name"
read file
if [ -f $file ]
then
 echo " $file is exists "
 if [ -r $file ]
  then
   echo " $file has read permission "
   else
     echo " $file doesnt have read permission"
   fi
   if [ -w $file ]
      then
	 echo "$file has write permission"
      else 
	  echo " $file doesnt have write permission"
     fi
      if [ -x $fie ]
      then
         echo "$file has execute permission"
      else
          echo " $file doesnt have execute permission"
     fi
fi


