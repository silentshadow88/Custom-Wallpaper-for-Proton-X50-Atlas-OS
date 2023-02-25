#!/system/bin/sh
export PATH=/sbin:/system/bin:/system/xbin:/system/bin
#mount sytemto write
mount -o remount,rw /system
#remove ES Folder and content
rm -rf /system/app/ES
#Finishing and delete folder to prevent loop
rm -rf /mnt/media_rw/udisk1/b832bc61472727635baffcf25dd28e9f239273e2
sync
sleep 5
reboot
