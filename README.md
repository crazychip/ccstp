ccstp
=====

CracyChip Shell Tool pack.

alertme.sh
----------
alertme.sh was something I knocked together quickly to send me an email with cron. I use it to
remind me that it's time to check the logs and other things. Probably many other ways this could be 
done, but I was simultaniously learning shellscript.

backup_world.sh
---------------
backup_world.sh is a minecraft world backup script. It sends commands to the java ui runnning in screen
and makes timestamed tar.gz files in a backup directory.

blacklist.sh
-----------
blacklist.sh adds the listed IP's to the persist file for pf and also
adds them to the current running table.

datecp.sh
---------
datecp.sh is a script I found when learning to make shell scripts, and found use for on my servers.
Some times I just want to quickly take a backup of some file or folder. And I have usually ended up with
file.old then it will be file.old2 etc. With this little gem I get a slightly more useful suffix.
Source: http://www.howtogeek.com/67469/

removefiles.sh
--------------
I use this script together with the backup_world.sh
It looks at the backup directory where I keep all my minecraft backups and deletes the ones that are older
than 30 days.
