#!/bin/bash
PID=`ps aux |grep redis-server |grep -v grep |awk '{print $2}'`
kill -15 $PID
sleep 3
if [[ -z $PID ]];then
	kill  $PID
fi
