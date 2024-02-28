# NOTE:
This is my personal file for using rclone to mount google drive locally so I can use it with Obsidian.

## The steps I followed to set up rclone were:
1. Install rclone
2. Set up rclone using `rclone config`. Follow on screen instructions for Google Drive etc.
3. Check if rclone works using `rclone ls (drive name)`
4. Mount to local folder of your choice using `rclone mount drivename: /path/to/mount`

## (Optional) Make it automatically mount on boot 
1. Use the systemd file in this repo. Edit the paths and names to correct ones, then place it to `/etc/systemd/system/`. Be sure to change the following:
   
        `/home/andra/gdrive` --> Your mount folder path
   
        `--config` --> Path to your rclone config dotfile

        `--uid=1000` --> Your user's UID
   
        `--gid-1000` --> Your user's GID
   
        `andra-gdrive:` --> Change this to be (Your rclone remote location name):
   
3. Make sure to also go to `/etc/fuse.conf` and add a line that says `user_allow_other` to prevent permission errors. I had to do this at least, else I can't access the folder locally with my user for some reason.
4. Restart systemd daemon `sudo systemctl daemon-reload`
5. Enable systemd service `sudo systemctl enable rclone-mount.service`
6. Start systemd service `sudo systemctl enable rclone-mount.service`
