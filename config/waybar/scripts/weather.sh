#!/bin/sh
text=$(curl -s "https://wttr.in/$1?format=%c%t%3B%l%20%20%C%20%t%20%20Wind%20rate%20is%20%w%20and%20humidity%20is%20%h")
if [[ $? == 0 ]]; then
    # Split the string into two parts using delimeter ";"
    echo "{\"text\":\"${text%;*}\", \"tooltip\":\"${text#*;}\"}"
    exit
fi
echo "{\"text\":\"<span size=\\\"14pt\\\">󰼯</span> <span baseline_shift=\\\"1.4pt\\\">Error</span>\", \"tooltip\":\"An error occurred in Weather Service.\"}"
