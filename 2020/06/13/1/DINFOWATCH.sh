#!/bin/bash
GET_PERCENTAGE(){
DISKINFO=`df | grep "/dev/mmcblk0p2"`
DISKINFO=${DISKINFO%%% /}
DISKINFO=${DISKINFO##* }

echo "Current disk state: $DISKINFO%"

if [[ $DISKINFO > 96 ]]; then

if [[ -f /home/user/compile.pid ]]; then

kill `cat /home/user/compile.pid`
killall watch
fi	

fi
}

GET_PERCENTAGE $1
