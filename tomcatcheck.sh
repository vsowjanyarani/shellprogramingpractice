#!/bin/bash
 n=$(netstat -na | grep 9090 | grep LISTEN | wc -l)
 if [ $n -eq 0 ]
   then
    echo " tomcat is not running"
    curl -X POST -H 'Content-type: application/json' --data '{"text":"tomcat is not running"}' https://hooks.slack.com/services/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
    else   echo " tomcat is  running"
 fi
