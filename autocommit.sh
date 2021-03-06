#!/bin/sh

# this bash script intends to git commit by time auto.

autocommit(){
	git status --short | awk {'print $2'} | while read LINE
do
	git add $LINE
done

date_c=`date +"%Y%m%d%H%M%S"`
date_c=autocommit_$date_c

# silence
git commit -m $date_c > /dev/null
# git push 0> /dev/null 2> /dev/null
}

while :
do
	autocommit

# check time (s)
	sleep 60
done

exit 0
