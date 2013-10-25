#!/bin/sh
#
# This script will send an email to a specified user
# should be run by cron to send the reminder email at regular intervals

TO="user@host.com"
SUBJECT="Reminder!"
CONTENT="/home/user/remind_mail.txt"

cat $CONTENT | mail -s "$SUBJECT" $TO
