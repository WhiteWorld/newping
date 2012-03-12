#! /bin/sh
echo "##################`date`#######################"
echo "############################network down nodes######################"
#done 2>&1 |tee downnodes 
while read IP NOTE1 NOTE2 NOTE3 NOTE4 ;do
if [ ${IP:0:1} == '#' ];then
	continue
fi
ping -w 1 -c 1 $IP > /dev/null
if [ $? == '1' ];then
	echo $IP $NOTE1 $NOTE2 $NOTE3 $NOTE4
fi
done 
#sleep 300
