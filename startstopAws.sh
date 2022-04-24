#!/bin/bash
if [ $status == "start" ]
then
	aws ec2 start-instances --instance-ids $instanceID --region us-east-2
echo "instance $instanceID started"
echo " "
elif [ $status == "stop" ]
then
	aws ec2 stop-instances --instance-ids $instanceID --region us-east-2
echo " instance $instanceID stopped"
fi
