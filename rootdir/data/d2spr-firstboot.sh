#!/system/bin/sh
#

while [ ! `getprop sys.boot_completed` ]
do
  sleep 5
done

busybox mount -o remount,rw /system

# Move in Sprint eri
busybox mv /system/etc/eri-sprint.xml /data/eri.xml

# Set correct eri permissions
busybox chown root:root /data/eri.xml
busybox chmod 666 /data/eri.xml

# Remove Telephony Databases
busybox rm -f /data/data/com.android.providers.telephony/databases/telephony.db-journal
busybox rm -f /data/data/com.android.providers.telephony/databases/telephony.db

#force mobile data to restart
sleep 20
svc data disable
sleep 2
svc data enable

# clean up
rm -f /system/d2spr-firstboot.sh
rm -f /system/etc/init.d/99d2spr

busybox mount -o remount,ro /system
