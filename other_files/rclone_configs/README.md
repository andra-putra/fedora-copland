# NOTE:
This is my personal file for using rclone to mount google drive locally so I can use it with Obsidian.

## The steps I followed to set up rclone were:
1. Install rclone
2. Set up rclone using `rclone config`. Follow on screen instructions for Google Drive etc.
3. Check if rclone works using `rclone ls (drive name)`
4. Mount to local folder of your choice using `rclone mount drivename: /path/to/mount`

## (Optional) Make it automatically mount on boot 
1. Use the systemd file in this repo. Edit the paths and names to correct ones, then place it to /etc/systemd/system/ 
2. Make sure to also go to `/etc/fuse.conf` and add a line that says `user_allow_other` to prevent permission errors. I had to do this at least, else I can't access the folder locally with my user for some reason.
3. Restart systemd daemon `sudo systemctl daemon-reload`
4. Enable systemd service `sudo systemctl enable rclone-mount.service`
5. Start systemd service `sudo systemctl enable rclone-mount.service`
