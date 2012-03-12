#!/bin/bash
FIRST_LINE=`grep -n  ' 12:1' downnodes |tail -1| gawk -F: '{ print $1 }'`
#last  = `grep -n  ' 06:0' downnodes |tail -1| gawk -F: '{ print $1 }'`
LAST_LINE=`cat downnodes| wc -l`
#FIRST_LINE=1
#LAST_LINE=5
export LANG="en_US.UTF-8"#不加此行，crontab执行会有问题，crontab的环境变量没有跟shell的一致
sed -n "$FIRST_LINE,$LAST_LINE"p  downnodes | mail -s "DOWN NODES" zhanght@cdcloud.org

