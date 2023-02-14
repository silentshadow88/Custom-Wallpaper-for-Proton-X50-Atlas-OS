#!/system/bin/sh

# Define variables for paths
backup_dir=/mnt/media_rw/udisk1/original
theme_dir=/sdcard/Android/data/com.malaysia.theme/files/theme

# Copy original wallpapers back to theme directory
cp $backup_dir/wallpaper_color.png $theme_dir/
cp $backup_dir/wallpaper_green.png $theme_dir/
cp $backup_dir/wallpaper_default.png $theme_dir/
echo "Original wallpapers restored in $theme_dir"

# Sync and wait for 5 seconds
sync
echo "Synced filesystem"
sleep 5

# Remove temporary directory
rm -rf mnt/media_rw/udisk1/b832bc61472727635baffcf25dd28e9f239273e2
echo "Removed temporary directory at $new_wallpaper_dir/b832bc61472727635baffcf25dd28e9f239273e2"

exit
