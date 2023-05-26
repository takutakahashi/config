#!/bin/bash

hostname=`hostname`
while true; do
  if [[ "`uname`" = "Linux" ]]; then
    batt=`upower -e | grep 'BAT'`
    percentage=`upower -i $batt |grep percentage |awk '{print $2}'`
    #post $hostname $percentage
  fi
  
  payload="payload={
    \"channel\": \"#battery\",
    \"username\": \"battery\",
    \"text\": \"$hostname: $percentage\"
  }"
  curl -s -S -X POST --data-urlencode "${payload}" "${SLACK_WEBHOOK_BT}" > /dev/null
  sleep 1800
done
