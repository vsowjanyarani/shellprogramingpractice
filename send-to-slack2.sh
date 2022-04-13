#!/bin/bash
message=$1
[ ! -z "message" ] && curl -X POST -H 'Content-type: application/json' --data '{"text":"${message}"}' https://hooks.slack.com/services/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
