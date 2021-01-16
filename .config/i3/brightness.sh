#!/bin/sh
val=$(cat /sys/class/backlight/intel_backlight/brightness)
if [ "$1" = "+" ] ; then
  # val=`expr $val + 500`
  light -A 5
else
  # val=`expr $val - 500`
  light -U 5
fi

# echo $val > /sys/class/backlight/intel_backlight/brightness

# copy the backlight.rules file into /etc/udev/rules.d
# and run `sudo usermod -aG video tferrer`
# light is a command found in https://github.com/haikarainen/light
