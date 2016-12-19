cat /sys/class/power_supply/BAT0/uevent | grep "STATUS=" | sed -e 's/POWER_SUPPLY.*=//g' 

