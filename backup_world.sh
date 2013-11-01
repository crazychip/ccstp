#!/bin/sh
#
# backup_world.sh - a minecraft world backup script
# Assumes that minecraft is running in a screen called server.  Then sends the commands to that screen
# to save the world. The disables the autosaving and copies the world directory to a tar.gz file.
# then is re-enabled the autosaving.

date_formatted=$(date +%d_%m_%Y-%H.%M.%S)
# path to screen
screen="/usr/local/bin/screen"

$screen -p 0 -S server -X stuff 'save-all'
$screen -p 0 -S server -X stuff $'\012' 
sleep 10
$screen -p 0 -S server -X stuff 'save-off'
$screen -p 0 -S server -X stuff $'\012'
sleep 5
tar -czf /home/minecraft/backup/world."$date_formatted".tar.gz /home/minecraft/world
sleep 30
$screen -p 0 -S server -X stuff 'save-on'
$screen -p 0 -S server -X stuff $'\012'

