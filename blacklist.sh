#!/bin/sh
#
# blacklist.sh - adds IPs or IP ranges to the pf blacklist.
#

PFCTL="/sbin/pfctl"
blacklist="/etc/pf.blacklist"

for arg in "$@"
do
echo $arg >> $blacklist
$PFCTL -t blacklist -T add $arg
done

