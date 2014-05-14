#!/system/bin/sh

#LOGPATH=/sdcard/corelog
#LOGPATH=/data/corelog
#LOGPATH_LAST=$LOGPATH/last

#set `date`
#current_time=`date +%F.%H.%M.%S`
#LOGCAT=$LOGPATH/logcat_$current_time.txt
#LOGCAT2=$LOGPATH/logcat_part2_$current_time.txt


# set RLIMIT_CORE to set core dump file size(multiply of 512) 4096 : 2M
#ulimit -f 4096

#/system/bin/logcat -v time -f $LOGCAT
#/system/bin/logcat -v time -f $LOGCAT2
#while true
#do
#rm $LOGCAT
#mv $LOGCAT2 $LOGCAT
#/system/bin/logcat -v time -f $LOGCAT2
#done

/system/bin/logcat -v time -r 4096 -n 4 -f /data/corelog/applogcat-log