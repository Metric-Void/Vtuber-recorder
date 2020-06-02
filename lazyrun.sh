#!/usr/bin/env bash
#cd /home/centos/config
#ls|grep .txt|sed 's/.txt//g'

# Running under root is BAD PRACTICE.
# I'm doing this only because the script is being ran under a container.
# Use your own discretion.
for ((NUM=$(ls /root/recorder/config|grep -c .txt); NUM>0; --NUM)) 
do
NAME=$(ls /root/recorder/config|grep .txt|sed 's/.txt//g'|sed -n "$NUM"p)
sleep 1
/usr/bin/screen -L -t $NAME -dmS $NAME /root/recorder/index.sh $NAME
sleep 1
echo $NAME
done
