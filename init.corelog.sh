#!/system/bin/sh

#LOGPATH=/sdcard/corelog
LOGPATH=/data/corelog
LOGPATH_LAST=$LOGPATH/last

#ensure $LOGPATH is exist                                                                                                                                                                                          
if [ ! -d "$LOGPATH" ]; then
mkdir $LOGPATH
fi

# remove old backup log files
#rm -r $LOGPATH_LAST

# re-creat backup directory
if [ ! -d "$LOGPATH_LAST" ]; then
mkdir $LOGPATH_LAST
fi

#let kernel generate crash meg file if have
echo 6 > /sys/devices/platform/samsung-kmsg/kmsg_ctrl

#copy last files to backup directory
mv $LOGPATH/*.* $LOGPATH_LAST
mv $LOGPATH/logcat*  $LOGPATH_LAST

#/data/corelog.kmsg.sh
#/data/corelog.logcat.sh &
#/data/corelog.logcat_radio.sh

