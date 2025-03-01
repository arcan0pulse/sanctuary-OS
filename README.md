# .ani Files
They're to add the GIF of the floaty animals to your cursor (you can see them in the GIF below). It's the format Windows uses, for Linux you'll have to convert them to XCursor files. I used win2xcur for this. Know that if you want to use the .ani files on Windows, the cursor ends up being so small, it's probably not worth it. I'll eventually upload the XCursor files as well, you can either make a new cursor theme or just replace the default files. If you need help with this, feel free to ping me in the discord channel.

# sddm-theme
Re-name this folder and put it in your SDDM theme folder to get the user login screen. This is what it looks like. It's made for 1920x1080 screens, I have no clue how it looks on other resolutions. Sorry if it doesn't work on them.

![login](https://github.com/user-attachments/assets/d32eba2e-fd43-4c1e-974c-4411341ced17)

(GIF compression makes it look a little weird)

# ttf Folder
This just contains the fonts Medium and Monocode, used for a lot of Sanctuary OS assets. For Info on how to install them on linux, see [Arch Wiki's instructions](https://wiki.archlinux.org/title/Fonts#Manual_installation). As far as I know they're free to use.

# setup_wallpaper.sh
This is just a script that plays boot_video.mp4 and then sets up sanctuaryOS.png as the wallpaper once the video is over. It looks for the files in ~/wallpaper, but you can change the script if you
want to save them elsewhere. You'll need [mpvpaper](https://github.com/GhostNaN/mpvpaper/) and [hyprpaper](https://github.com/hyprwm/hyprpaper) for this to work.
