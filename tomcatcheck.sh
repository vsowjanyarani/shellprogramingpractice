#!/bin/bash
 n=$(netstat -na | grep 9090 | grep LISTEN | wc -l)
 if [ $n -eq 0 ]
   then
    echo " tomcat is not running"
    curl -X POST -H 'Content-type: application/json' --data '{"text":"tomcat is not running"}' https://hooks.slack.com/services/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
    else   echo " tomcat is  running"
 fi
