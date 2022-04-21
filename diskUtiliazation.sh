!/bin/bash
diskinfo=$(df -H | grep /dev/root | awk '{print "disk usuage is " $5}')
echo " disk info is= $diskinfo"
curl -X POST -H 'Content-type: application/json' --data "{"text":\"${diskinfo}\"}" https://hooks.slack.com/services/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
