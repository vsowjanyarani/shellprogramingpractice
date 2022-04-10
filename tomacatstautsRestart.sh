#!/bin/bash
echo " check if the tomcat is running or not"
a=`netstat -na | grep 8080 | awk '{print $6}'`
if [ "$a" = "LISTEN" ]
then 
	echo "tomcat default port is listening"
elif [ "$a" = "" ]
then
	echo " tomcat is not running"
	cd $CATALINA_HOME/bin
	./startup.sh
fi
b=`netstat -na | grep 8080 | awk '{print $7}' | wc -l`
if [ "$b" = 0 ];
then
 echo " tomcat port is not listening"
elif [ "$b" != 0 ];
then
	echo "tomcat is port is listening and tomcat is working"
fi
