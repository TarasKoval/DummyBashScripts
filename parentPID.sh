#!/bin/sh

set -o errexit
set -o nounset

if [ $# -ne 1 ]
	then
	echo "Usage: $0 <\"PID\">"
	exit 1
fi

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
