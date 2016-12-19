cat /sys/class/power_supply/BAT0/uevent | grep "CAPACITY=" | sed -e 's/POWER_SUPPLY.*=//g' | sed -e 's/$/%/g'
