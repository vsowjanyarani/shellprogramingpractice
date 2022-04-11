#!/bin/bash
memory=`free -m | awk 'NR==2{print $3/$2*100}'`
disk=`df -m | awk 'NR==2{print $3/$2*100}'`
cpu=`mpstat i | awk 'NR==4{print $12/100}'`
c=`echo "Cpu utilization: $cpu%"`
d=`echo "Memory utilization: $memory%"`
e=`echo "Disk utilization: $disk"` 
message=`echo "$c $d $e"` 
[ ! -z "$message" ] && curl -X POST -H 'Content-type: application/json' --data "{\"text\": \"${message}\"}" https://hooks.slack.com/services/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 
