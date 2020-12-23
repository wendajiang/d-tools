#!/bin/bash
FREEDISK=`df -h|grep "/data"|awk '{print $5}'|awk -F % '{print $1}'`
HEADDIR=`ls -l /data/AccessVideoDump|grep ^d|awk '{print $NF}'|sort|head -n 1`
if [ "$FREEDISK" -ge "85" ];then
rm -rf /data/AccessVideoDump/"$HEADDIR"                                                  
fi
# 每隔1s运行