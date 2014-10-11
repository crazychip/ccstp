#!/bin/sh
rm -f /usr/local/etc/pkg.conf
mkdir -p /usr/local/etc/pkg/repos
echo "FreeBSD: {" > /usr/local/etc/pkg/repos/FreeBSD.conf
echo '  url: "pkg+http://pkg.FreeBSD.org/${ABI}/latest",' >> /usr/local/etc/pkg/repos/FreeBSD.conf
echo '  mirror_type: "srv",' >> /usr/local/etc/pkg/repos/FreeBSD.conf
echo '  enabled: yes' >> /usr/local/etc/pkg/repos/FreeBSD.conf
echo '}' >> /usr/local/etc/pkg/repos/FreeBSD.conf
