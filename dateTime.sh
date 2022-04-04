#!/bin/bash
echo" display date and time"
date
date -u
date --date="2 years ago"
date --date="5 sec ago"
date --date="yesterday"
date --date="next tue
date --set=" tue nov 13 15:23:34 PDT 2018"
echo " last modified time stamp of file"
echo "enter file name"
read filename
date -r $filename
date "+%D"
date "+%D %T"
date "+%y-%m-%d"

