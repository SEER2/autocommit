#!/bin/sh

autocommit(){
	git status --short | awk {'print $2'} | while read LINE
do
	git add $LINE
done

date_c=`date +"%Y%m%d%H%M%S"`
date_c=autocommit_$date_c

git commit -m $date_c
}

while :
do
	echo
	date
	autocommit
# check time (s)
	sleep 60
done

exit 0
