#!/system/bin/sh

#LOGPATH=/sdcard/corelog
LOGPATH=/data/corelog
LOGPATH_LAST=$LOGPATH/last

#set `date`
current_time=`date +%F.%H.%M.%S`
LOGKMSG=$LOGPATH/kmsg_$current_time.txt
LOGKMSG2=$LOGPATH/kmsg_part2_$current_time.txt
       
# set RLIMIT_CORE to set core dump file size(multiply of 512) 4096 : 2M
ulimit -f 4096

cat /proc/kmsg > $LOGKMSG
cat /proc/kmsg > $LOGKMSG2
while true
do
rm $LOGKMSG
mv $LOGKMSG2 $LOGKMSG
cat /proc/kmsg > $LOGKMSG2
done




