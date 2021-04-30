#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then







    xrdb -merge $sysresources

fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then







    xrdb -merge "$userresources"

fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

#Race condition ??
sleep 1

#Display Resolution & Config
xrandr --output DisplayPort-0 --mode 2560x1440 --rate 144.00 --pos 1280x0 --right-of HDMI-A-0 &
xrandr --output HDMI-A-0 --mode 1280x1024 --rate 60.00 --pos 0x352 &

#Compositor
picom &

#Wallpaper
nitrogen --restore &

#Mouse settings
xinput --set-prop 8 'libinput Accel Speed' -0.78 &

#Start clock
dwmnet &
dwmblocks &

#Start Daemons
thunar --daemon &
/usr/lib/xfce-polkit/xfce-polkit &

#Reset network peak
echo 0 > /home/trevorskupien/network_peak.txt

#Start dwm
exec dwm >> ~/dwm.log
