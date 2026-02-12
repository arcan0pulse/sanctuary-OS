# Setup
I'm currently using this on CachyOS with hyprland. A lot of the dotfiles can be used in other WMs as well,
but obviously you'll lose out on all the hyprland specific stuff. It might also need some tinkering to work properly in other distros.
Some of these programs are set up for my computer setup specifically. If your monitor setup is different or you need different keyboard layouts,
adjust it in `hypr/hyprland.conf`. If your hardware is significantly different, things like the temperature readings in the Eww widgets might not
work. I'm working on making those scripts universal, but I just haven't gotten around to it, sorry.

# hypr
Put this into ~/.config

Config files for both hyprland itself and hyprpaper. Takes care of auto-starting the desktop widgets, necessary scripts, wallpapers and boot sound, all those things. Also sets alacritty as the default terminal, so install that unless you want to use something else.

# fastfetch
Put this into ~/.config

Includes a little ASCII version of the sanctuary OS logo for fastfetch.

# alacritty
Put this into ~/.config

Terminal config for text and background colors and such. Also runs fastfetch on opening a terminal.

# cava
Put this into ~/.config

Config files for [CAVA](https://github.com/karlstav/cava). Unless you know what you're doing, just leave the output section alone, as the script for eww relies on it.

# eww
Put this into ~/.config

Config files for a set of desktop widgets. Your monitor needs to be set to scale 1 or lower in hyprland else the widget is too tall for your screen,
and I only tested on 1920x1080 resolutions. I'm sorry if it doesn't work on your monitor, e-mail me if you need help.
The visualizer requires cava and the script `audio_visualizer.py` to be running. The hyprland config in this repo starts them both on login.

<img width="200" height="400" alt="eww" src="https://github.com/user-attachments/assets/ca425c05-8126-4dfb-bad9-4be8b97b10e9" />

I'm not sure if the temperature readings will work on a different computer than mine.
These are the requirements for it to work:
 - `python`
 - `cava`
 - `lm-sensors`
 - `alsa-utils`
 - `playerctl`

# SanctuaryOS
Put this into /usr/share/sddm/themes/

Login theme for SDDM. You also need to [set your SDDM to use the theme](https://wiki.archlinux.org/title/SDDM#Theme_settings).

![login](https://github.com/user-attachments/assets/d32eba2e-fd43-4c1e-974c-4411341ced17)

(GIF format is dithering the preview, so it looks a bit off)

# setup_wallpaper.sh
A script that plays `boot_video.mp4` and then sets up `sanctuaryOS.png` as the wallpaper once the video is over. It looks for the files in `~/wallpaper`, but you can change the script if you
want to save them elsewhere. You'll need [mpvpaper](https://github.com/GhostNaN/mpvpaper/) and [hyprpaper](https://github.com/hyprwm/hyprpaper) for this to work.
It's set to run on startup in `hypr/hyprland.conf`. Hyprland looks for this script in `~/sanctuaryOS`, so leave it there or adjust the path in hyprland's config.
<b><h3>Warning: It includes audio, just autostart hyprpaper if you don't want that.</b></h3>
