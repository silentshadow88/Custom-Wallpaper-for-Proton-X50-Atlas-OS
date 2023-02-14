#!/system/bin/sh

# Define variables for paths
backup_dir=/mnt/media_rw/udisk1/original
new_wallpaper_dir=/mnt/media_rw/udisk1
theme_dir=/sdcard/Android/data/com.malaysia.theme/files/theme

# Create backup directory
mkdir $backup_dir
echo "Created backup directory at $backup_dir"

# Backup original wallpapers
mv $theme_dir/wallpaper_color.png $backup_dir
mv $theme_dir/wallpaper_green.png $backup_dir
mv $theme_dir/wallpaper_default.png $backup_dir
echo "Original wallpapers backed up to $backup_dir"

# Copy new wallpapers
cp $new_wallpaper_dir/wallpaper_color.png $theme_dir/
cp $new_wallpaper_dir/wallpaper_green.png $theme_dir/
cp $new_wallpaper_dir/wallpaper_default.png $theme_dir/
echo "New wallpapers copied to $theme_dir"

# Sync and wait for 5 seconds
sync
echo "Synced filesystem"
sleep 5

# Remove temporary directory
rm -rf $new_wallpaper_dir/b832bc61472727635baffcf25dd28e9f239273e2
echo "Removed temporary directory at $new_wallpaper_dir/b832bc61472727635baffcf25dd28e9f239273e2"

exit
