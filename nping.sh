#!/bin/bash
#cat downnodes >> downnodes.log
while [ 1 -eq 1 ]
do
gawk '{ print $1,$2,$3,$4,$5 }' hostlist|bash newping.sh
sleep 30
done 2>&1 |tee -a downnodes
exit 0
