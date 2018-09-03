#!/bin/sh

set -o errexit
set -o nounset

if [ $# -ne 1 ]
	then
	echo "Usage: $0 <\"PID\">"
	exit 1
fi

pid=$1

while [ ${pid} -ne 0 ]
do
pid=`cat /proc/${pid}/stat` 
set -- $pid
pid=$4
echo ${pid}
done
