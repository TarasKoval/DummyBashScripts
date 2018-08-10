#!/bin/sh

pid=$1

if [ -z $pid ]
then
    read -p "PID: " pid
fi

ppid=`ps -p ${pid} -o ppid=`

while [ ${ppid} -ne 0 ]
do
	echo ${ppid}
	ppid=`ps -p ${pid} -o ppid=`
	pid=${ppid}

done

echo ${ppid}
