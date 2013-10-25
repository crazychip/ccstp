#!/bin/sh
#
# This script will send an email to a specified user
# should be run by cron to send the reminder email at regular intervals

TO="user@host.com"
SUBJECT="Reminder!"
CONTENT="/home/user/alertme.html"

cat $CONTENT | mail -s "$SUBJECT" $TO
