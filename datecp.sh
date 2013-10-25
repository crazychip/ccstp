#!/bin/sh

# This will copy a file, appending the date and time
# to the end of the file.

date_formatted=$(date +%d_%m_%Y-%H.%M.%S)

cp -ivr $1 $2.$date_formatted
