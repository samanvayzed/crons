#!/bin/bash

source ~/env/bin/activate
#which python
x=`ps -ef | grep -v "grep" | grep 'main.py' | awk '{ print $2 }'`
echo ${x}


if [ -z "$x" ]
then
     echo "\$x is empty"
     cd /home/manishkumar_zed/jts-flask-api
     /home/manishkumar_zed/env/bin/python /home/manishkumar_zed/jts-flask-api/main.py
fi
