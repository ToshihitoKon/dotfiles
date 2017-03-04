cat /sys/class/power_supply/BAT1/uevent | grep "STATUS=" | sed -e 's/POWER_SUPPLY.*=//g' 

