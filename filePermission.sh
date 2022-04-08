#!/bin/bash
echo " enter filename"
read filename
if [ -r $filename ]
 then
         echo "$filename has read permission"
fi
if [ -w $filename ]
then
 echo "$filename has write permission"
fi
if [ -x $filename ]
then
 echo "$filename has execute permission"
fi
gr=`ls -l $filename | cut -c5`
gw=`ls -l $filename | cut -c6`
gx=` ls -l $filename | cut -c7`
     if [ $gr == r ] 
     then
        echo "group has read permission"
        fi
        if [ $gw == w ]
 then
         echo "group has write permission"
        fi
if [ $gx == x ]
 then
         echo "group has execute permission"
        fi

or=`ls -l $filename | cut -c8`
ow=`ls -l $filename | cut -c9`
ox=` ls -l $filename | cut -c10`
    if [ $or == r ]
       then
         echo "others have read permission"
        fi
        if [ $ow == w ]
       then
         echo "others have write permission"
       fi
       if [ $ox == x ]
	    then
	echo "others have excute permission"
       fi
