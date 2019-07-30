#!/bin/bash

source ~/env/bin/activate
#which python
x=`ps -ef | grep -v "grep" | grep '/root/mirai/live/jts-flask-api/main.py' | awk '{ print $2 }'`
echo ${x}


if [ -z "$x" ]
then
     echo "\$x is empty"
     cd /root/mirai/live/jts-flask-api
     /root/env/bin/python /root/mirai/live/jts-flask-api/main.py
fi

