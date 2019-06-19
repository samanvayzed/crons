#!/bin/bash

source ~/env/bin/activate

y=`ps -ef | grep -v "grep" | grep '/home/manishkumar_zed/mirai/qa/jts-flask-api/main.py' | awk '{ print $2 }'`

if [ "$y" ]
then
	kill -9 ${y}
fi

cd /home/manishkumar_zed/mirai/qa/jts-flask-api
/home/manishkumar_zed/env/bin/python /home/manishkumar_zed/mirai/qa/jts-flask-api/main.py
