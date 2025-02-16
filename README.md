# .ani Files
They're to add the GIF of the floaty animals to your cursor. They work for Windows cursors, for Linux you'll have to convert them to XCursor files (I used win2xcur).
I'll eventually upload the XCursor files as well.

# sddm-theme
Re-name this folder and put it in your SDDM theme folder to get the user login screen. This is what it looks like.

![Login Screen](https://media.discordapp.net/attachments/1198435905854242872/1340489203057819719/IMG_0639.jpg?ex=67b3341b&is=67b1e29b&hm=be8ea0043008d038850ca3a7084bc425dc6ca79fe0c2da5324a49ac9b7e65a6b&=&format=webp&width=624&height=468)

(Sorry for the terrible photo, I can't access the screenshot utilities from the login screen - when I find the time I'll set it up in a VM and screenshot it from there)

# ttf Folder
This just contains the fonts Medium and Monocode, used in many components. For Info on how to install them on linux, see [Arch Wiki's instructions](https://wiki.archlinux.org/title/Fonts#Manual_installation).

# setup_wallpaper.sh
This is just a script that plays boot_video.mp4 and then sets up sanctuaryOS.png as the wallpaper once the video is over. It looks for the files in ~/wallpaper, but you can change the script if you
want to save them elsewhere. You'll need [mpvpaper](https://github.com/GhostNaN/mpvpaper/) and [hyprpaper](https://github.com/hyprwm/hyprpaper) for this to work.
