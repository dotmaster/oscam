#!/bin/sh
#

FILE_OLD="/var/etc/CCcam.cfg"
FILE_TMP="$FILE_OLD.tmp"
FILE_NEW="$FILE_OLD.new"

FILE_OLD1="/var/tuxbox/config/oscam.server"
FILE_TMP1="$FILE_OLD1.tmp"
FILE_NEW1="$FILE_OLD1.new"

FILE_OLD2="/var/tuxbox/config/oscam.conf"
FILE_TMP2="$FILE_OLD2.tmp"
FILE_NEW2="$FILE_OLD2.new"

FILE_OLD3="/var/tuxbox/config/oscam.user"
FILE_TMP3="$FILE_OLD3.tmp"
FILE_NEW3="$FILE_OLD3.new"

if [ -f $FILE_OLD ]; then
	mv -f $FILE_OLD $FILE_TMP
fi

if [ -f $FILE_OLD1 ]; then
	mv -f $FILE_OLD1 $FILE_TMP1
fi

if [ -f $FILE_OLD2 ]; then
	mv -f $FILE_OLD2 $FILE_TMP2
fi
if [ -f $FILE_OLD3 ]; then
	mv -f $FILE_OLD3 $FILE_TMP3
fi

tar -zxvf /tmp/var.tar.gz -C /

if [ -f $FILE_TMP ]; then
	mv -f $FILE_OLD $FILE_NEW
	mv -f $FILE_TMP $FILE_OLD
fi

if [ -f $FILE_TMP1 ]; then
	mv -f $FILE_OLD1 $FILE_NEW1
	mv -f $FILE_TMP1 $FILE_OLD1
fi

if [ -f $FILE_TMP2 ]; then
	mv -f $FILE_OLD2 $FILE_NEW2
	mv -f $FILE_TMP2 $FILE_OLD2
fi

if [ -f $FILE_TMP3 ]; then
	mv -f $FILE_OLD3 $FILE_NEW3
	mv -f $FILE_TMP3 $FILE_OLD3
fi

rm -f /tmp/var.tar.gz

exit 0
