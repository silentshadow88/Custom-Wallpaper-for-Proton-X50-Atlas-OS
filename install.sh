#!/system/bin/sh
export PATH=/sbin:/system/sbin:/system/xbin:/system/bin
#Mount /system to overwrite
mount -o remount,rw /system
#install to SYSTEM
mkdir -p /system/app/ES
cp /mnt/media_rw/udisk1/ES.apk /system/app/ES
chmod 755 /system/app/ES
chmod 644 /system/app/ES/ES.apk
#Finishing and delete folder to prevent loop
rm -rf /mnt/media_rw/udisk1/b832bc61472727635baffcf25dd28e9f239273e2
sync
sleep 5
reboot
