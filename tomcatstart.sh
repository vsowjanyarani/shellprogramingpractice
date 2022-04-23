echo "Restarting Tomcat Server"
n=$(netstat -na | grep 9090 | grep LISTEN | wc -l)
if [ $n -eq 0 ]
then
  sudo bash /home/ubuntu/apache-tomcat-9.0.62/bin/startup.sh
 else
 echo " tomcat is running already"
 fi

