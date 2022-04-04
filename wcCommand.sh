#!/bin/bash
read file
grep --regexp="$" --count $file
echo$((tr '[:space]' '[\n*]' <  $file1)) | grep --regexp="$" --count 
