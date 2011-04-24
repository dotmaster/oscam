#!/bin/sh

killall -9 oscam CCcam 2>/dev/null
sleep 2

rm -f /var/bin/CCcam
rm -f /var/bin/oscam

rm -f /var/doc/oscam/oscam.txt

rm -f /var/etc/CCcam.channelinfo
rm -f /var/etc/CCcam.cfg.new
rm -f /var/etc/CCcam.providers
rm -f /var/etc/CCcam.prio

rm -f /var/script/Oscam-CCcam.sh

rm -f /var/tuxbox/config/oscam.server
rm -f /var/tuxbox/config/oscam.user
rm -f /var/tuxbox/config/oscam.conf

rm -f /var/uninstall/Oscam-CCcam_delfile.sh

exit 0
