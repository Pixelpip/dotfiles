# I3wm fedora packages

* brightnessctl(brightness control)
* wlsunset (night light)
* lxappearance (gtk dark mode)
* xev (keymapping)
* pavucontrol (mic and audio management)
* jetbrains-mono-fonts 
* nitrogen(wallpapers)(wallpapers are setup on boot )

# settings changes

* brightness keys and volume keys already mapped on config file 
* xfce-terminal working fine so far 
* for touchpad tap to click(run the below command and reboot)
   ```sudo mkdir -p /etc/X11/xorg.conf.d && sudo tee <<'EOF' /etc/X11/xorg.conf.d/90-touchpad.conf 1> /dev/null
Section "InputClass"
        Identifier "touchpad"
        MatchIsTouchpad "on"
        Driver "libinput"
        Option "Tapping" "on"
EndSection

EOF
   ```

