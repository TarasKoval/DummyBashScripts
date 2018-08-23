#!/bin/sh

set -o errexit
set -o nounset

if [ $# -ne 1 ]
	then
	echo "Usage: $0 <\"path to android folder\">"
	exit 1
fi

path=$1

list=`find ${path}/out/target/product/generic_x86_64/system/ -name '*.rc'`
list="${list} `find ${path}/out/target/product/generic_x86_64/vendor/ -name '*.rc'`"
list="${list} `find ${path}/out/target/product/generic_x86_64/root/ -name '*.rc'`"

for item in ${list}
do
	echo ${item}
done
