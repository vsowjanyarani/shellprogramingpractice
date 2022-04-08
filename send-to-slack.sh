#!/bin/bash
message=$1

#[ ! -z "$message" ] && curl -X POST -H 'Content-type: application/json' --data "{
 #             \"text\": \"${message}\"
  #    }"https://https://hooks.slack.com/services/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
  [ ! -z "message" ] && curl -X POST -H 'Content-type: application/json' --data '{"text":"Hello, World!"}' https://hooks.slack.com/services/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
