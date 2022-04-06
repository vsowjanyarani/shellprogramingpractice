#!/bin/bash
echo "priint filesbigger than 10MB"
for x in $(find /home/ubuntu/shellprograms1/ -type f -size +1b -exec ls -lh {} \;);
do	
       	echo $x
	 #echo "$(echo "$x" | awk '{print $5,$9}');
done
