# dotfiles

## i3
### backlight.rules
The display brightness has to be changed as root by default, so `/etc/udev/rules.d/backlight.rules` must be added.

### gd3 Touchpad configuration
```bash
sudo -i
xhost +SI:localuser:gdm # not required in default Wayland session
su gdm -s /bin/bash
gsettings set org.gnome.desktop.peripherals.touchpad tap-to-click true

sudo reboot
```
