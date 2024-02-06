# NOTE:
This is my personal file for using rclone to mount google drive locally so I can use it with Obsidian.

The steps I followed to set up rclone were:
1. Install rclone
2. Set up rclone using `rclone config`. Follow on screen instructions for Google Drive etc.
3. Check if rclone works using `rclone ls (drive name)`
4. Mount to local folder of your choice using `rclone mount drivename: /path/to/mount`
5. (Optional) Make it automatically start on boot using systemd file in this repo. Edit the paths and names to correct ones. Make sure to also go to `/etc/fuse.conf` and add a line that says `user_allow_other` to prevent permission errors. I had to do this at least, else I can't access the folder locally with my user for some reason.
