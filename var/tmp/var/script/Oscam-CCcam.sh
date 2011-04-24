#!/bin/sh

remove_tmp () {
	rm -rf /tmp/ecm.info /tmp/pid.info /tmp/cardinfo
}

case "$1" in
	start)
		$0 stop
		/var/bin/oscam &
		sleep 15
		/var/bin/CCcam &
	;;
	stop)
		touch /tmp/CCcam.kill
		sleep 5
		killall -9 CCcam oscam 2>/dev/null
		sleep 2
		remove_tmp
	;;
	restart)
		$0 stop
		sleep 5
		$0 start
	;;
	*)
		$0 stop
		exit 1
	;;
esac

exit 0
