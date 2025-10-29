# cava
Config files for [CAVA](https://github.com/karlstav/cava). Unless you know what you're doing, just leave the output section alone, as the script for eww relies on it.

# eww
Config files for a set of desktop widgets. I only tested them for 1920x1080 monitors, it may look a bit small on higher resolutions.
For the CAVA audio visualizer to properly work, CAVA needs to be running with the config from this repository, as well as `audio_visualizer.py`
inside of `eww/scripts`.
<img width="501" height="1002" alt="eww" src="https://github.com/user-attachments/assets/ca425c05-8126-4dfb-bad9-4be8b97b10e9" />

I'm not sure if the temperature readings will work on a different computer than mine.
There are a few packages that you will need to run it:
 - `lm-sensors`
 - `cava`
 - `alsa-utils`
 - `playerctl`

# sddm-sanctuary
Login theme for SDDM. Put the entire folder into your SDDM theme folder (usually at `/usr/share/sddm/themes`). 

![login](https://github.com/user-attachments/assets/d32eba2e-fd43-4c1e-974c-4411341ced17)

(GIF compression makes it look a little weird)

# ttf Folder
This just contains the fonts Medium and Monocode, used for a lot of Sanctuary OS assets. For Info on how to install them on linux, see [Arch Wiki's instructions](https://wiki.archlinux.org/title/Fonts#Manual_installation). As far as I know they're free to use.

# setup_wallpaper.sh
A script that plays `boot_video.mp4` and then sets up `sanctuaryOS.png` as the wallpaper once the video is over. It looks for the files in `~/wallpaper`, but you can change the script if you
want to save them elsewhere. You'll need [mpvpaper](https://github.com/GhostNaN/mpvpaper/) and [hyprpaper](https://github.com/hyprwm/hyprpaper) for this to work.
Set hyprland to run this on startup. Warning: The video includes audio, so if you don't want that beware.
