#!/bin/sh
#
# removefiles.sh - removesfiles that are older then a X amount of days

TARGET=./backup		# Where to look for the files. (recomend using absolut path if you plan on using this script with cron)
DAYS=30				# Days to keep a file.

FOUND=$(find $TARGET/ -maxdepth 1 -type f -mtime +$DAYS) 

for i in $FOUND
do
		rm -f "$i"
done
