#!/system/bin/sh

#LOGPATH=/sdcard/corelog
#LOGPATH=/data/corelog
#LOGPATH_LAST=$LOGPATH/last

#set `date`

#current_time=`date +%F.%H.%M.%S`
#LOGCAT_RADIO=$LOGPATH/logcat_radio_$current_time.txt
#LOGCAT_RADIO2=$LOGPATH/logcat_radio_part2_$current_time.txt

# set RLIMIT_CORE to set core dump file size(multiply of 512) 4096 : 2M
#ulimit -f 4096

#/system/bin/logcat -b radio -v time -f $LOGCAT_RADIO
#/system/bin/logcat -b radio -v time -f $LOGCAT_RADIO2
#while true
#do
#rm $LOGCAT_RADIO
#mv $LOGCAT_RADIO2 $LOGCAT_RADIO
#/system/bin/logcat -b radio -v time -f $LOGCAT_RADIO2
#done

/system/bin/logcat -b radio -v time -r 4096 -n 4 -f /data/corelog/radiologcat-log